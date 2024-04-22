// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ErrorExtensionStruct extends BaseStruct {
  ErrorExtensionStruct({
    String? code,
  }) : _code = code;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;
  bool hasCode() => _code != null;

  static ErrorExtensionStruct fromMap(Map<String, dynamic> data) =>
      ErrorExtensionStruct(
        code: data['code'] as String?,
      );

  static ErrorExtensionStruct? maybeFromMap(dynamic data) => data is Map
      ? ErrorExtensionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'code': _code,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
      }.withoutNulls;

  static ErrorExtensionStruct fromSerializableMap(Map<String, dynamic> data) =>
      ErrorExtensionStruct(
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ErrorExtensionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ErrorExtensionStruct && code == other.code;
  }

  @override
  int get hashCode => const ListEquality().hash([code]);
}

ErrorExtensionStruct createErrorExtensionStruct({
  String? code,
}) =>
    ErrorExtensionStruct(
      code: code,
    );
