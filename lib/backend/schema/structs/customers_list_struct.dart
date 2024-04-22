// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CustomersListStruct extends BaseStruct {
  CustomersListStruct({
    MetaDataStruct? meta,
    List<CustomerStruct>? data,
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
  List<CustomerStruct>? _data;
  List<CustomerStruct> get data => _data ?? const [];
  set data(List<CustomerStruct>? val) => _data = val;
  void updateData(Function(List<CustomerStruct>) updateFn) =>
      updateFn(_data ??= []);
  bool hasData() => _data != null;

  static CustomersListStruct fromMap(Map<String, dynamic> data) =>
      CustomersListStruct(
        meta: MetaDataStruct.maybeFromMap(data['meta']),
        data: getStructList(
          data['data'],
          CustomerStruct.fromMap,
        ),
      );

  static CustomersListStruct? maybeFromMap(dynamic data) => data is Map
      ? CustomersListStruct.fromMap(data.cast<String, dynamic>())
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

  static CustomersListStruct fromSerializableMap(Map<String, dynamic> data) =>
      CustomersListStruct(
        meta: deserializeStructParam(
          data['meta'],
          ParamType.DataStruct,
          false,
          structBuilder: MetaDataStruct.fromSerializableMap,
        ),
        data: deserializeStructParam<CustomerStruct>(
          data['data'],
          ParamType.DataStruct,
          true,
          structBuilder: CustomerStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'CustomersListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CustomersListStruct &&
        meta == other.meta &&
        listEquality.equals(data, other.data);
  }

  @override
  int get hashCode => const ListEquality().hash([meta, data]);
}

CustomersListStruct createCustomersListStruct({
  MetaDataStruct? meta,
}) =>
    CustomersListStruct(
      meta: meta ?? MetaDataStruct(),
    );
