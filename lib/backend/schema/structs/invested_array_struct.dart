// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InvestedArrayStruct extends BaseStruct {
  InvestedArrayStruct({
    String? capital,
    InvestedStruct? invested,
  })  : _capital = capital,
        _invested = invested;

  // "capital" field.
  String? _capital;
  String get capital => _capital ?? '';
  set capital(String? val) => _capital = val;

  bool hasCapital() => _capital != null;

  // "invested" field.
  InvestedStruct? _invested;
  InvestedStruct get invested => _invested ?? InvestedStruct();
  set invested(InvestedStruct? val) => _invested = val;

  void updateInvested(Function(InvestedStruct) updateFn) {
    updateFn(_invested ??= InvestedStruct());
  }

  bool hasInvested() => _invested != null;

  static InvestedArrayStruct fromMap(Map<String, dynamic> data) =>
      InvestedArrayStruct(
        capital: data['capital'] as String?,
        invested: data['invested'] is InvestedStruct
            ? data['invested']
            : InvestedStruct.maybeFromMap(data['invested']),
      );

  static InvestedArrayStruct? maybeFromMap(dynamic data) => data is Map
      ? InvestedArrayStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'capital': _capital,
        'invested': _invested?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'capital': serializeParam(
          _capital,
          ParamType.String,
        ),
        'invested': serializeParam(
          _invested,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static InvestedArrayStruct fromSerializableMap(Map<String, dynamic> data) =>
      InvestedArrayStruct(
        capital: deserializeParam(
          data['capital'],
          ParamType.String,
          false,
        ),
        invested: deserializeStructParam(
          data['invested'],
          ParamType.DataStruct,
          false,
          structBuilder: InvestedStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'InvestedArrayStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is InvestedArrayStruct &&
        capital == other.capital &&
        invested == other.invested;
  }

  @override
  int get hashCode => const ListEquality().hash([capital, invested]);
}

InvestedArrayStruct createInvestedArrayStruct({
  String? capital,
  InvestedStruct? invested,
}) =>
    InvestedArrayStruct(
      capital: capital,
      invested: invested ?? InvestedStruct(),
    );
