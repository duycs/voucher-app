// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VoucherAgentPricesStruct extends BaseStruct {
  VoucherAgentPricesStruct({
    String? status,
    int? retailPrice,
    UserStruct? userCreated,
    UserStruct? userUpdated,
    VoucherStruct? voucherTemplateId,
    AgentStruct? agentId,
    int? totalVoucher,
    String? discountType,
    int? discountValue,
    int? discountMoney,
    String? customerOrderId,
  })  : _status = status,
        _retailPrice = retailPrice,
        _userCreated = userCreated,
        _userUpdated = userUpdated,
        _voucherTemplateId = voucherTemplateId,
        _agentId = agentId,
        _totalVoucher = totalVoucher,
        _discountType = discountType,
        _discountValue = discountValue,
        _discountMoney = discountMoney,
        _customerOrderId = customerOrderId;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;
  bool hasStatus() => _status != null;

  // "retail_price" field.
  int? _retailPrice;
  int get retailPrice => _retailPrice ?? 0;
  set retailPrice(int? val) => _retailPrice = val;
  void incrementRetailPrice(int amount) => _retailPrice = retailPrice + amount;
  bool hasRetailPrice() => _retailPrice != null;

  // "user_created" field.
  UserStruct? _userCreated;
  UserStruct get userCreated => _userCreated ?? UserStruct();
  set userCreated(UserStruct? val) => _userCreated = val;
  void updateUserCreated(Function(UserStruct) updateFn) =>
      updateFn(_userCreated ??= UserStruct());
  bool hasUserCreated() => _userCreated != null;

  // "user_updated" field.
  UserStruct? _userUpdated;
  UserStruct get userUpdated => _userUpdated ?? UserStruct();
  set userUpdated(UserStruct? val) => _userUpdated = val;
  void updateUserUpdated(Function(UserStruct) updateFn) =>
      updateFn(_userUpdated ??= UserStruct());
  bool hasUserUpdated() => _userUpdated != null;

  // "voucher_template_id" field.
  VoucherStruct? _voucherTemplateId;
  VoucherStruct get voucherTemplateId => _voucherTemplateId ?? VoucherStruct();
  set voucherTemplateId(VoucherStruct? val) => _voucherTemplateId = val;
  void updateVoucherTemplateId(Function(VoucherStruct) updateFn) =>
      updateFn(_voucherTemplateId ??= VoucherStruct());
  bool hasVoucherTemplateId() => _voucherTemplateId != null;

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

  static VoucherAgentPricesStruct fromMap(Map<String, dynamic> data) =>
      VoucherAgentPricesStruct(
        status: data['status'] as String?,
        retailPrice: castToType<int>(data['retail_price']),
        userCreated: UserStruct.maybeFromMap(data['user_created']),
        userUpdated: UserStruct.maybeFromMap(data['user_updated']),
        voucherTemplateId:
            VoucherStruct.maybeFromMap(data['voucher_template_id']),
        agentId: AgentStruct.maybeFromMap(data['agent_id']),
        totalVoucher: castToType<int>(data['total_voucher']),
        discountType: data['discount_type'] as String?,
        discountValue: castToType<int>(data['discount_value']),
        discountMoney: castToType<int>(data['discount_money']),
        customerOrderId: data['customer_order_id'] as String?,
      );

  static VoucherAgentPricesStruct? maybeFromMap(dynamic data) => data is Map
      ? VoucherAgentPricesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'status': _status,
        'retail_price': _retailPrice,
        'user_created': _userCreated?.toMap(),
        'user_updated': _userUpdated?.toMap(),
        'voucher_template_id': _voucherTemplateId?.toMap(),
        'agent_id': _agentId?.toMap(),
        'total_voucher': _totalVoucher,
        'discount_type': _discountType,
        'discount_value': _discountValue,
        'discount_money': _discountMoney,
        'customer_order_id': _customerOrderId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'retail_price': serializeParam(
          _retailPrice,
          ParamType.int,
        ),
        'user_created': serializeParam(
          _userCreated,
          ParamType.DataStruct,
        ),
        'user_updated': serializeParam(
          _userUpdated,
          ParamType.DataStruct,
        ),
        'voucher_template_id': serializeParam(
          _voucherTemplateId,
          ParamType.DataStruct,
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
      }.withoutNulls;

  static VoucherAgentPricesStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      VoucherAgentPricesStruct(
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        retailPrice: deserializeParam(
          data['retail_price'],
          ParamType.int,
          false,
        ),
        userCreated: deserializeStructParam(
          data['user_created'],
          ParamType.DataStruct,
          false,
          structBuilder: UserStruct.fromSerializableMap,
        ),
        userUpdated: deserializeStructParam(
          data['user_updated'],
          ParamType.DataStruct,
          false,
          structBuilder: UserStruct.fromSerializableMap,
        ),
        voucherTemplateId: deserializeStructParam(
          data['voucher_template_id'],
          ParamType.DataStruct,
          false,
          structBuilder: VoucherStruct.fromSerializableMap,
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
      );

  @override
  String toString() => 'VoucherAgentPricesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VoucherAgentPricesStruct &&
        status == other.status &&
        retailPrice == other.retailPrice &&
        userCreated == other.userCreated &&
        userUpdated == other.userUpdated &&
        voucherTemplateId == other.voucherTemplateId &&
        agentId == other.agentId &&
        totalVoucher == other.totalVoucher &&
        discountType == other.discountType &&
        discountValue == other.discountValue &&
        discountMoney == other.discountMoney &&
        customerOrderId == other.customerOrderId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        status,
        retailPrice,
        userCreated,
        userUpdated,
        voucherTemplateId,
        agentId,
        totalVoucher,
        discountType,
        discountValue,
        discountMoney,
        customerOrderId
      ]);
}

VoucherAgentPricesStruct createVoucherAgentPricesStruct({
  String? status,
  int? retailPrice,
  UserStruct? userCreated,
  UserStruct? userUpdated,
  VoucherStruct? voucherTemplateId,
  AgentStruct? agentId,
  int? totalVoucher,
  String? discountType,
  int? discountValue,
  int? discountMoney,
  String? customerOrderId,
}) =>
    VoucherAgentPricesStruct(
      status: status,
      retailPrice: retailPrice,
      userCreated: userCreated ?? UserStruct(),
      userUpdated: userUpdated ?? UserStruct(),
      voucherTemplateId: voucherTemplateId ?? VoucherStruct(),
      agentId: agentId ?? AgentStruct(),
      totalVoucher: totalVoucher,
      discountType: discountType,
      discountValue: discountValue,
      discountMoney: discountMoney,
      customerOrderId: customerOrderId,
    );
