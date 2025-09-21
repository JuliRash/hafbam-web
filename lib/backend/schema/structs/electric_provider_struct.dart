// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ElectricProviderStruct extends BaseStruct {
  ElectricProviderStruct({
    String? code,
    String? name,
    String? provider,
  })  : _code = code,
        _name = name,
        _provider = provider;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;

  bool hasCode() => _code != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "provider" field.
  String? _provider;
  String get provider => _provider ?? '';
  set provider(String? val) => _provider = val;

  bool hasProvider() => _provider != null;

  static ElectricProviderStruct fromMap(Map<String, dynamic> data) =>
      ElectricProviderStruct(
        code: data['code'] as String?,
        name: data['name'] as String?,
        provider: data['provider'] as String?,
      );

  static ElectricProviderStruct? maybeFromMap(dynamic data) => data is Map
      ? ElectricProviderStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'code': _code,
        'name': _name,
        'provider': _provider,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'provider': serializeParam(
          _provider,
          ParamType.String,
        ),
      }.withoutNulls;

  static ElectricProviderStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ElectricProviderStruct(
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        provider: deserializeParam(
          data['provider'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ElectricProviderStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ElectricProviderStruct &&
        code == other.code &&
        name == other.name &&
        provider == other.provider;
  }

  @override
  int get hashCode => const ListEquality().hash([code, name, provider]);
}

ElectricProviderStruct createElectricProviderStruct({
  String? code,
  String? name,
  String? provider,
}) =>
    ElectricProviderStruct(
      code: code,
      name: name,
      provider: provider,
    );
