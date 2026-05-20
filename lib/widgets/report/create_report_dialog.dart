import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/report.dart';
import '../../providers/report/report_provider.dart';

/// 打开新建报告弹窗。
Future<void> showCreateReportDialog(BuildContext context, WidgetRef ref) async {
  await showDialog<void>(
    context: context,
    builder: (_) => const CreateReportDialog(),
  );
}

/// 新建报告弹窗。
class CreateReportDialog extends ConsumerStatefulWidget {
  const CreateReportDialog({super.key});

  @override
  ConsumerState<CreateReportDialog> createState() => _CreateReportDialogState();
}

class _CreateReportDialogState extends ConsumerState<CreateReportDialog> {
  final _formKey = GlobalKey<FormState>();
  final _questionController = TextEditingController();
  final _titleController = TextEditingController();
  final _plantController = TextEditingController();
  final _unitController = TextEditingController();
  final _deviceTypeController = TextEditingController();
  final _deviceNoController = TextEditingController();
  final _pointCodesController = TextEditingController();
  final _startTimeController = TextEditingController();
  final _endTimeController = TextEditingController();
  final _incidentIdController = TextEditingController();
  final _constraintsController = TextEditingController();

  ReportType _reportType = ReportType.trendAnalysis;
  bool _submitting = false;

  @override
  void dispose() {
    _questionController.dispose();
    _titleController.dispose();
    _plantController.dispose();
    _unitController.dispose();
    _deviceTypeController.dispose();
    _deviceNoController.dispose();
    _pointCodesController.dispose();
    _startTimeController.dispose();
    _endTimeController.dispose();
    _incidentIdController.dispose();
    _constraintsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('新建报告'),
      content: SizedBox(
        width: 640,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                DropdownButtonFormField<ReportType>(
                  initialValue: _reportType,
                  decoration: const InputDecoration(labelText: '报告类型'),
                  items: ReportType.values
                      .map(
                        (type) => DropdownMenuItem(
                          value: type,
                          child: Text('${type.label} · ${type.value}'),
                        ),
                      )
                      .toList(),
                  onChanged: (value) {
                    if (value != null) setState(() => _reportType = value);
                  },
                ),
                TextFormField(
                  controller: _questionController,
                  decoration: const InputDecoration(
                    labelText: '问题描述',
                    hintText: '例如：分析#2 机组本周给水流量异常波动原因',
                  ),
                  minLines: 3,
                  maxLines: 6,
                  validator: (value) => value == null || value.trim().isEmpty
                      ? '请输入需要分析的问题'
                      : null,
                ),
                TextFormField(
                  controller: _titleController,
                  decoration: const InputDecoration(
                    labelText: '报告标题（可选）',
                    hintText: '留空则自动从问题摘要生成',
                  ),
                ),
                const SizedBox(height: 12),
                ExpansionTile(
                  tilePadding: EdgeInsets.zero,
                  title: const Text('结构化上下文（可选）'),
                  children: [
                    _buildTextField(_plantController, '电厂', '如：xx电厂'),
                    _buildTextField(_unitController, '机组', '如：#2'),
                    _buildTextField(_deviceTypeController, '设备类型', '如：给水泵'),
                    _buildTextField(_deviceNoController, '设备编号', '如：A'),
                    _buildTextField(
                      _startTimeController,
                      '开始时间',
                      'ISO 时间或自然描述',
                    ),
                    _buildTextField(_endTimeController, '结束时间', 'ISO 时间或自然描述'),
                    _buildTextField(
                      _incidentIdController,
                      '事件 ID',
                      '如：INC-20240501-01',
                    ),
                    _buildTextField(_pointCodesController, '测点编码', '逗号或空格分隔'),
                    _buildTextField(
                      _constraintsController,
                      '附加约束',
                      '分号或换行分隔',
                      maxLines: 3,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: _submitting ? null : () => Navigator.of(context).pop(),
          child: const Text('取消'),
        ),
        FilledButton(
          onPressed: _submitting ? null : _submit,
          child: _submitting
              ? const SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              : const Text('创建'),
        ),
      ],
    );
  }

  Widget _buildTextField(
    TextEditingController controller,
    String label,
    String hint, {
    int maxLines = 1,
  }) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(labelText: label, hintText: hint),
      maxLines: maxLines,
    );
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _submitting = true);
    final request = CreateReportRequest(
      reportType: _reportType,
      question: _questionController.text.trim(),
      title: _emptyToNull(_titleController.text),
      context: ReportContext(
        plant: _emptyToNull(_plantController.text),
        unit: _emptyToNull(_unitController.text),
        deviceType: _emptyToNull(_deviceTypeController.text),
        deviceNo: _emptyToNull(_deviceNoController.text),
        pointCodes: _splitList(_pointCodesController.text, RegExp(r'[，,\s]+')),
        startTime: _emptyToNull(_startTimeController.text),
        endTime: _emptyToNull(_endTimeController.text),
        incidentId: _emptyToNull(_incidentIdController.text),
        extraConstraints: _splitList(
          _constraintsController.text,
          RegExp(r'[;；\n]+'),
        ),
      ),
    );

    final reportId = await ref
        .read(reportNotifierProvider.notifier)
        .createReport(request);
    if (!mounted) return;
    setState(() => _submitting = false);

    if (reportId != null) {
      Navigator.of(context).pop();
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('报告任务已创建')));
    } else {
      final error = ref.read(reportNotifierProvider).error ?? '创建报告失败';
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(error)));
    }
  }

  String? _emptyToNull(String value) {
    final trimmed = value.trim();
    return trimmed.isEmpty ? null : trimmed;
  }

  List<String> _splitList(String value, RegExp separator) {
    return value
        .split(separator)
        .map((item) => item.trim())
        .where((item) => item.isNotEmpty)
        .toList();
  }
}
