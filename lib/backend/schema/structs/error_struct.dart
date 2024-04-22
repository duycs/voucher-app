// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ErrorStruct extends BaseStruct {
  ErrorStruct({
    String? message,
    ErrorExtensionStruct? extensions,
  })  : _message = message,
        _extensions = extensions;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;
  bool hasMessage() => _message != null;

  // "extensions" field.
  ErrorExtensionStruct? _extensions;
  ErrorExtensionStruct get extensions => _extensions ?? ErrorExtensionStruct();
  set extensions(ErrorExtensionStruct? val) => _extensions = val;
  void updateExtensions(Function(ErrorExtensionStruct) updateFn) =>
      updateFn(_extensions ??= ErrorExtensionStruct());
  bool hasExtensions() => _extensions != null;

  static ErrorStruct fromMap(Map<String, dynamic> data) => ErrorStruct(
        message: data['message'] as String?,
        extensions: ErrorExtensionStruct.maybeFromMap(data['extensions']),
      );

  static ErrorStruct? maybeFromMap(dynamic data) =>
      data is Map ? ErrorStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'message': _message,
        'extensions': _extensions?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'extensions': serializeParam(
          _extensions,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ErrorStruct fromSerializableMap(Map<String, dynamic> data) =>
      ErrorStruct(
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        extensions: deserializeStructParam(
          data['extensions'],
          ParamType.DataStruct,
          false,
          structBuilder: ErrorExtensionStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ErrorStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ErrorStruct &&
        message == other.message &&
        extensions == other.extensions;
  }

  @override
  int get hashCode => const ListEquality().hash([message, extensions]);
}

ErrorStruct createErrorStruct({
  String? message,
  ErrorExtensionStruct? extensions,
}) =>
    ErrorStruct(
      message: message,
      extensions: extensions ?? ErrorExtensionStruct(),
    );
