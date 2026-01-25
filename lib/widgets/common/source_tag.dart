import 'package:flutter/material.dart';

/// 数据来源标签
class SourceTag extends StatelessWidget {
  final String? queryType;
  final List<String>? enginesUsed;

  const SourceTag({
    super.key,
    this.queryType,
    this.enginesUsed,
  });

  @override
  Widget build(BuildContext context) {
    final engines = enginesUsed ?? [];
    if (engines.isEmpty && queryType == null) {
      return const SizedBox.shrink();
    }

    // 合并引擎类型
    final types = <String>{};
    if (queryType != null) types.add(queryType!);
    types.addAll(engines);

    return Wrap(
      spacing: 8,
      runSpacing: 4,
      children: types.map((type) => _buildTag(context, type)).toList(),
    );
  }

  Widget _buildTag(BuildContext context, String type) {
    final info = _getTagInfo(type);
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: info.color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: info.color.withValues(alpha: 0.3),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            info.emoji,
            style: const TextStyle(fontSize: 12),
          ),
          const SizedBox(width: 4),
          Text(
            info.label,
            style: theme.textTheme.labelSmall?.copyWith(
              color: info.color,
            ),
          ),
        ],
      ),
    );
  }

  _TagInfo _getTagInfo(String type) {
    switch (type.toLowerCase()) {
      case 'knowledge':
      case 'rag':
        return _TagInfo(
          emoji: '📚',
          label: '知识库',
          color: const Color(0xFF52C41A),
        );
      case 'sql':
      case 'database':
        return _TagInfo(
          emoji: '🗄️',
          label: '数据库',
          color: const Color(0xFF1890FF),
        );
      case 'api':
      case 'realtime':
        return _TagInfo(
          emoji: '🔌',
          label: '实时数据',
          color: const Color(0xFFFA8C16),
        );
      case 'general':
      default:
        return _TagInfo(
          emoji: '💬',
          label: '对话',
          color: const Color(0xFF722ED1),
        );
    }
  }
}

class _TagInfo {
  final String emoji;
  final String label;
  final Color color;

  _TagInfo({
    required this.emoji,
    required this.label,
    required this.color,
  });
}
