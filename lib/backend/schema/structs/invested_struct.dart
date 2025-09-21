// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InvestedStruct extends BaseStruct {
  InvestedStruct({
    List<InvestedDataStruct>? investedData,
  }) : _investedData = investedData;

  // "invested_data" field.
  List<InvestedDataStruct>? _investedData;
  List<InvestedDataStruct> get investedData => _investedData ?? const [];
  set investedData(List<InvestedDataStruct>? val) => _investedData = val;

  void updateInvestedData(Function(List<InvestedDataStruct>) updateFn) {
    updateFn(_investedData ??= []);
  }

  bool hasInvestedData() => _investedData != null;

  static InvestedStruct fromMap(Map<String, dynamic> data) => InvestedStruct(
        investedData: getStructList(
          data['invested_data'],
          InvestedDataStruct.fromMap,
        ),
      );

  static InvestedStruct? maybeFromMap(dynamic data) =>
      data is Map ? InvestedStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'invested_data': _investedData?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'invested_data': serializeParam(
          _investedData,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static InvestedStruct fromSerializableMap(Map<String, dynamic> data) =>
      InvestedStruct(
        investedData: deserializeStructParam<InvestedDataStruct>(
          data['invested_data'],
          ParamType.DataStruct,
          true,
          structBuilder: InvestedDataStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'InvestedStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is InvestedStruct &&
        listEquality.equals(investedData, other.investedData);
  }

  @override
  int get hashCode => const ListEquality().hash([investedData]);
}

InvestedStruct createInvestedStruct() => InvestedStruct();
