// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PurchaseListDetailDataStruct extends BaseStruct {
  PurchaseListDetailDataStruct({
    List<PurchaseListDetailStruct>? data,
    MetaDataStruct? meta,
  })  : _data = data,
        _meta = meta;

  // "data" field.
  List<PurchaseListDetailStruct>? _data;
  List<PurchaseListDetailStruct> get data => _data ?? const [];
  set data(List<PurchaseListDetailStruct>? val) => _data = val;
  void updateData(Function(List<PurchaseListDetailStruct>) updateFn) =>
      updateFn(_data ??= []);
  bool hasData() => _data != null;

  // "meta" field.
  MetaDataStruct? _meta;
  MetaDataStruct get meta => _meta ?? MetaDataStruct();
  set meta(MetaDataStruct? val) => _meta = val;
  void updateMeta(Function(MetaDataStruct) updateFn) =>
      updateFn(_meta ??= MetaDataStruct());
  bool hasMeta() => _meta != null;

  static PurchaseListDetailDataStruct fromMap(Map<String, dynamic> data) =>
      PurchaseListDetailDataStruct(
        data: getStructList(
          data['data'],
          PurchaseListDetailStruct.fromMap,
        ),
        meta: MetaDataStruct.maybeFromMap(data['meta']),
      );

  static PurchaseListDetailDataStruct? maybeFromMap(dynamic data) => data is Map
      ? PurchaseListDetailDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'data': _data?.map((e) => e.toMap()).toList(),
        'meta': _meta?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'data': serializeParam(
          _data,
          ParamType.DataStruct,
          true,
        ),
        'meta': serializeParam(
          _meta,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static PurchaseListDetailDataStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PurchaseListDetailDataStruct(
        data: deserializeStructParam<PurchaseListDetailStruct>(
          data['data'],
          ParamType.DataStruct,
          true,
          structBuilder: PurchaseListDetailStruct.fromSerializableMap,
        ),
        meta: deserializeStructParam(
          data['meta'],
          ParamType.DataStruct,
          false,
          structBuilder: MetaDataStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'PurchaseListDetailDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PurchaseListDetailDataStruct &&
        listEquality.equals(data, other.data) &&
        meta == other.meta;
  }

  @override
  int get hashCode => const ListEquality().hash([data, meta]);
}

PurchaseListDetailDataStruct createPurchaseListDetailDataStruct({
  MetaDataStruct? meta,
}) =>
    PurchaseListDetailDataStruct(
      meta: meta ?? MetaDataStruct(),
    );
