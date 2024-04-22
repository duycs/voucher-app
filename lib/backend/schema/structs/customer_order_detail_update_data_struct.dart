// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CustomerOrderDetailUpdateDataStruct extends BaseStruct {
  CustomerOrderDetailUpdateDataStruct({
    List<CustomerOrderDetailsUpdateStruct>? data,
  }) : _data = data;

  // "data" field.
  List<CustomerOrderDetailsUpdateStruct>? _data;
  List<CustomerOrderDetailsUpdateStruct> get data => _data ?? const [];
  set data(List<CustomerOrderDetailsUpdateStruct>? val) => _data = val;
  void updateData(Function(List<CustomerOrderDetailsUpdateStruct>) updateFn) =>
      updateFn(_data ??= []);
  bool hasData() => _data != null;

  static CustomerOrderDetailUpdateDataStruct fromMap(
          Map<String, dynamic> data) =>
      CustomerOrderDetailUpdateDataStruct(
        data: getStructList(
          data['data'],
          CustomerOrderDetailsUpdateStruct.fromMap,
        ),
      );

  static CustomerOrderDetailUpdateDataStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? CustomerOrderDetailUpdateDataStruct.fromMap(
              data.cast<String, dynamic>())
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

  static CustomerOrderDetailUpdateDataStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CustomerOrderDetailUpdateDataStruct(
        data: deserializeStructParam<CustomerOrderDetailsUpdateStruct>(
          data['data'],
          ParamType.DataStruct,
          true,
          structBuilder: CustomerOrderDetailsUpdateStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'CustomerOrderDetailUpdateDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CustomerOrderDetailUpdateDataStruct &&
        listEquality.equals(data, other.data);
  }

  @override
  int get hashCode => const ListEquality().hash([data]);
}

CustomerOrderDetailUpdateDataStruct
    createCustomerOrderDetailUpdateDataStruct() =>
        CustomerOrderDetailUpdateDataStruct();
