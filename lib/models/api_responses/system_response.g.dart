// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HealthResponseImpl _$$HealthResponseImplFromJson(Map<String, dynamic> json) =>
    _$HealthResponseImpl(
      status: json['status'] as String,
      version: json['version'] as String?,
    );

Map<String, dynamic> _$$HealthResponseImplToJson(
  _$HealthResponseImpl instance,
) => <String, dynamic>{'status': instance.status, 'version': instance.version};

_$StatsResponseImpl _$$StatsResponseImplFromJson(Map<String, dynamic> json) =>
    _$StatsResponseImpl(
      totalDocuments: (json['totalDocuments'] as num?)?.toInt(),
      totalChunks: (json['totalChunks'] as num?)?.toInt(),
      totalVectors: (json['totalVectors'] as num?)?.toInt(),
      lastUpdated: json['lastUpdated'] as String?,
    );

Map<String, dynamic> _$$StatsResponseImplToJson(_$StatsResponseImpl instance) =>
    <String, dynamic>{
      'totalDocuments': instance.totalDocuments,
      'totalChunks': instance.totalChunks,
      'totalVectors': instance.totalVectors,
      'lastUpdated': instance.lastUpdated,
    };

_$DatabaseInfoResponseImpl _$$DatabaseInfoResponseImplFromJson(
  Map<String, dynamic> json,
) => _$DatabaseInfoResponseImpl(
  dbName: json['dbName'] as String?,
  dbSource: json['dbSource'] as String?,
  tables: (json['tables'] as List<dynamic>?)
      ?.map((e) => TableInfo.fromJson(e as Map<String, dynamic>))
      .toList(),
  connectionStatus: json['connectionStatus'] as String?,
);

Map<String, dynamic> _$$DatabaseInfoResponseImplToJson(
  _$DatabaseInfoResponseImpl instance,
) => <String, dynamic>{
  'dbName': instance.dbName,
  'dbSource': instance.dbSource,
  'tables': instance.tables,
  'connectionStatus': instance.connectionStatus,
};

_$TableInfoImpl _$$TableInfoImplFromJson(Map<String, dynamic> json) =>
    _$TableInfoImpl(
      name: json['name'] as String,
      rowCount: (json['rowCount'] as num?)?.toInt(),
      columns: (json['columns'] as List<dynamic>?)
          ?.map((e) => ColumnInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TableInfoImplToJson(_$TableInfoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'rowCount': instance.rowCount,
      'columns': instance.columns,
    };

_$ColumnInfoImpl _$$ColumnInfoImplFromJson(Map<String, dynamic> json) =>
    _$ColumnInfoImpl(
      name: json['name'] as String,
      type: json['type'] as String,
      nullable: json['nullable'] as bool?,
    );

Map<String, dynamic> _$$ColumnInfoImplToJson(_$ColumnInfoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'nullable': instance.nullable,
    };

_$TranscribeResultImpl _$$TranscribeResultImplFromJson(
  Map<String, dynamic> json,
) => _$TranscribeResultImpl(
  text: json['text'] as String,
  language: json['language'] as String?,
  confidence: (json['confidence'] as num?)?.toDouble(),
  duration: (json['duration'] as num?)?.toDouble(),
);

Map<String, dynamic> _$$TranscribeResultImplToJson(
  _$TranscribeResultImpl instance,
) => <String, dynamic>{
  'text': instance.text,
  'language': instance.language,
  'confidence': instance.confidence,
  'duration': instance.duration,
};
