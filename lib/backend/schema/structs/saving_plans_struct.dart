// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SavingPlansStruct extends BaseStruct {
  SavingPlansStruct({
    String? plan,
    String? frequency,
  })  : _plan = plan,
        _frequency = frequency;

  // "plan" field.
  String? _plan;
  String get plan => _plan ?? '';
  set plan(String? val) => _plan = val;

  bool hasPlan() => _plan != null;

  // "frequency" field.
  String? _frequency;
  String get frequency => _frequency ?? '';
  set frequency(String? val) => _frequency = val;

  bool hasFrequency() => _frequency != null;

  static SavingPlansStruct fromMap(Map<String, dynamic> data) =>
      SavingPlansStruct(
        plan: data['plan'] as String?,
        frequency: data['frequency'] as String?,
      );

  static SavingPlansStruct? maybeFromMap(dynamic data) => data is Map
      ? SavingPlansStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'plan': _plan,
        'frequency': _frequency,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'plan': serializeParam(
          _plan,
          ParamType.String,
        ),
        'frequency': serializeParam(
          _frequency,
          ParamType.String,
        ),
      }.withoutNulls;

  static SavingPlansStruct fromSerializableMap(Map<String, dynamic> data) =>
      SavingPlansStruct(
        plan: deserializeParam(
          data['plan'],
          ParamType.String,
          false,
        ),
        frequency: deserializeParam(
          data['frequency'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SavingPlansStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SavingPlansStruct &&
        plan == other.plan &&
        frequency == other.frequency;
  }

  @override
  int get hashCode => const ListEquality().hash([plan, frequency]);
}

SavingPlansStruct createSavingPlansStruct({
  String? plan,
  String? frequency,
}) =>
    SavingPlansStruct(
      plan: plan,
      frequency: frequency,
    );
