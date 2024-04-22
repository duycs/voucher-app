// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ErrorsStruct extends BaseStruct {
  ErrorsStruct({
    List<ErrorStruct>? errors,
  }) : _errors = errors;

  // "errors" field.
  List<ErrorStruct>? _errors;
  List<ErrorStruct> get errors => _errors ?? const [];
  set errors(List<ErrorStruct>? val) => _errors = val;
  void updateErrors(Function(List<ErrorStruct>) updateFn) =>
      updateFn(_errors ??= []);
  bool hasErrors() => _errors != null;

  static ErrorsStruct fromMap(Map<String, dynamic> data) => ErrorsStruct(
        errors: getStructList(
          data['errors'],
          ErrorStruct.fromMap,
        ),
      );

  static ErrorsStruct? maybeFromMap(dynamic data) =>
      data is Map ? ErrorsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'errors': _errors?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'errors': serializeParam(
          _errors,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static ErrorsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ErrorsStruct(
        errors: deserializeStructParam<ErrorStruct>(
          data['errors'],
          ParamType.DataStruct,
          true,
          structBuilder: ErrorStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ErrorsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ErrorsStruct && listEquality.equals(errors, other.errors);
  }

  @override
  int get hashCode => const ListEquality().hash([errors]);
}

ErrorsStruct createErrorsStruct() => ErrorsStruct();
