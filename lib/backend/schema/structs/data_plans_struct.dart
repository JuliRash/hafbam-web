// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataPlansStruct extends BaseStruct {
  DataPlansStruct({
    String? variationCode,
    String? name,
    String? variationAmount,
    String? fixedPrice,
  })  : _variationCode = variationCode,
        _name = name,
        _variationAmount = variationAmount,
        _fixedPrice = fixedPrice;

  // "variation_code" field.
  String? _variationCode;
  String get variationCode => _variationCode ?? '';
  set variationCode(String? val) => _variationCode = val;

  bool hasVariationCode() => _variationCode != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "variation_amount" field.
  String? _variationAmount;
  String get variationAmount => _variationAmount ?? '';
  set variationAmount(String? val) => _variationAmount = val;

  bool hasVariationAmount() => _variationAmount != null;

  // "fixedPrice" field.
  String? _fixedPrice;
  String get fixedPrice => _fixedPrice ?? '';
  set fixedPrice(String? val) => _fixedPrice = val;

  bool hasFixedPrice() => _fixedPrice != null;

  static DataPlansStruct fromMap(Map<String, dynamic> data) => DataPlansStruct(
        variationCode: data['variation_code'] as String?,
        name: data['name'] as String?,
        variationAmount: data['variation_amount'] as String?,
        fixedPrice: data['fixedPrice'] as String?,
      );

  static DataPlansStruct? maybeFromMap(dynamic data) => data is Map
      ? DataPlansStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'variation_code': _variationCode,
        'name': _name,
        'variation_amount': _variationAmount,
        'fixedPrice': _fixedPrice,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'variation_code': serializeParam(
          _variationCode,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'variation_amount': serializeParam(
          _variationAmount,
          ParamType.String,
        ),
        'fixedPrice': serializeParam(
          _fixedPrice,
          ParamType.String,
        ),
      }.withoutNulls;

  static DataPlansStruct fromSerializableMap(Map<String, dynamic> data) =>
      DataPlansStruct(
        variationCode: deserializeParam(
          data['variation_code'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        variationAmount: deserializeParam(
          data['variation_amount'],
          ParamType.String,
          false,
        ),
        fixedPrice: deserializeParam(
          data['fixedPrice'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DataPlansStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DataPlansStruct &&
        variationCode == other.variationCode &&
        name == other.name &&
        variationAmount == other.variationAmount &&
        fixedPrice == other.fixedPrice;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([variationCode, name, variationAmount, fixedPrice]);
}

DataPlansStruct createDataPlansStruct({
  String? variationCode,
  String? name,
  String? variationAmount,
  String? fixedPrice,
}) =>
    DataPlansStruct(
      variationCode: variationCode,
      name: name,
      variationAmount: variationAmount,
      fixedPrice: fixedPrice,
    );
