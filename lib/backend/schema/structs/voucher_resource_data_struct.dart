// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VoucherResourceDataStruct extends BaseStruct {
  VoucherResourceDataStruct({
    VoucherStruct? data,
  }) : _data = data;

  // "data" field.
  VoucherStruct? _data;
  VoucherStruct get data => _data ?? VoucherStruct();
  set data(VoucherStruct? val) => _data = val;
  void updateData(Function(VoucherStruct) updateFn) =>
      updateFn(_data ??= VoucherStruct());
  bool hasData() => _data != null;

  static VoucherResourceDataStruct fromMap(Map<String, dynamic> data) =>
      VoucherResourceDataStruct(
        data: VoucherStruct.maybeFromMap(data['data']),
      );

  static VoucherResourceDataStruct? maybeFromMap(dynamic data) => data is Map
      ? VoucherResourceDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'data': _data?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'data': serializeParam(
          _data,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static VoucherResourceDataStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      VoucherResourceDataStruct(
        data: deserializeStructParam(
          data['data'],
          ParamType.DataStruct,
          false,
          structBuilder: VoucherStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'VoucherResourceDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VoucherResourceDataStruct && data == other.data;
  }

  @override
  int get hashCode => const ListEquality().hash([data]);
}

VoucherResourceDataStruct createVoucherResourceDataStruct({
  VoucherStruct? data,
}) =>
    VoucherResourceDataStruct(
      data: data ?? VoucherStruct(),
    );
