// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommissionDetailsStruct extends BaseStruct {
  CommissionDetailsStruct({
    double? amount,
    String? rate,
    String? rateType,
    String? computationType,
  })  : _amount = amount,
        _rate = rate,
        _rateType = rateType,
        _computationType = computationType;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;

  void incrementAmount(double amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  // "rate" field.
  String? _rate;
  String get rate => _rate ?? '';
  set rate(String? val) => _rate = val;

  bool hasRate() => _rate != null;

  // "rate_type" field.
  String? _rateType;
  String get rateType => _rateType ?? '';
  set rateType(String? val) => _rateType = val;

  bool hasRateType() => _rateType != null;

  // "computation_type" field.
  String? _computationType;
  String get computationType => _computationType ?? '';
  set computationType(String? val) => _computationType = val;

  bool hasComputationType() => _computationType != null;

  static CommissionDetailsStruct fromMap(Map<String, dynamic> data) =>
      CommissionDetailsStruct(
        amount: castToType<double>(data['amount']),
        rate: data['rate'] as String?,
        rateType: data['rate_type'] as String?,
        computationType: data['computation_type'] as String?,
      );

  static CommissionDetailsStruct? maybeFromMap(dynamic data) => data is Map
      ? CommissionDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'amount': _amount,
        'rate': _rate,
        'rate_type': _rateType,
        'computation_type': _computationType,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'amount': serializeParam(
          _amount,
          ParamType.double,
        ),
        'rate': serializeParam(
          _rate,
          ParamType.String,
        ),
        'rate_type': serializeParam(
          _rateType,
          ParamType.String,
        ),
        'computation_type': serializeParam(
          _computationType,
          ParamType.String,
        ),
      }.withoutNulls;

  static CommissionDetailsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CommissionDetailsStruct(
        amount: deserializeParam(
          data['amount'],
          ParamType.double,
          false,
        ),
        rate: deserializeParam(
          data['rate'],
          ParamType.String,
          false,
        ),
        rateType: deserializeParam(
          data['rate_type'],
          ParamType.String,
          false,
        ),
        computationType: deserializeParam(
          data['computation_type'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CommissionDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CommissionDetailsStruct &&
        amount == other.amount &&
        rate == other.rate &&
        rateType == other.rateType &&
        computationType == other.computationType;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([amount, rate, rateType, computationType]);
}

CommissionDetailsStruct createCommissionDetailsStruct({
  double? amount,
  String? rate,
  String? rateType,
  String? computationType,
}) =>
    CommissionDetailsStruct(
      amount: amount,
      rate: rate,
      rateType: rateType,
      computationType: computationType,
    );
