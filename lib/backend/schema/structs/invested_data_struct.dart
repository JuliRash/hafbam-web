// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InvestedDataStruct extends BaseStruct {
  InvestedDataStruct({
    int? id,
    InvestmentStruct? investment,
    String? amount,
  })  : _id = id,
        _investment = investment,
        _amount = amount;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "investment" field.
  InvestmentStruct? _investment;
  InvestmentStruct get investment => _investment ?? InvestmentStruct();
  set investment(InvestmentStruct? val) => _investment = val;

  void updateInvestment(Function(InvestmentStruct) updateFn) {
    updateFn(_investment ??= InvestmentStruct());
  }

  bool hasInvestment() => _investment != null;

  // "amount" field.
  String? _amount;
  String get amount => _amount ?? '';
  set amount(String? val) => _amount = val;

  bool hasAmount() => _amount != null;

  static InvestedDataStruct fromMap(Map<String, dynamic> data) =>
      InvestedDataStruct(
        id: castToType<int>(data['id']),
        investment: data['investment'] is InvestmentStruct
            ? data['investment']
            : InvestmentStruct.maybeFromMap(data['investment']),
        amount: data['amount'] as String?,
      );

  static InvestedDataStruct? maybeFromMap(dynamic data) => data is Map
      ? InvestedDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'investment': _investment?.toMap(),
        'amount': _amount,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'investment': serializeParam(
          _investment,
          ParamType.DataStruct,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.String,
        ),
      }.withoutNulls;

  static InvestedDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      InvestedDataStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        investment: deserializeStructParam(
          data['investment'],
          ParamType.DataStruct,
          false,
          structBuilder: InvestmentStruct.fromSerializableMap,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'InvestedDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is InvestedDataStruct &&
        id == other.id &&
        investment == other.investment &&
        amount == other.amount;
  }

  @override
  int get hashCode => const ListEquality().hash([id, investment, amount]);
}

InvestedDataStruct createInvestedDataStruct({
  int? id,
  InvestmentStruct? investment,
  String? amount,
}) =>
    InvestedDataStruct(
      id: id,
      investment: investment ?? InvestmentStruct(),
      amount: amount,
    );
