// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CustomerOrderDetailsUpdateStruct extends BaseStruct {
  CustomerOrderDetailsUpdateStruct({
    String? status,
    AgentStruct? agentId,
    int? totalVoucher,
    String? discountType,
    int? discountValue,
    int? discountMoney,
    String? customerOrderId,
    String? id,
    VoucherTemplateStruct? voucherTemplateId,
  })  : _status = status,
        _agentId = agentId,
        _totalVoucher = totalVoucher,
        _discountType = discountType,
        _discountValue = discountValue,
        _discountMoney = discountMoney,
        _customerOrderId = customerOrderId,
        _id = id,
        _voucherTemplateId = voucherTemplateId;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;
  bool hasStatus() => _status != null;

  // "agent_id" field.
  AgentStruct? _agentId;
  AgentStruct get agentId => _agentId ?? AgentStruct();
  set agentId(AgentStruct? val) => _agentId = val;
  void updateAgentId(Function(AgentStruct) updateFn) =>
      updateFn(_agentId ??= AgentStruct());
  bool hasAgentId() => _agentId != null;

  // "total_voucher" field.
  int? _totalVoucher;
  int get totalVoucher => _totalVoucher ?? 0;
  set totalVoucher(int? val) => _totalVoucher = val;
  void incrementTotalVoucher(int amount) =>
      _totalVoucher = totalVoucher + amount;
  bool hasTotalVoucher() => _totalVoucher != null;

  // "discount_type" field.
  String? _discountType;
  String get discountType => _discountType ?? '';
  set discountType(String? val) => _discountType = val;
  bool hasDiscountType() => _discountType != null;

  // "discount_value" field.
  int? _discountValue;
  int get discountValue => _discountValue ?? 0;
  set discountValue(int? val) => _discountValue = val;
  void incrementDiscountValue(int amount) =>
      _discountValue = discountValue + amount;
  bool hasDiscountValue() => _discountValue != null;

  // "discount_money" field.
  int? _discountMoney;
  int get discountMoney => _discountMoney ?? 0;
  set discountMoney(int? val) => _discountMoney = val;
  void incrementDiscountMoney(int amount) =>
      _discountMoney = discountMoney + amount;
  bool hasDiscountMoney() => _discountMoney != null;

  // "customer_order_id" field.
  String? _customerOrderId;
  String get customerOrderId => _customerOrderId ?? '';
  set customerOrderId(String? val) => _customerOrderId = val;
  bool hasCustomerOrderId() => _customerOrderId != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "voucher_template_id" field.
  VoucherTemplateStruct? _voucherTemplateId;
  VoucherTemplateStruct get voucherTemplateId =>
      _voucherTemplateId ?? VoucherTemplateStruct();
  set voucherTemplateId(VoucherTemplateStruct? val) => _voucherTemplateId = val;
  void updateVoucherTemplateId(Function(VoucherTemplateStruct) updateFn) =>
      updateFn(_voucherTemplateId ??= VoucherTemplateStruct());
  bool hasVoucherTemplateId() => _voucherTemplateId != null;

  static CustomerOrderDetailsUpdateStruct fromMap(Map<String, dynamic> data) =>
      CustomerOrderDetailsUpdateStruct(
        status: data['status'] as String?,
        agentId: AgentStruct.maybeFromMap(data['agent_id']),
        totalVoucher: castToType<int>(data['total_voucher']),
        discountType: data['discount_type'] as String?,
        discountValue: castToType<int>(data['discount_value']),
        discountMoney: castToType<int>(data['discount_money']),
        customerOrderId: data['customer_order_id'] as String?,
        id: data['id'] as String?,
        voucherTemplateId:
            VoucherTemplateStruct.maybeFromMap(data['voucher_template_id']),
      );

  static CustomerOrderDetailsUpdateStruct? maybeFromMap(dynamic data) => data
          is Map
      ? CustomerOrderDetailsUpdateStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'status': _status,
        'agent_id': _agentId?.toMap(),
        'total_voucher': _totalVoucher,
        'discount_type': _discountType,
        'discount_value': _discountValue,
        'discount_money': _discountMoney,
        'customer_order_id': _customerOrderId,
        'id': _id,
        'voucher_template_id': _voucherTemplateId?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'agent_id': serializeParam(
          _agentId,
          ParamType.DataStruct,
        ),
        'total_voucher': serializeParam(
          _totalVoucher,
          ParamType.int,
        ),
        'discount_type': serializeParam(
          _discountType,
          ParamType.String,
        ),
        'discount_value': serializeParam(
          _discountValue,
          ParamType.int,
        ),
        'discount_money': serializeParam(
          _discountMoney,
          ParamType.int,
        ),
        'customer_order_id': serializeParam(
          _customerOrderId,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'voucher_template_id': serializeParam(
          _voucherTemplateId,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static CustomerOrderDetailsUpdateStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CustomerOrderDetailsUpdateStruct(
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        agentId: deserializeStructParam(
          data['agent_id'],
          ParamType.DataStruct,
          false,
          structBuilder: AgentStruct.fromSerializableMap,
        ),
        totalVoucher: deserializeParam(
          data['total_voucher'],
          ParamType.int,
          false,
        ),
        discountType: deserializeParam(
          data['discount_type'],
          ParamType.String,
          false,
        ),
        discountValue: deserializeParam(
          data['discount_value'],
          ParamType.int,
          false,
        ),
        discountMoney: deserializeParam(
          data['discount_money'],
          ParamType.int,
          false,
        ),
        customerOrderId: deserializeParam(
          data['customer_order_id'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        voucherTemplateId: deserializeStructParam(
          data['voucher_template_id'],
          ParamType.DataStruct,
          false,
          structBuilder: VoucherTemplateStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'CustomerOrderDetailsUpdateStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CustomerOrderDetailsUpdateStruct &&
        status == other.status &&
        agentId == other.agentId &&
        totalVoucher == other.totalVoucher &&
        discountType == other.discountType &&
        discountValue == other.discountValue &&
        discountMoney == other.discountMoney &&
        customerOrderId == other.customerOrderId &&
        id == other.id &&
        voucherTemplateId == other.voucherTemplateId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        status,
        agentId,
        totalVoucher,
        discountType,
        discountValue,
        discountMoney,
        customerOrderId,
        id,
        voucherTemplateId
      ]);
}

CustomerOrderDetailsUpdateStruct createCustomerOrderDetailsUpdateStruct({
  String? status,
  AgentStruct? agentId,
  int? totalVoucher,
  String? discountType,
  int? discountValue,
  int? discountMoney,
  String? customerOrderId,
  String? id,
  VoucherTemplateStruct? voucherTemplateId,
}) =>
    CustomerOrderDetailsUpdateStruct(
      status: status,
      agentId: agentId ?? AgentStruct(),
      totalVoucher: totalVoucher,
      discountType: discountType,
      discountValue: discountValue,
      discountMoney: discountMoney,
      customerOrderId: customerOrderId,
      id: id,
      voucherTemplateId: voucherTemplateId ?? VoucherTemplateStruct(),
    );
