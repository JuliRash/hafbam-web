// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotisStruct extends BaseStruct {
  NotisStruct({
    String? id,
    String? title,
    String? message,
    String? createdAt,
    String? readAt,
  })  : _id = id,
        _title = title,
        _message = message,
        _createdAt = createdAt,
        _readAt = readAt;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "read_at" field.
  String? _readAt;
  String get readAt => _readAt ?? '';
  set readAt(String? val) => _readAt = val;

  bool hasReadAt() => _readAt != null;

  static NotisStruct fromMap(Map<String, dynamic> data) => NotisStruct(
        id: data['id'] as String?,
        title: data['title'] as String?,
        message: data['message'] as String?,
        createdAt: data['created_at'] as String?,
        readAt: data['read_at'] as String?,
      );

  static NotisStruct? maybeFromMap(dynamic data) =>
      data is Map ? NotisStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'title': _title,
        'message': _message,
        'created_at': _createdAt,
        'read_at': _readAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'read_at': serializeParam(
          _readAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static NotisStruct fromSerializableMap(Map<String, dynamic> data) =>
      NotisStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        readAt: deserializeParam(
          data['read_at'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'NotisStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NotisStruct &&
        id == other.id &&
        title == other.title &&
        message == other.message &&
        createdAt == other.createdAt &&
        readAt == other.readAt;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, title, message, createdAt, readAt]);
}

NotisStruct createNotisStruct({
  String? id,
  String? title,
  String? message,
  String? createdAt,
  String? readAt,
}) =>
    NotisStruct(
      id: id,
      title: title,
      message: message,
      createdAt: createdAt,
      readAt: readAt,
    );
