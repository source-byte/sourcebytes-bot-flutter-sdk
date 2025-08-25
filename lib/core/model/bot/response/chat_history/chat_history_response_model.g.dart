// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_history_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatHistoryResponseModelImpl _$$ChatHistoryResponseModelImplFromJson(
  Map<String, dynamic> json,
) => _$ChatHistoryResponseModelImpl(
  id: json['id'] as String?,
  name: json['name'] as String?,
  tenantId: json['tenant_id'] as String?,
  bot: json['bot'] as String?,
  user: json['user'] as String?,
  messages: (json['messages'] as List<dynamic>?)
      ?.map((e) => Message.fromJson(e as Map<String, dynamic>))
      .toList(),
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$$ChatHistoryResponseModelImplToJson(
  _$ChatHistoryResponseModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'tenant_id': instance.tenantId,
  'bot': instance.bot,
  'user': instance.user,
  'messages': instance.messages,
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
};

_$MessageImpl _$$MessageImplFromJson(
  Map<String, dynamic> json,
) => _$MessageImpl(
  id: json['id'] as String?,
  message: json['message'] as String?,
  messageAuthorType: json['message_author_type'] as String?,
  conversationId: json['conversation_id'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  infoSourceTenantFiles: (json['info_source_tenant_files'] as List<dynamic>?)
      ?.map((e) => InfoSourceTenantFile.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$MessageImplToJson(_$MessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'message_author_type': instance.messageAuthorType,
      'conversation_id': instance.conversationId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'info_source_tenant_files': instance.infoSourceTenantFiles,
    };

_$InfoSourceTenantFileImpl _$$InfoSourceTenantFileImplFromJson(
  Map<String, dynamic> json,
) => _$InfoSourceTenantFileImpl(
  id: json['id'] as String?,
  file: json['file'] as String?,
  originalFilename: json['original_filename'] as String?,
  metadataText: json['metadata_text'] as String?,
  uploadedAt: json['uploaded_at'] == null
      ? null
      : DateTime.parse(json['uploaded_at'] as String),
  fileContent: json['file_content'] as String?,
  ocrTime: json['OCR_time'],
  fileType: json['file_type'] as String?,
  isActive: json['is_active'] as bool?,
  uploadedFrom: json['uploaded_from'] as String?,
  uploadStatus: json['upload_status'] as String?,
  lastSync: json['last_sync'] == null
      ? null
      : DateTime.parse(json['last_sync'] as String),
  fileSizeKb: json['file_size_kb'] as String?,
  isDeleted: json['is_deleted'] as bool?,
  deletedDate: json['deleted_date'],
  version: (json['version'] as num?)?.toInt(),
  tenant: json['tenant'] as String?,
  department: json['department'] as String?,
);

Map<String, dynamic> _$$InfoSourceTenantFileImplToJson(
  _$InfoSourceTenantFileImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'file': instance.file,
  'original_filename': instance.originalFilename,
  'metadata_text': instance.metadataText,
  'uploaded_at': instance.uploadedAt?.toIso8601String(),
  'file_content': instance.fileContent,
  'OCR_time': instance.ocrTime,
  'file_type': instance.fileType,
  'is_active': instance.isActive,
  'uploaded_from': instance.uploadedFrom,
  'upload_status': instance.uploadStatus,
  'last_sync': instance.lastSync?.toIso8601String(),
  'file_size_kb': instance.fileSizeKb,
  'is_deleted': instance.isDeleted,
  'deleted_date': instance.deletedDate,
  'version': instance.version,
  'tenant': instance.tenant,
  'department': instance.department,
};
