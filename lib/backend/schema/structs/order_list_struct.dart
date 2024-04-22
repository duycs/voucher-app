// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderListStruct extends BaseStruct {
  OrderListStruct({
    List<OrderTableStruct>? data,
  }) : _data = data;

  // "data" field.
  List<OrderTableStruct>? _data;
  List<OrderTableStruct> get data => _data ?? const [];
  set data(List<OrderTableStruct>? val) => _data = val;
  void updateData(Function(List<OrderTableStruct>) updateFn) =>
      updateFn(_data ??= []);
  bool hasData() => _data != null;

  static OrderListStruct fromMap(Map<String, dynamic> data) => OrderListStruct(
        data: getStructList(
          data['data'],
          OrderTableStruct.fromMap,
        ),
      );

  static OrderListStruct? maybeFromMap(dynamic data) => data is Map
      ? OrderListStruct.fromMap(data.cast<String, dynamic>())
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

  static OrderListStruct fromSerializableMap(Map<String, dynamic> data) =>
      OrderListStruct(
        data: deserializeStructParam<OrderTableStruct>(
          data['data'],
          ParamType.DataStruct,
          true,
          structBuilder: OrderTableStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'OrderListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is OrderListStruct && listEquality.equals(data, other.data);
  }

  @override
  int get hashCode => const ListEquality().hash([data]);
}

OrderListStruct createOrderListStruct() => OrderListStruct();
