// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CustomerOrderUpdateStruct extends BaseStruct {
  CustomerOrderUpdateStruct({
    List<VoucherAgentPricesNewStruct>? data,
  }) : _data = data;

  // "data" field.
  List<VoucherAgentPricesNewStruct>? _data;
  List<VoucherAgentPricesNewStruct> get data => _data ?? const [];
  set data(List<VoucherAgentPricesNewStruct>? val) => _data = val;
  void updateData(Function(List<VoucherAgentPricesNewStruct>) updateFn) =>
      updateFn(_data ??= []);
  bool hasData() => _data != null;

  static CustomerOrderUpdateStruct fromMap(Map<String, dynamic> data) =>
      CustomerOrderUpdateStruct(
        data: getStructList(
          data['data'],
          VoucherAgentPricesNewStruct.fromMap,
        ),
      );

  static CustomerOrderUpdateStruct? maybeFromMap(dynamic data) => data is Map
      ? CustomerOrderUpdateStruct.fromMap(data.cast<String, dynamic>())
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

  static CustomerOrderUpdateStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CustomerOrderUpdateStruct(
        data: deserializeStructParam<VoucherAgentPricesNewStruct>(
          data['data'],
          ParamType.DataStruct,
          true,
          structBuilder: VoucherAgentPricesNewStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'CustomerOrderUpdateStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CustomerOrderUpdateStruct &&
        listEquality.equals(data, other.data);
  }

  @override
  int get hashCode => const ListEquality().hash([data]);
}

CustomerOrderUpdateStruct createCustomerOrderUpdateStruct() =>
    CustomerOrderUpdateStruct();
