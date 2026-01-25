import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/config/backend_config_provider.dart';

/// 后端配置面板
class BackendConfigPanel extends ConsumerStatefulWidget {
  const BackendConfigPanel({super.key});

  @override
  ConsumerState<BackendConfigPanel> createState() => _BackendConfigPanelState();
}

class _BackendConfigPanelState extends ConsumerState<BackendConfigPanel> {
  late TextEditingController _apiUrlController;
  late TextEditingController _sttUrlController;
  bool _isTesting = false;
  bool? _testResult;

  @override
  void initState() {
    super.initState();
    final config = ref.read(backendConfigProvider);
    _apiUrlController = TextEditingController(text: config.apiBaseUrl);
    _sttUrlController = TextEditingController(
      text: config.sttConfig?.baseUrl ?? '',
    );
  }

  @override
  void dispose() {
    _apiUrlController.dispose();
    _sttUrlController.dispose();
    super.dispose();
  }

  Future<void> _testConnection() async {
    setState(() {
      _isTesting = true;
      _testResult = null;
    });

    final result = await ref
        .read(backendConfigProvider.notifier)
        .testConnection(_apiUrlController.text);

    setState(() {
      _isTesting = false;
      _testResult = result;
    });
  }

  Future<void> _saveConfig() async {
    try {
      await ref
          .read(backendConfigProvider.notifier)
          .updateApiBaseUrl(_apiUrlController.text);

      if (_sttUrlController.text.isNotEmpty) {
        final currentConfig = ref.read(backendConfigProvider);
        final newSttConfig = currentConfig.sttConfig?.copyWith(
          baseUrl: _sttUrlController.text,
        );
        if (newSttConfig != null) {
          await ref
              .read(backendConfigProvider.notifier)
              .updateSTTConfig(newSttConfig);
        }
      }

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('配置已保存')),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('保存失败: $e')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // API 后端地址
        Text(
          'API 后端地址',
          style: theme.textTheme.titleSmall,
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              child: TextField(
                controller: _apiUrlController,
                decoration: const InputDecoration(
                  hintText: 'http://localhost:5000',
                  isDense: true,
                ),
              ),
            ),
            const SizedBox(width: 8),
            ElevatedButton(
              onPressed: _isTesting ? null : _testConnection,
              child: _isTesting
                  ? const SizedBox(
                      width: 16,
                      height: 16,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : const Text('测试'),
            ),
          ],
        ),
        if (_testResult != null) ...[
          const SizedBox(height: 8),
          Row(
            children: [
              Icon(
                _testResult! ? Icons.check_circle : Icons.error,
                size: 16,
                color: _testResult! ? Colors.green : theme.colorScheme.error,
              ),
              const SizedBox(width: 4),
              Text(
                _testResult! ? '连接成功' : '连接失败',
                style: TextStyle(
                  color: _testResult! ? Colors.green : theme.colorScheme.error,
                ),
              ),
            ],
          ),
        ],

        const SizedBox(height: 24),

        // STT 服务地址
        Text(
          'STT 语音服务地址',
          style: theme.textTheme.titleSmall,
        ),
        const SizedBox(height: 8),
        TextField(
          controller: _sttUrlController,
          decoration: const InputDecoration(
            hintText: 'http://192.168.50.50:9000',
            isDense: true,
          ),
        ),

        const SizedBox(height: 24),

        // 保存按钮
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: _saveConfig,
            child: const Text('保存配置'),
          ),
        ),
      ],
    );
  }
}
