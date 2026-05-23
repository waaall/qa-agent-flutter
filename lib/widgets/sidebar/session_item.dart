import 'package:flutter/material.dart';

import '../../theme/app_theme.dart';

/// 会话列表项
class SessionItem extends StatefulWidget {
  final String title;
  final bool isActive;
  final VoidCallback? onTap;
  final VoidCallback? onDelete;

  const SessionItem({
    super.key,
    required this.title,
    this.isActive = false,
    this.onTap,
    this.onDelete,
  });

  @override
  State<SessionItem> createState() => _SessionItemState();
}

class _SessionItemState extends State<SessionItem> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cs = theme.colorScheme;

    // 选中:主色容器底色;悬停:发丝级中性高亮;默认:透明
    final bg = widget.isActive
        ? cs.primaryContainer
        : _isHovered
            ? cs.onSurface.withValues(alpha: 0.04)
            : Colors.transparent;

    final iconColor = widget.isActive
        ? cs.onPrimaryContainer
        : cs.onSurfaceVariant;
    final textColor = widget.isActive ? cs.onPrimaryContainer : cs.onSurface;

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onLongPress: () => _showDeleteDialog(context),
        // 120ms 微过渡:从瞬切变成柔和的色彩淡入
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 120),
          curve: Curves.easeOut,
          margin: const EdgeInsets.symmetric(vertical: 1),
          decoration: BoxDecoration(
            color: bg,
            borderRadius: BorderRadius.circular(AppTheme.radiusInteractive),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: widget.onTap,
              borderRadius:
                  BorderRadius.circular(AppTheme.radiusInteractive),
              hoverColor: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 8,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.chat_bubble_outline,
                      size: 16,
                      color: iconColor,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        widget.title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: textColor,
                          fontWeight: widget.isActive
                              ? FontWeight.w500
                              : FontWeight.w400,
                        ),
                      ),
                    ),
                    // 悬停时露出删除按钮
                    if (_isHovered && widget.onDelete != null)
                      SizedBox(
                        width: 28,
                        height: 28,
                        child: IconButton(
                          icon: Icon(
                            Icons.close_rounded,
                            size: 16,
                            color: cs.onSurfaceVariant,
                          ),
                          onPressed: () => _showDeleteDialog(context),
                          tooltip: '删除',
                          padding: EdgeInsets.zero,
                          splashRadius: 14,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showDeleteDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('删除会话'),
        content: const Text('确定要删除这个会话吗?此操作不可撤销。'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('取消'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              widget.onDelete?.call();
            },
            style: TextButton.styleFrom(
              foregroundColor: Theme.of(context).colorScheme.error,
            ),
            child: const Text('删除'),
          ),
        ],
      ),
    );
  }
}
