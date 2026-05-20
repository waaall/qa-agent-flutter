import 'package:flutter_test/flutter_test.dart';
import 'package:qa_agent_flutter/models/report.dart';

void main() {
  test('Report enum labels match backend values', () {
    expect(ReportType.trendAnalysis.value, 'trend_analysis');
    expect(ReportType.diagnosisReport.label, '诊断报告');
    expect(ReportStatus.completed.isTerminal, isTrue);
    expect(ReportStatus.running.isActive, isTrue);
  });
}
