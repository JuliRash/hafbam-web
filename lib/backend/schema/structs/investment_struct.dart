// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InvestmentStruct extends BaseStruct {
  InvestmentStruct({
    int? id,
    String? code,
    String? name,
    String? status,
    int? duration,
    String? amount,
    String? expectedRoi,
    String? description,
    String? createdAt,
    String? updatedAt,
  })  : _id = id,
        _code = code,
        _name = name,
        _status = status,
        _duration = duration,
        _amount = amount,
        _expectedRoi = expectedRoi,
        _description = description,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;

  bool hasCode() => _code != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "duration" field.
  int? _duration;
  int get duration => _duration ?? 0;
  set duration(int? val) => _duration = val;

  void incrementDuration(int amount) => duration = duration + amount;

  bool hasDuration() => _duration != null;

  // "amount" field.
  String? _amount;
  String get amount => _amount ?? '';
  set amount(String? val) => _amount = val;

  bool hasAmount() => _amount != null;

  // "expected_roi" field.
  String? _expectedRoi;
  String get expectedRoi => _expectedRoi ?? '';
  set expectedRoi(String? val) => _expectedRoi = val;

  bool hasExpectedRoi() => _expectedRoi != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  static InvestmentStruct fromMap(Map<String, dynamic> data) =>
      InvestmentStruct(
        id: castToType<int>(data['id']),
        code: data['code'] as String?,
        name: data['name'] as String?,
        status: data['status'] as String?,
        duration: castToType<int>(data['duration']),
        amount: data['amount'] as String?,
        expectedRoi: data['expected_roi'] as String?,
        description: data['description'] as String?,
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
      );

  static InvestmentStruct? maybeFromMap(dynamic data) => data is Map
      ? InvestmentStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'code': _code,
        'name': _name,
        'status': _status,
        'duration': _duration,
        'amount': _amount,
        'expected_roi': _expectedRoi,
        'description': _description,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'duration': serializeParam(
          _duration,
          ParamType.int,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.String,
        ),
        'expected_roi': serializeParam(
          _expectedRoi,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static InvestmentStruct fromSerializableMap(Map<String, dynamic> data) =>
      InvestmentStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        duration: deserializeParam(
          data['duration'],
          ParamType.int,
          false,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.String,
          false,
        ),
        expectedRoi: deserializeParam(
          data['expected_roi'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'InvestmentStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is InvestmentStruct &&
        id == other.id &&
        code == other.code &&
        name == other.name &&
        status == other.status &&
        duration == other.duration &&
        amount == other.amount &&
        expectedRoi == other.expectedRoi &&
        description == other.description &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        code,
        name,
        status,
        duration,
        amount,
        expectedRoi,
        description,
        createdAt,
        updatedAt
      ]);
}

InvestmentStruct createInvestmentStruct({
  int? id,
  String? code,
  String? name,
  String? status,
  int? duration,
  String? amount,
  String? expectedRoi,
  String? description,
  String? createdAt,
  String? updatedAt,
}) =>
    InvestmentStruct(
      id: id,
      code: code,
      name: name,
      status: status,
      duration: duration,
      amount: amount,
      expectedRoi: expectedRoi,
      description: description,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
