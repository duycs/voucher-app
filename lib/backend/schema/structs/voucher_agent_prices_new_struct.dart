// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VoucherAgentPricesNewStruct extends BaseStruct {
  VoucherAgentPricesNewStruct({
    List<VoucherAgentPricesStruct>? data,
  }) : _data = data;

  // "data" field.
  List<VoucherAgentPricesStruct>? _data;
  List<VoucherAgentPricesStruct> get data => _data ?? const [];
  set data(List<VoucherAgentPricesStruct>? val) => _data = val;
  void updateData(Function(List<VoucherAgentPricesStruct>) updateFn) =>
      updateFn(_data ??= []);
  bool hasData() => _data != null;

  static VoucherAgentPricesNewStruct fromMap(Map<String, dynamic> data) =>
      VoucherAgentPricesNewStruct(
        data: getStructList(
          data['data'],
          VoucherAgentPricesStruct.fromMap,
        ),
      );

  static VoucherAgentPricesNewStruct? maybeFromMap(dynamic data) => data is Map
      ? VoucherAgentPricesNewStruct.fromMap(data.cast<String, dynamic>())
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

  static VoucherAgentPricesNewStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      VoucherAgentPricesNewStruct(
        data: deserializeStructParam<VoucherAgentPricesStruct>(
          data['data'],
          ParamType.DataStruct,
          true,
          structBuilder: VoucherAgentPricesStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'VoucherAgentPricesNewStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is VoucherAgentPricesNewStruct &&
        listEquality.equals(data, other.data);
  }

  @override
  int get hashCode => const ListEquality().hash([data]);
}

VoucherAgentPricesNewStruct createVoucherAgentPricesNewStruct() =>
    VoucherAgentPricesNewStruct();
