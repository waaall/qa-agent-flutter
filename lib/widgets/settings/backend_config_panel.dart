import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/backend_config.dart';
import '../../providers/config/backend_config_provider.dart';
import '../../theme/app_theme.dart';

/// 后端配置面板。
class BackendConfigPanel extends ConsumerStatefulWidget {
  const BackendConfigPanel({super.key});

  @override
  ConsumerState<BackendConfigPanel> createState() => _BackendConfigPanelState();
}

class _BackendConfigPanelState extends ConsumerState<BackendConfigPanel> {
  late TextEditingController _agentUrlController;
  late TextEditingController _sttUrlController;
  late TextEditingController _ttsUrlController;
  late TextEditingController _ttsVoiceController;

  BackendServiceType? _testingService;
  final Map<BackendServiceType, bool?> _testResults = {};

  @override
  void initState() {
    super.initState();
    final config = ref.read(backendConfigProvider);
    _agentUrlController = TextEditingController(text: config.agentBaseUrl);
    _sttUrlController = TextEditingController(text: config.sttConfig.baseUrl);
    _ttsUrlController = TextEditingController(text: config.ttsConfig.baseUrl);
    _ttsVoiceController = TextEditingController(text: config.ttsConfig.voice);
  }

  @override
  void dispose() {
    _agentUrlController.dispose();
    _sttUrlController.dispose();
    _ttsUrlController.dispose();
    _ttsVoiceController.dispose();
    super.dispose();
  }

  Future<void> _testConnection(BackendServiceType service) async {
    setState(() {
      _testingService = service;
      _testResults.remove(service);
    });

    final url = _urlForService(service);
    final result = await ref
        .read(backendConfigProvider.notifier)
        .testConnection(service, url);

    if (!mounted) return;
    setState(() {
      _testingService = null;
      _testResults[service] = result;
    });
  }

  Future<void> _saveConfig() async {
    try {
      final current = ref.read(backendConfigProvider);
      final next = BackendConfig(
        agentBaseUrl: _agentUrlController.text,
        sttConfig: current.sttConfig.copyWith(baseUrl: _sttUrlController.text),
        ttsConfig: current.ttsConfig.copyWith(
          baseUrl: _ttsUrlController.text,
          voice: _ttsVoiceController.text.trim().isEmpty
              ? current.ttsConfig.voice
              : _ttsVoiceController.text.trim(),
        ),
      );
      await ref.read(backendConfigProvider.notifier).saveAll(next);

      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text('配置已保存')));
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('保存失败: $e')));
      }
    }
  }

  Future<void> _resetToDefault() async {
    await ref.read(backendConfigProvider.notifier).resetToDefault();
    final config = ref.read(backendConfigProvider);
    _agentUrlController.text = config.agentBaseUrl;
    _sttUrlController.text = config.sttConfig.baseUrl;
    _ttsUrlController.text = config.ttsConfig.baseUrl;
    _ttsVoiceController.text = config.ttsConfig.voice;
    setState(_testResults.clear);
  }

  String _urlForService(BackendServiceType service) {
    switch (service) {
      case BackendServiceType.agent:
        return _agentUrlController.text;
      case BackendServiceType.stt:
        return _sttUrlController.text;
      case BackendServiceType.tts:
        return _ttsUrlController.text;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildServiceCard(
          context: context,
          service: BackendServiceType.agent,
          title: 'Agent 后端地址',
          description: '用于对话、报告、系统状态和索引更新。',
          controller: _agentUrlController,
          hintText: 'http://192.168.50.198:5563',
        ),
        const SizedBox(height: 16),
        _buildServiceCard(
          context: context,
          service: BackendServiceType.stt,
          title: 'STT 后端地址',
          description: '用于语音转文字，接口路径固定使用 STT 配置中的 /asr。',
          controller: _sttUrlController,
          hintText: 'http://192.168.50.198:9000',
        ),
        const SizedBox(height: 16),
        _buildServiceCard(
          context: context,
          service: BackendServiceType.tts,
          title: 'TTS 后端地址',
          description: '用于语音合成；可填服务根地址或完整 /v1/audio/speech 地址。',
          controller: _ttsUrlController,
          hintText: 'http://192.168.50.198:8880',
          extraFields: [
            const SizedBox(height: 12),
            Text('TTS 声音', style: theme.textTheme.titleSmall),
            const SizedBox(height: 8),
            TextField(
              controller: _ttsVoiceController,
              decoration: const InputDecoration(
                hintText: 'zf_094',
                helperText: '当前默认值为 zf_094，后续可扩展为更多声音选项。',
                isDense: true,
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: OutlinedButton(
                onPressed: _resetToDefault,
                child: const Text('恢复默认'),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: ElevatedButton(
                onPressed: _saveConfig,
                child: const Text('保存配置'),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildServiceCard({
    required BuildContext context,
    required BackendServiceType service,
    required String title,
    required String description,
    required TextEditingController controller,
    required String hintText,
    List<Widget> extraFields = const [],
  }) {
    final theme = Theme.of(context);
    final testResult = _testResults[service];
    final isTesting = _testingService == service;

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: theme.dividerColor),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: theme.textTheme.titleSmall),
          const SizedBox(height: 4),
          Text(description, style: theme.textTheme.bodySmall),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    hintText: hintText,
                    isDense: true,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              ElevatedButton(
                onPressed: _testingService == null
                    ? () => _testConnection(service)
                    : null,
                child: isTesting
                    ? const SizedBox(
                        width: 16,
                        height: 16,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Text('测试'),
              ),
            ],
          ),
          if (testResult != null) ...[
            const SizedBox(height: 8),
            Builder(builder: (ctx) {
              // 用主题的语义色,而不是硬编码 Colors.green
              final ok = AppTheme.success(ctx);
              final color = testResult ? ok : theme.colorScheme.error;
              return Row(
                children: [
                  Icon(
                    testResult ? Icons.check_circle_outline : Icons.error_outline,
                    size: 16,
                    color: color,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    testResult ? '连接成功' : '连接失败',
                    style: theme.textTheme.bodySmall?.copyWith(color: color),
                  ),
                ],
              );
            }),
          ],
          ...extraFields,
        ],
      ),
    );
  }
}
