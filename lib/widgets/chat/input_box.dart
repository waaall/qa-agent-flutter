import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../config/app_config.dart';
import '../../config/constants.dart';
import 'audio_recorder_button.dart';

/// 输入框
class InputBox extends StatefulWidget {
  final bool isLoading;
  final void Function(String content) onSend;

  const InputBox({
    super.key,
    this.isLoading = false,
    required this.onSend,
  });

  @override
  State<InputBox> createState() => _InputBoxState();
}

class _InputBoxState extends State<InputBox> {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();
  bool _isEmpty = true;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    _controller.removeListener(_onTextChanged);
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _onTextChanged() {
    final isEmpty = _controller.text.trim().isEmpty;
    if (isEmpty != _isEmpty) {
      setState(() => _isEmpty = isEmpty);
    }
  }

  void _handleSend() {
    final content = _controller.text.trim();
    if (content.isEmpty || widget.isLoading) return;

    widget.onSend(content);
    _controller.clear();
    _focusNode.requestFocus();
  }

  void _handleTranscribed(String text) {
    // 将转写结果添加到输入框
    final currentText = _controller.text;
    if (currentText.isNotEmpty && !currentText.endsWith(' ')) {
      _controller.text = '$currentText $text';
    } else {
      _controller.text = currentText + text;
    }
    // 移动光标到末尾
    _controller.selection = TextSelection.fromPosition(
      TextPosition(offset: _controller.text.length),
    );
    _focusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        border: Border(
          top: BorderSide(
            color: theme.dividerTheme.color ?? theme.dividerColor,
          ),
        ),
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: UIConstants.maxMessageWidth,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // 语音按钮
              AudioRecorderButton(
                onTranscribed: _handleTranscribed,
              ),
              const SizedBox(width: 8),
              // 输入框
              Expanded(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    minHeight: UIConstants.inputBoxMinHeight,
                    maxHeight: UIConstants.inputBoxMaxHeight,
                  ),
                  child: KeyboardListener(
                    focusNode: FocusNode(),
                    onKeyEvent: (event) {
                      // Ctrl+Enter 发送（桌面端）
                      if (event is KeyDownEvent &&
                          event.logicalKey == LogicalKeyboardKey.enter &&
                          HardwareKeyboard.instance.isControlPressed) {
                        _handleSend();
                      }
                    },
                    child: TextField(
                      controller: _controller,
                      focusNode: _focusNode,
                      maxLines: null,
                      maxLength: AppConfig.maxMessageLength,
                      maxLengthEnforcement: MaxLengthEnforcement.enforced,
                      enabled: !widget.isLoading,
                      textInputAction: TextInputAction.newline,
                      decoration: InputDecoration(
                        hintText: widget.isLoading ? '正在思考...' : '输入您的问题...',
                        counterText: '',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              // 发送按钮
              IconButton.filled(
                onPressed: _isEmpty || widget.isLoading ? null : _handleSend,
                icon: widget.isLoading
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: Colors.white,
                        ),
                      )
                    : const Icon(Icons.send),
                tooltip: '发送 (Ctrl+Enter)',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
