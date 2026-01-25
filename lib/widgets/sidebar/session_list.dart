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
          // 头部
          Container(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'PowerPlantQA',
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.settings_outlined),
                  onPressed: () => context.push('/settings'),
                  tooltip: '设置',
                ),
              ],
            ),
          ),
          // 新对话按钮
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  ref.read(sessionControllerProvider).createNewSession();
                  onSessionTap?.call();
                },
                icon: const Icon(Icons.add, size: 20),
                label: const Text('新对话'),
              ),
            ),
          ),
          const SizedBox(height: 16),
          // 会话列表
          Expanded(
            child: sessions.isEmpty
                ? Center(
                    child: Text(
                      '暂无会话',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
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
