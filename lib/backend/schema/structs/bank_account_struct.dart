// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BankAccountStruct extends BaseStruct {
  BankAccountStruct({
    String? accountNumber,
    String? accountName,
    String? bankName,
    String? accountBalance,
  })  : _accountNumber = accountNumber,
        _accountName = accountName,
        _bankName = bankName,
        _accountBalance = accountBalance;

  // "account_number" field.
  String? _accountNumber;
  String get accountNumber => _accountNumber ?? '';
  set accountNumber(String? val) => _accountNumber = val;

  bool hasAccountNumber() => _accountNumber != null;

  // "account_name" field.
  String? _accountName;
  String get accountName => _accountName ?? '';
  set accountName(String? val) => _accountName = val;

  bool hasAccountName() => _accountName != null;

  // "bank_name" field.
  String? _bankName;
  String get bankName => _bankName ?? '';
  set bankName(String? val) => _bankName = val;

  bool hasBankName() => _bankName != null;

  // "account_balance" field.
  String? _accountBalance;
  String get accountBalance => _accountBalance ?? '';
  set accountBalance(String? val) => _accountBalance = val;

  bool hasAccountBalance() => _accountBalance != null;

  static BankAccountStruct fromMap(Map<String, dynamic> data) =>
      BankAccountStruct(
        accountNumber: data['account_number'] as String?,
        accountName: data['account_name'] as String?,
        bankName: data['bank_name'] as String?,
        accountBalance: data['account_balance'] as String?,
      );

  static BankAccountStruct? maybeFromMap(dynamic data) => data is Map
      ? BankAccountStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'account_number': _accountNumber,
        'account_name': _accountName,
        'bank_name': _bankName,
        'account_balance': _accountBalance,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'account_number': serializeParam(
          _accountNumber,
          ParamType.String,
        ),
        'account_name': serializeParam(
          _accountName,
          ParamType.String,
        ),
        'bank_name': serializeParam(
          _bankName,
          ParamType.String,
        ),
        'account_balance': serializeParam(
          _accountBalance,
          ParamType.String,
        ),
      }.withoutNulls;

  static BankAccountStruct fromSerializableMap(Map<String, dynamic> data) =>
      BankAccountStruct(
        accountNumber: deserializeParam(
          data['account_number'],
          ParamType.String,
          false,
        ),
        accountName: deserializeParam(
          data['account_name'],
          ParamType.String,
          false,
        ),
        bankName: deserializeParam(
          data['bank_name'],
          ParamType.String,
          false,
        ),
        accountBalance: deserializeParam(
          data['account_balance'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'BankAccountStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BankAccountStruct &&
        accountNumber == other.accountNumber &&
        accountName == other.accountName &&
        bankName == other.bankName &&
        accountBalance == other.accountBalance;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([accountNumber, accountName, bankName, accountBalance]);
}

BankAccountStruct createBankAccountStruct({
  String? accountNumber,
  String? accountName,
  String? bankName,
  String? accountBalance,
}) =>
    BankAccountStruct(
      accountNumber: accountNumber,
      accountName: accountName,
      bankName: bankName,
      accountBalance: accountBalance,
    );
