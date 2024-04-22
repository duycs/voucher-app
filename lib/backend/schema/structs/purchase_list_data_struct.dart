// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PurchaseListDataStruct extends BaseStruct {
  PurchaseListDataStruct({
    MetaDataStruct? meta,
    List<PurchaseListStruct>? data,
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
  List<PurchaseListStruct>? _data;
  List<PurchaseListStruct> get data => _data ?? const [];
  set data(List<PurchaseListStruct>? val) => _data = val;
  void updateData(Function(List<PurchaseListStruct>) updateFn) =>
      updateFn(_data ??= []);
  bool hasData() => _data != null;

  static PurchaseListDataStruct fromMap(Map<String, dynamic> data) =>
      PurchaseListDataStruct(
        meta: MetaDataStruct.maybeFromMap(data['meta']),
        data: getStructList(
          data['data'],
          PurchaseListStruct.fromMap,
        ),
      );

  static PurchaseListDataStruct? maybeFromMap(dynamic data) => data is Map
      ? PurchaseListDataStruct.fromMap(data.cast<String, dynamic>())
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

  static PurchaseListDataStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PurchaseListDataStruct(
        meta: deserializeStructParam(
          data['meta'],
          ParamType.DataStruct,
          false,
          structBuilder: MetaDataStruct.fromSerializableMap,
        ),
        data: deserializeStructParam<PurchaseListStruct>(
          data['data'],
          ParamType.DataStruct,
          true,
          structBuilder: PurchaseListStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'PurchaseListDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PurchaseListDataStruct &&
        meta == other.meta &&
        listEquality.equals(data, other.data);
  }

  @override
  int get hashCode => const ListEquality().hash([meta, data]);
}

PurchaseListDataStruct createPurchaseListDataStruct({
  MetaDataStruct? meta,
}) =>
    PurchaseListDataStruct(
      meta: meta ?? MetaDataStruct(),
    );
