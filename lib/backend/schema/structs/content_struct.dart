// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContentStruct extends BaseStruct {
  ContentStruct({
    TransactionsStruct? transactions,
  }) : _transactions = transactions;

  // "transactions" field.
  TransactionsStruct? _transactions;
  TransactionsStruct get transactions => _transactions ?? TransactionsStruct();
  set transactions(TransactionsStruct? val) => _transactions = val;

  void updateTransactions(Function(TransactionsStruct) updateFn) {
    updateFn(_transactions ??= TransactionsStruct());
  }

  bool hasTransactions() => _transactions != null;

  static ContentStruct fromMap(Map<String, dynamic> data) => ContentStruct(
        transactions: data['transactions'] is TransactionsStruct
            ? data['transactions']
            : TransactionsStruct.maybeFromMap(data['transactions']),
      );

  static ContentStruct? maybeFromMap(dynamic data) =>
      data is Map ? ContentStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'transactions': _transactions?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'transactions': serializeParam(
          _transactions,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ContentStruct fromSerializableMap(Map<String, dynamic> data) =>
      ContentStruct(
        transactions: deserializeStructParam(
          data['transactions'],
          ParamType.DataStruct,
          false,
          structBuilder: TransactionsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ContentStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ContentStruct && transactions == other.transactions;
  }

  @override
  int get hashCode => const ListEquality().hash([transactions]);
}

ContentStruct createContentStruct({
  TransactionsStruct? transactions,
}) =>
    ContentStruct(
      transactions: transactions ?? TransactionsStruct(),
    );
