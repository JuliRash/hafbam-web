// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataTransactionHistoryStruct extends BaseStruct {
  DataTransactionHistoryStruct({
    String? amount,
    String? description,
    String? type,
    String? transactionDate,
    String? transactionType,
  })  : _amount = amount,
        _description = description,
        _type = type,
        _transactionDate = transactionDate,
        _transactionType = transactionType;

  // "amount" field.
  String? _amount;
  String get amount => _amount ?? '';
  set amount(String? val) => _amount = val;

  bool hasAmount() => _amount != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "transaction_date" field.
  String? _transactionDate;
  String get transactionDate => _transactionDate ?? '';
  set transactionDate(String? val) => _transactionDate = val;

  bool hasTransactionDate() => _transactionDate != null;

  // "transaction_type" field.
  String? _transactionType;
  String get transactionType => _transactionType ?? '';
  set transactionType(String? val) => _transactionType = val;

  bool hasTransactionType() => _transactionType != null;

  static DataTransactionHistoryStruct fromMap(Map<String, dynamic> data) =>
      DataTransactionHistoryStruct(
        amount: data['amount'] as String?,
        description: data['description'] as String?,
        type: data['type'] as String?,
        transactionDate: data['transaction_date'] as String?,
        transactionType: data['transaction_type'] as String?,
      );

  static DataTransactionHistoryStruct? maybeFromMap(dynamic data) => data is Map
      ? DataTransactionHistoryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'amount': _amount,
        'description': _description,
        'type': _type,
        'transaction_date': _transactionDate,
        'transaction_type': _transactionType,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'amount': serializeParam(
          _amount,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'transaction_date': serializeParam(
          _transactionDate,
          ParamType.String,
        ),
        'transaction_type': serializeParam(
          _transactionType,
          ParamType.String,
        ),
      }.withoutNulls;

  static DataTransactionHistoryStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DataTransactionHistoryStruct(
        amount: deserializeParam(
          data['amount'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        transactionDate: deserializeParam(
          data['transaction_date'],
          ParamType.String,
          false,
        ),
        transactionType: deserializeParam(
          data['transaction_type'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DataTransactionHistoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DataTransactionHistoryStruct &&
        amount == other.amount &&
        description == other.description &&
        type == other.type &&
        transactionDate == other.transactionDate &&
        transactionType == other.transactionType;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([amount, description, type, transactionDate, transactionType]);
}

DataTransactionHistoryStruct createDataTransactionHistoryStruct({
  String? amount,
  String? description,
  String? type,
  String? transactionDate,
  String? transactionType,
}) =>
    DataTransactionHistoryStruct(
      amount: amount,
      description: description,
      type: type,
      transactionDate: transactionDate,
      transactionType: transactionType,
    );
