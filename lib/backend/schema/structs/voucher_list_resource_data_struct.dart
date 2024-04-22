// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VoucherListResourceDataStruct extends BaseStruct {
  VoucherListResourceDataStruct({
    MetaDataStruct? meta,
    List<VoucherStruct>? data,
  })  : _meta = meta,
        _data = data;

  // "meta" field.
  MetaDataStruct? _meta;
  MetaDataStruct get meta => _meta ?? MetaDataStruct();
  set meta(MetaDataStruct? val) => _meta = val;
  void updateMeta(Function(MetaDataStruct) updateFn) =>
      updateFn(_meta ??= MetaDataStruct());
  bool hasMeta() => _meta != null;

  // "data" field.
  List<VoucherStruct>? _data;
  List<VoucherStruct> get data => _data ?? const [];
  set data(List<VoucherStruct>? val) => _data = val;
  void updateData(Function(List<VoucherStruct>) updateFn) =>
      updateFn(_data ??= []);
  bool hasData() => _data != null;

  static VoucherListResourceDataStruct fromMap(Map<String, dynamic> data) =>
      VoucherListResourceDataStruct(
        meta: MetaDataStruct.maybeFromMap(data['meta']),
        data: getStructList(
          data['data'],
          VoucherStruct.fromMap,
        ),
      );

  static VoucherListResourceDataStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? VoucherListResourceDataStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'meta': _meta?.toMap(),
        'data': _data?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'meta': serializeParam(
          _meta,
          ParamType.DataStruct,
        ),
        'data': serializeParam(
          _data,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static VoucherListResourceDataStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      VoucherListResourceDataStruct(
        meta: deserializeStructParam(
          data['meta'],
          ParamType.DataStruct,
          false,
          structBuilder: MetaDataStruct.fromSerializableMap,
        ),
        data: deserializeStructParam<VoucherStruct>(
          data['data'],
          ParamType.DataStruct,
          true,
          structBuilder: VoucherStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'VoucherListResourceDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is VoucherListResourceDataStruct &&
        meta == other.meta &&
        listEquality.equals(data, other.data);
  }

  @override
  int get hashCode => const ListEquality().hash([meta, data]);
}

VoucherListResourceDataStruct createVoucherListResourceDataStruct({
  MetaDataStruct? meta,
}) =>
    VoucherListResourceDataStruct(
      meta: meta ?? MetaDataStruct(),
    );
