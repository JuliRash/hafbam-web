// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BuyCableStruct extends BaseStruct {
  BuyCableStruct({
    String? message,
    CableDataStruct? cableData,
  })  : _message = message,
        _cableData = cableData;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "cableData" field.
  CableDataStruct? _cableData;
  CableDataStruct get cableData => _cableData ?? CableDataStruct();
  set cableData(CableDataStruct? val) => _cableData = val;

  void updateCableData(Function(CableDataStruct) updateFn) {
    updateFn(_cableData ??= CableDataStruct());
  }

  bool hasCableData() => _cableData != null;

  static BuyCableStruct fromMap(Map<String, dynamic> data) => BuyCableStruct(
        message: data['message'] as String?,
        cableData: data['cableData'] is CableDataStruct
            ? data['cableData']
            : CableDataStruct.maybeFromMap(data['cableData']),
      );

  static BuyCableStruct? maybeFromMap(dynamic data) =>
      data is Map ? BuyCableStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'message': _message,
        'cableData': _cableData?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'cableData': serializeParam(
          _cableData,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static BuyCableStruct fromSerializableMap(Map<String, dynamic> data) =>
      BuyCableStruct(
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        cableData: deserializeStructParam(
          data['cableData'],
          ParamType.DataStruct,
          false,
          structBuilder: CableDataStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'BuyCableStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BuyCableStruct &&
        message == other.message &&
        cableData == other.cableData;
  }

  @override
  int get hashCode => const ListEquality().hash([message, cableData]);
}

BuyCableStruct createBuyCableStruct({
  String? message,
  CableDataStruct? cableData,
}) =>
    BuyCableStruct(
      message: message,
      cableData: cableData ?? CableDataStruct(),
    );
