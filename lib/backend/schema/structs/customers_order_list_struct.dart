// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CustomersOrderListStruct extends BaseStruct {
  CustomersOrderListStruct({
    List<CustomerOrderStruct>? data,
  }) : _data = data;

  // "data" field.
  List<CustomerOrderStruct>? _data;
  List<CustomerOrderStruct> get data => _data ?? const [];
  set data(List<CustomerOrderStruct>? val) => _data = val;
  void updateData(Function(List<CustomerOrderStruct>) updateFn) =>
      updateFn(_data ??= []);
  bool hasData() => _data != null;

  static CustomersOrderListStruct fromMap(Map<String, dynamic> data) =>
      CustomersOrderListStruct(
        data: getStructList(
          data['data'],
          CustomerOrderStruct.fromMap,
        ),
      );

  static CustomersOrderListStruct? maybeFromMap(dynamic data) => data is Map
      ? CustomersOrderListStruct.fromMap(data.cast<String, dynamic>())
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

  static CustomersOrderListStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CustomersOrderListStruct(
        data: deserializeStructParam<CustomerOrderStruct>(
          data['data'],
          ParamType.DataStruct,
          true,
          structBuilder: CustomerOrderStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'CustomersOrderListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CustomersOrderListStruct &&
        listEquality.equals(data, other.data);
  }

  @override
  int get hashCode => const ListEquality().hash([data]);
}

CustomersOrderListStruct createCustomersOrderListStruct() =>
    CustomersOrderListStruct();
