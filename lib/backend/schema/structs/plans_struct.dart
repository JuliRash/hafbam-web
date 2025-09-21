// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlansStruct extends BaseStruct {
  PlansStruct({
    int? id,
    String? productCode,
    String? subServiceCode,
    String? serviceName,
    String? serviceDefaultPrice,
    String? serviceDescription,
    double? cashbackPercentage,
    double? cashbackDefaultPrice,
  })  : _id = id,
        _productCode = productCode,
        _subServiceCode = subServiceCode,
        _serviceName = serviceName,
        _serviceDefaultPrice = serviceDefaultPrice,
        _serviceDescription = serviceDescription,
        _cashbackPercentage = cashbackPercentage,
        _cashbackDefaultPrice = cashbackDefaultPrice;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "product_code" field.
  String? _productCode;
  String get productCode => _productCode ?? '';
  set productCode(String? val) => _productCode = val;

  bool hasProductCode() => _productCode != null;

  // "sub_service_code" field.
  String? _subServiceCode;
  String get subServiceCode => _subServiceCode ?? '';
  set subServiceCode(String? val) => _subServiceCode = val;

  bool hasSubServiceCode() => _subServiceCode != null;

  // "service_name" field.
  String? _serviceName;
  String get serviceName => _serviceName ?? '';
  set serviceName(String? val) => _serviceName = val;

  bool hasServiceName() => _serviceName != null;

  // "service_default_price" field.
  String? _serviceDefaultPrice;
  String get serviceDefaultPrice => _serviceDefaultPrice ?? '';
  set serviceDefaultPrice(String? val) => _serviceDefaultPrice = val;

  bool hasServiceDefaultPrice() => _serviceDefaultPrice != null;

  // "service_description" field.
  String? _serviceDescription;
  String get serviceDescription => _serviceDescription ?? '';
  set serviceDescription(String? val) => _serviceDescription = val;

  bool hasServiceDescription() => _serviceDescription != null;

  // "cashback_percentage" field.
  double? _cashbackPercentage;
  double get cashbackPercentage => _cashbackPercentage ?? 0.0;
  set cashbackPercentage(double? val) => _cashbackPercentage = val;

  void incrementCashbackPercentage(double amount) =>
      cashbackPercentage = cashbackPercentage + amount;

  bool hasCashbackPercentage() => _cashbackPercentage != null;

  // "cashback_default_price" field.
  double? _cashbackDefaultPrice;
  double get cashbackDefaultPrice => _cashbackDefaultPrice ?? 0.0;
  set cashbackDefaultPrice(double? val) => _cashbackDefaultPrice = val;

  void incrementCashbackDefaultPrice(double amount) =>
      cashbackDefaultPrice = cashbackDefaultPrice + amount;

  bool hasCashbackDefaultPrice() => _cashbackDefaultPrice != null;

  static PlansStruct fromMap(Map<String, dynamic> data) => PlansStruct(
        id: castToType<int>(data['id']),
        productCode: data['product_code'] as String?,
        subServiceCode: data['sub_service_code'] as String?,
        serviceName: data['service_name'] as String?,
        serviceDefaultPrice: data['service_default_price'] as String?,
        serviceDescription: data['service_description'] as String?,
        cashbackPercentage: castToType<double>(data['cashback_percentage']),
        cashbackDefaultPrice:
            castToType<double>(data['cashback_default_price']),
      );

  static PlansStruct? maybeFromMap(dynamic data) =>
      data is Map ? PlansStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'product_code': _productCode,
        'sub_service_code': _subServiceCode,
        'service_name': _serviceName,
        'service_default_price': _serviceDefaultPrice,
        'service_description': _serviceDescription,
        'cashback_percentage': _cashbackPercentage,
        'cashback_default_price': _cashbackDefaultPrice,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'product_code': serializeParam(
          _productCode,
          ParamType.String,
        ),
        'sub_service_code': serializeParam(
          _subServiceCode,
          ParamType.String,
        ),
        'service_name': serializeParam(
          _serviceName,
          ParamType.String,
        ),
        'service_default_price': serializeParam(
          _serviceDefaultPrice,
          ParamType.String,
        ),
        'service_description': serializeParam(
          _serviceDescription,
          ParamType.String,
        ),
        'cashback_percentage': serializeParam(
          _cashbackPercentage,
          ParamType.double,
        ),
        'cashback_default_price': serializeParam(
          _cashbackDefaultPrice,
          ParamType.double,
        ),
      }.withoutNulls;

  static PlansStruct fromSerializableMap(Map<String, dynamic> data) =>
      PlansStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        productCode: deserializeParam(
          data['product_code'],
          ParamType.String,
          false,
        ),
        subServiceCode: deserializeParam(
          data['sub_service_code'],
          ParamType.String,
          false,
        ),
        serviceName: deserializeParam(
          data['service_name'],
          ParamType.String,
          false,
        ),
        serviceDefaultPrice: deserializeParam(
          data['service_default_price'],
          ParamType.String,
          false,
        ),
        serviceDescription: deserializeParam(
          data['service_description'],
          ParamType.String,
          false,
        ),
        cashbackPercentage: deserializeParam(
          data['cashback_percentage'],
          ParamType.double,
          false,
        ),
        cashbackDefaultPrice: deserializeParam(
          data['cashback_default_price'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'PlansStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PlansStruct &&
        id == other.id &&
        productCode == other.productCode &&
        subServiceCode == other.subServiceCode &&
        serviceName == other.serviceName &&
        serviceDefaultPrice == other.serviceDefaultPrice &&
        serviceDescription == other.serviceDescription &&
        cashbackPercentage == other.cashbackPercentage &&
        cashbackDefaultPrice == other.cashbackDefaultPrice;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        productCode,
        subServiceCode,
        serviceName,
        serviceDefaultPrice,
        serviceDescription,
        cashbackPercentage,
        cashbackDefaultPrice
      ]);
}

PlansStruct createPlansStruct({
  int? id,
  String? productCode,
  String? subServiceCode,
  String? serviceName,
  String? serviceDefaultPrice,
  String? serviceDescription,
  double? cashbackPercentage,
  double? cashbackDefaultPrice,
}) =>
    PlansStruct(
      id: id,
      productCode: productCode,
      subServiceCode: subServiceCode,
      serviceName: serviceName,
      serviceDefaultPrice: serviceDefaultPrice,
      serviceDescription: serviceDescription,
      cashbackPercentage: cashbackPercentage,
      cashbackDefaultPrice: cashbackDefaultPrice,
    );
