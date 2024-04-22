// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CustomerOrderRequestStruct extends BaseStruct {
  CustomerOrderRequestStruct({
    String? status,
    String? customerId,
    String? agentId,
    String? description,
    String? discountType,
    int? discountValue,
    List<CustomerOrderDetailRequestStruct>? orderDetails,
  })  : _status = status,
        _customerId = customerId,
        _agentId = agentId,
        _description = description,
        _discountType = discountType,
        _discountValue = discountValue,
        _orderDetails = orderDetails;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;
  bool hasStatus() => _status != null;

  // "customer_id" field.
  String? _customerId;
  String get customerId => _customerId ?? '';
  set customerId(String? val) => _customerId = val;
  bool hasCustomerId() => _customerId != null;

  // "agent_id" field.
  String? _agentId;
  String get agentId => _agentId ?? '';
  set agentId(String? val) => _agentId = val;
  bool hasAgentId() => _agentId != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

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

  // "order_details" field.
  List<CustomerOrderDetailRequestStruct>? _orderDetails;
  List<CustomerOrderDetailRequestStruct> get orderDetails =>
      _orderDetails ?? const [];
  set orderDetails(List<CustomerOrderDetailRequestStruct>? val) =>
      _orderDetails = val;
  void updateOrderDetails(
          Function(List<CustomerOrderDetailRequestStruct>) updateFn) =>
      updateFn(_orderDetails ??= []);
  bool hasOrderDetails() => _orderDetails != null;

  static CustomerOrderRequestStruct fromMap(Map<String, dynamic> data) =>
      CustomerOrderRequestStruct(
        status: data['status'] as String?,
        customerId: data['customer_id'] as String?,
        agentId: data['agent_id'] as String?,
        description: data['description'] as String?,
        discountType: data['discount_type'] as String?,
        discountValue: castToType<int>(data['discount_value']),
        orderDetails: getStructList(
          data['order_details'],
          CustomerOrderDetailRequestStruct.fromMap,
        ),
      );

  static CustomerOrderRequestStruct? maybeFromMap(dynamic data) => data is Map
      ? CustomerOrderRequestStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'status': _status,
        'customer_id': _customerId,
        'agent_id': _agentId,
        'description': _description,
        'discount_type': _discountType,
        'discount_value': _discountValue,
        'order_details': _orderDetails?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'customer_id': serializeParam(
          _customerId,
          ParamType.String,
        ),
        'agent_id': serializeParam(
          _agentId,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'discount_type': serializeParam(
          _discountType,
          ParamType.String,
        ),
        'discount_value': serializeParam(
          _discountValue,
          ParamType.int,
        ),
        'order_details': serializeParam(
          _orderDetails,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static CustomerOrderRequestStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CustomerOrderRequestStruct(
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        customerId: deserializeParam(
          data['customer_id'],
          ParamType.String,
          false,
        ),
        agentId: deserializeParam(
          data['agent_id'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
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
        orderDetails: deserializeStructParam<CustomerOrderDetailRequestStruct>(
          data['order_details'],
          ParamType.DataStruct,
          true,
          structBuilder: CustomerOrderDetailRequestStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'CustomerOrderRequestStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CustomerOrderRequestStruct &&
        status == other.status &&
        customerId == other.customerId &&
        agentId == other.agentId &&
        description == other.description &&
        discountType == other.discountType &&
        discountValue == other.discountValue &&
        listEquality.equals(orderDetails, other.orderDetails);
  }

  @override
  int get hashCode => const ListEquality().hash([
        status,
        customerId,
        agentId,
        description,
        discountType,
        discountValue,
        orderDetails
      ]);
}

CustomerOrderRequestStruct createCustomerOrderRequestStruct({
  String? status,
  String? customerId,
  String? agentId,
  String? description,
  String? discountType,
  int? discountValue,
}) =>
    CustomerOrderRequestStruct(
      status: status,
      customerId: customerId,
      agentId: agentId,
      description: description,
      discountType: discountType,
      discountValue: discountValue,
    );
