import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/report/report_provider.dart';
import '../common/markdown_renderer.dart';

/// 报告产物查看器。
class ArtifactViewer extends ConsumerStatefulWidget {
  final String reportId;
  final String artifactName;

  const ArtifactViewer({
    super.key,
    required this.reportId,
    required this.artifactName,
  });

  @override
  ConsumerState<ArtifactViewer> createState() => _ArtifactViewerState();
}

class _ArtifactViewerState extends ConsumerState<ArtifactViewer> {
  late Future<String> _contentFuture;

  @override
  void initState() {
    super.initState();
    _contentFuture = _loadContent();
  }

  @override
  void didUpdateWidget(covariant ArtifactViewer oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.reportId != widget.reportId ||
        oldWidget.artifactName != widget.artifactName) {
      _contentFuture = _loadContent();
    }
  }

  Future<String> _loadContent() {
    return ref
        .read(reportNotifierProvider.notifier)
        .getArtifactText(widget.reportId, widget.artifactName);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            children: [
              Expanded(child: Text(widget.artifactName)),
              IconButton(
                tooltip: '刷新',
                onPressed: () =>
                    setState(() => _contentFuture = _loadContent()),
                icon: const Icon(Icons.refresh),
              ),
              IconButton(
                tooltip: '下载',
                onPressed: _download,
                icon: const Icon(Icons.download_outlined),
              ),
            ],
          ),
        ),
        Expanded(
          child: FutureBuilder<String>(
            future: _contentFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState != ConnectionState.done) {
                return const Center(child: CircularProgressIndicator());
              }
              if (snapshot.hasError) {
                return Center(child: Text('加载失败：${snapshot.error}'));
              }
              final content = snapshot.data ?? '';
              if (_isMarkdown(widget.artifactName)) {
                return SingleChildScrollView(
                  padding: const EdgeInsets.all(8),
                  child: MarkdownRenderer(content: content),
                );
              }
              return SingleChildScrollView(
                padding: const EdgeInsets.all(8),
                child: SelectableText(
                  content,
                  style: const TextStyle(fontFamily: 'monospace'),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Future<void> _download() async {
    try {
      final content = await _contentFuture;
      final filename = widget.artifactName.split('/').last;
      final bytes = Uint8List.fromList(utf8.encode(content));

      if (kIsWeb || Platform.isAndroid || Platform.isIOS) {
        await FilePicker.platform.saveFile(fileName: filename, bytes: bytes);
      } else {
        final path = await FilePicker.platform.saveFile(fileName: filename);
        if (path == null) return;
        await File(path).writeAsBytes(bytes);
      }

      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text('下载完成')));
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('下载失败：$e')));
      }
    }
  }

  bool _isMarkdown(String name) => name.toLowerCase().endsWith('.md');
}
