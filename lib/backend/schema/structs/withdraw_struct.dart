// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WithdrawStruct extends BaseStruct {
  WithdrawStruct({
    String? accountNumber,
    String? amount,
    String? accountName,
    String? bankId,
  })  : _accountNumber = accountNumber,
        _amount = amount,
        _accountName = accountName,
        _bankId = bankId;

  // "account_number" field.
  String? _accountNumber;
  String get accountNumber => _accountNumber ?? '';
  set accountNumber(String? val) => _accountNumber = val;

  bool hasAccountNumber() => _accountNumber != null;

  // "amount" field.
  String? _amount;
  String get amount => _amount ?? '';
  set amount(String? val) => _amount = val;

  bool hasAmount() => _amount != null;

  // "account_name" field.
  String? _accountName;
  String get accountName => _accountName ?? '';
  set accountName(String? val) => _accountName = val;

  bool hasAccountName() => _accountName != null;

  // "bank_id" field.
  String? _bankId;
  String get bankId => _bankId ?? '';
  set bankId(String? val) => _bankId = val;

  bool hasBankId() => _bankId != null;

  static WithdrawStruct fromMap(Map<String, dynamic> data) => WithdrawStruct(
        accountNumber: data['account_number'] as String?,
        amount: data['amount'] as String?,
        accountName: data['account_name'] as String?,
        bankId: data['bank_id'] as String?,
      );

  static WithdrawStruct? maybeFromMap(dynamic data) =>
      data is Map ? WithdrawStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'account_number': _accountNumber,
        'amount': _amount,
        'account_name': _accountName,
        'bank_id': _bankId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'account_number': serializeParam(
          _accountNumber,
          ParamType.String,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.String,
        ),
        'account_name': serializeParam(
          _accountName,
          ParamType.String,
        ),
        'bank_id': serializeParam(
          _bankId,
          ParamType.String,
        ),
      }.withoutNulls;

  static WithdrawStruct fromSerializableMap(Map<String, dynamic> data) =>
      WithdrawStruct(
        accountNumber: deserializeParam(
          data['account_number'],
          ParamType.String,
          false,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.String,
          false,
        ),
        accountName: deserializeParam(
          data['account_name'],
          ParamType.String,
          false,
        ),
        bankId: deserializeParam(
          data['bank_id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'WithdrawStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WithdrawStruct &&
        accountNumber == other.accountNumber &&
        amount == other.amount &&
        accountName == other.accountName &&
        bankId == other.bankId;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([accountNumber, amount, accountName, bankId]);
}

WithdrawStruct createWithdrawStruct({
  String? accountNumber,
  String? amount,
  String? accountName,
  String? bankId,
}) =>
    WithdrawStruct(
      accountNumber: accountNumber,
      amount: amount,
      accountName: accountName,
      bankId: bankId,
    );
