// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DetailItemListDataStruct extends BaseStruct {
  DetailItemListDataStruct({
    List<DetailItemsStruct>? data,
  }) : _data = data;

  // "data" field.
  List<DetailItemsStruct>? _data;
  List<DetailItemsStruct> get data => _data ?? const [];
  set data(List<DetailItemsStruct>? val) => _data = val;
  void updateData(Function(List<DetailItemsStruct>) updateFn) =>
      updateFn(_data ??= []);
  bool hasData() => _data != null;

  static DetailItemListDataStruct fromMap(Map<String, dynamic> data) =>
      DetailItemListDataStruct(
        data: getStructList(
          data['data'],
          DetailItemsStruct.fromMap,
        ),
      );

  static DetailItemListDataStruct? maybeFromMap(dynamic data) => data is Map
      ? DetailItemListDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'data': _data?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'data': serializeParam(
          _data,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static DetailItemListDataStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DetailItemListDataStruct(
        data: deserializeStructParam<DetailItemsStruct>(
          data['data'],
          ParamType.DataStruct,
          true,
          structBuilder: DetailItemsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'DetailItemListDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DetailItemListDataStruct &&
        listEquality.equals(data, other.data);
  }

  @override
  int get hashCode => const ListEquality().hash([data]);
}

DetailItemListDataStruct createDetailItemListDataStruct() =>
    DetailItemListDataStruct();
