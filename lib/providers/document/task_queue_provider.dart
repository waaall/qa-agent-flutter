import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/task_info.dart';

/// 任务队列 Provider
final taskQueueProvider = StateNotifierProvider<TaskQueueNotifier, TaskQueueState>((ref) {
  return TaskQueueNotifier();
});

/// 任务队列管理
class TaskQueueNotifier extends StateNotifier<TaskQueueState> {
  TaskQueueNotifier() : super(const TaskQueueState());

  /// 添加任务
  void addTask(UnifiedTaskInfo task) {
    state = state.copyWith(
      tasks: [...state.tasks, task],
    );
  }

  /// 更新任务
  void updateTask(String taskId, UnifiedTaskInfo Function(UnifiedTaskInfo) updater) {
    state = state.copyWith(
      tasks: state.tasks.map((t) {
        if (t.taskId == taskId) {
          return updater(t);
        }
        return t;
      }).toList(),
    );
  }

  /// 移除任务
  void removeTask(String taskId) {
    state = state.copyWith(
      tasks: state.tasks.where((t) => t.taskId != taskId).toList(),
    );
  }

  /// 清除已完成任务
  void clearCompletedTasks() {
    state = state.copyWith(
      tasks: state.tasks.where((t) =>
        t.status != TaskStatus.completed && t.status != TaskStatus.failed
      ).toList(),
    );
  }

  /// 获取活跃任务
  List<UnifiedTaskInfo> get activeTasks {
    return state.tasks.where((t) =>
      t.status == TaskStatus.pending || t.status == TaskStatus.processing
    ).toList();
  }

  /// 是否有活跃任务
  bool get hasActiveTasks => activeTasks.isNotEmpty;
}
