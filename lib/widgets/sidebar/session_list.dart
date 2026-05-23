import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../providers/session/session_provider.dart';
import 'session_item.dart';

/// 会话列表
class SessionList extends ConsumerWidget {
  final VoidCallback? onSessionTap;

  const SessionList({
    super.key,
    this.onSessionTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final sessionState = ref.watch(sessionNotifierProvider);
    final sessions = sessionState.sessions;
    final currentSessionId = sessionState.currentSessionId;

    return Container(
      color: theme.scaffoldBackgroundColor,
      child: Column(
        children: [
          // 头部:更细的字重,与正文一致的水平内边距
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 8, 12),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'PowerPlantQA',
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.settings_outlined, size: 20),
                  onPressed: () => context.push('/settings'),
                  tooltip: '设置',
                ),
              ],
            ),
          ),
          // 新对话按钮:走全局 OutlinedButton 主题(次级、克制)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: () {
                  ref.read(sessionControllerProvider).createNewSession();
                  onSessionTap?.call();
                },
                icon: const Icon(Icons.add, size: 18),
                label: const Text('新对话'),
              ),
            ),
          ),
          const SizedBox(height: 12),
          // 会话列表
          Expanded(
            child: sessions.isEmpty
                ? Center(
                    child: Text(
                      '暂无会话',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    itemCount: sessions.length,
                    itemBuilder: (context, index) {
                      final session = sessions[index];
                      return SessionItem(
                        key: ValueKey(session.sessionId),
                        title: session.title,
                        isActive: session.sessionId == currentSessionId,
                        onTap: () {
                          ref.read(sessionControllerProvider)
                              .switchSession(session.sessionId);
                          onSessionTap?.call();
                        },
                        onDelete: () {
                          ref.read(sessionControllerProvider)
                              .deleteSession(session.sessionId);
                        },
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
