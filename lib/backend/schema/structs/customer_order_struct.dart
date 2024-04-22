// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CustomerOrderStruct extends BaseStruct {
  CustomerOrderStruct({
    String? id,
    String? status,
    String? dateCreated,
    String? dateUpdated,
    UserStruct? userCreated,
    UserStruct? userUpdated,
    String? version,
    int? totalVoucher,
    int? totalOrderDetail,
    String? note,
    AgentStruct? agentId,
    CustomerStruct? customerId,
    String? description,
    String? code,
    String? discountType,
    int? discountValue,
    int? discountMoney,
    int? tax,
    int? taxMoney,
  })  : _id = id,
        _status = status,
        _dateCreated = dateCreated,
        _dateUpdated = dateUpdated,
        _userCreated = userCreated,
        _userUpdated = userUpdated,
        _version = version,
        _totalVoucher = totalVoucher,
        _totalOrderDetail = totalOrderDetail,
        _note = note,
        _agentId = agentId,
        _customerId = customerId,
        _description = description,
        _code = code,
        _discountType = discountType,
        _discountValue = discountValue,
        _discountMoney = discountMoney,
        _tax = tax,
        _taxMoney = taxMoney;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;
  bool hasStatus() => _status != null;

  // "date_created" field.
  String? _dateCreated;
  String get dateCreated => _dateCreated ?? '';
  set dateCreated(String? val) => _dateCreated = val;
  bool hasDateCreated() => _dateCreated != null;

  // "date_updated" field.
  String? _dateUpdated;
  String get dateUpdated => _dateUpdated ?? '';
  set dateUpdated(String? val) => _dateUpdated = val;
  bool hasDateUpdated() => _dateUpdated != null;

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

  // "version" field.
  String? _version;
  String get version => _version ?? '';
  set version(String? val) => _version = val;
  bool hasVersion() => _version != null;

  // "total_voucher" field.
  int? _totalVoucher;
  int get totalVoucher => _totalVoucher ?? 0;
  set totalVoucher(int? val) => _totalVoucher = val;
  void incrementTotalVoucher(int amount) =>
      _totalVoucher = totalVoucher + amount;
  bool hasTotalVoucher() => _totalVoucher != null;

  // "total_order_detail" field.
  int? _totalOrderDetail;
  int get totalOrderDetail => _totalOrderDetail ?? 0;
  set totalOrderDetail(int? val) => _totalOrderDetail = val;
  void incrementTotalOrderDetail(int amount) =>
      _totalOrderDetail = totalOrderDetail + amount;
  bool hasTotalOrderDetail() => _totalOrderDetail != null;

  // "note" field.
  String? _note;
  String get note => _note ?? '';
  set note(String? val) => _note = val;
  bool hasNote() => _note != null;

  // "agent_id" field.
  AgentStruct? _agentId;
  AgentStruct get agentId => _agentId ?? AgentStruct();
  set agentId(AgentStruct? val) => _agentId = val;
  void updateAgentId(Function(AgentStruct) updateFn) =>
      updateFn(_agentId ??= AgentStruct());
  bool hasAgentId() => _agentId != null;

  // "customer_id" field.
  CustomerStruct? _customerId;
  CustomerStruct get customerId => _customerId ?? CustomerStruct();
  set customerId(CustomerStruct? val) => _customerId = val;
  void updateCustomerId(Function(CustomerStruct) updateFn) =>
      updateFn(_customerId ??= CustomerStruct());
  bool hasCustomerId() => _customerId != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;
  bool hasCode() => _code != null;

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

  // "tax" field.
  int? _tax;
  int get tax => _tax ?? 0;
  set tax(int? val) => _tax = val;
  void incrementTax(int amount) => _tax = tax + amount;
  bool hasTax() => _tax != null;

  // "tax_money" field.
  int? _taxMoney;
  int get taxMoney => _taxMoney ?? 0;
  set taxMoney(int? val) => _taxMoney = val;
  void incrementTaxMoney(int amount) => _taxMoney = taxMoney + amount;
  bool hasTaxMoney() => _taxMoney != null;

  static CustomerOrderStruct fromMap(Map<String, dynamic> data) =>
      CustomerOrderStruct(
        id: data['id'] as String?,
        status: data['status'] as String?,
        dateCreated: data['date_created'] as String?,
        dateUpdated: data['date_updated'] as String?,
        userCreated: UserStruct.maybeFromMap(data['user_created']),
        userUpdated: UserStruct.maybeFromMap(data['user_updated']),
        version: data['version'] as String?,
        totalVoucher: castToType<int>(data['total_voucher']),
        totalOrderDetail: castToType<int>(data['total_order_detail']),
        note: data['note'] as String?,
        agentId: AgentStruct.maybeFromMap(data['agent_id']),
        customerId: CustomerStruct.maybeFromMap(data['customer_id']),
        description: data['description'] as String?,
        code: data['code'] as String?,
        discountType: data['discount_type'] as String?,
        discountValue: castToType<int>(data['discount_value']),
        discountMoney: castToType<int>(data['discount_money']),
        tax: castToType<int>(data['tax']),
        taxMoney: castToType<int>(data['tax_money']),
      );

  static CustomerOrderStruct? maybeFromMap(dynamic data) => data is Map
      ? CustomerOrderStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'status': _status,
        'date_created': _dateCreated,
        'date_updated': _dateUpdated,
        'user_created': _userCreated?.toMap(),
        'user_updated': _userUpdated?.toMap(),
        'version': _version,
        'total_voucher': _totalVoucher,
        'total_order_detail': _totalOrderDetail,
        'note': _note,
        'agent_id': _agentId?.toMap(),
        'customer_id': _customerId?.toMap(),
        'description': _description,
        'code': _code,
        'discount_type': _discountType,
        'discount_value': _discountValue,
        'discount_money': _discountMoney,
        'tax': _tax,
        'tax_money': _taxMoney,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'date_created': serializeParam(
          _dateCreated,
          ParamType.String,
        ),
        'date_updated': serializeParam(
          _dateUpdated,
          ParamType.String,
        ),
        'user_created': serializeParam(
          _userCreated,
          ParamType.DataStruct,
        ),
        'user_updated': serializeParam(
          _userUpdated,
          ParamType.DataStruct,
        ),
        'version': serializeParam(
          _version,
          ParamType.String,
        ),
        'total_voucher': serializeParam(
          _totalVoucher,
          ParamType.int,
        ),
        'total_order_detail': serializeParam(
          _totalOrderDetail,
          ParamType.int,
        ),
        'note': serializeParam(
          _note,
          ParamType.String,
        ),
        'agent_id': serializeParam(
          _agentId,
          ParamType.DataStruct,
        ),
        'customer_id': serializeParam(
          _customerId,
          ParamType.DataStruct,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'code': serializeParam(
          _code,
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
        'discount_money': serializeParam(
          _discountMoney,
          ParamType.int,
        ),
        'tax': serializeParam(
          _tax,
          ParamType.int,
        ),
        'tax_money': serializeParam(
          _taxMoney,
          ParamType.int,
        ),
      }.withoutNulls;

  static CustomerOrderStruct fromSerializableMap(Map<String, dynamic> data) =>
      CustomerOrderStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        dateCreated: deserializeParam(
          data['date_created'],
          ParamType.String,
          false,
        ),
        dateUpdated: deserializeParam(
          data['date_updated'],
          ParamType.String,
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
        version: deserializeParam(
          data['version'],
          ParamType.String,
          false,
        ),
        totalVoucher: deserializeParam(
          data['total_voucher'],
          ParamType.int,
          false,
        ),
        totalOrderDetail: deserializeParam(
          data['total_order_detail'],
          ParamType.int,
          false,
        ),
        note: deserializeParam(
          data['note'],
          ParamType.String,
          false,
        ),
        agentId: deserializeStructParam(
          data['agent_id'],
          ParamType.DataStruct,
          false,
          structBuilder: AgentStruct.fromSerializableMap,
        ),
        customerId: deserializeStructParam(
          data['customer_id'],
          ParamType.DataStruct,
          false,
          structBuilder: CustomerStruct.fromSerializableMap,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        code: deserializeParam(
          data['code'],
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
        discountMoney: deserializeParam(
          data['discount_money'],
          ParamType.int,
          false,
        ),
        tax: deserializeParam(
          data['tax'],
          ParamType.int,
          false,
        ),
        taxMoney: deserializeParam(
          data['tax_money'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CustomerOrderStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CustomerOrderStruct &&
        id == other.id &&
        status == other.status &&
        dateCreated == other.dateCreated &&
        dateUpdated == other.dateUpdated &&
        userCreated == other.userCreated &&
        userUpdated == other.userUpdated &&
        version == other.version &&
        totalVoucher == other.totalVoucher &&
        totalOrderDetail == other.totalOrderDetail &&
        note == other.note &&
        agentId == other.agentId &&
        customerId == other.customerId &&
        description == other.description &&
        code == other.code &&
        discountType == other.discountType &&
        discountValue == other.discountValue &&
        discountMoney == other.discountMoney &&
        tax == other.tax &&
        taxMoney == other.taxMoney;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        status,
        dateCreated,
        dateUpdated,
        userCreated,
        userUpdated,
        version,
        totalVoucher,
        totalOrderDetail,
        note,
        agentId,
        customerId,
        description,
        code,
        discountType,
        discountValue,
        discountMoney,
        tax,
        taxMoney
      ]);
}

CustomerOrderStruct createCustomerOrderStruct({
  String? id,
  String? status,
  String? dateCreated,
  String? dateUpdated,
  UserStruct? userCreated,
  UserStruct? userUpdated,
  String? version,
  int? totalVoucher,
  int? totalOrderDetail,
  String? note,
  AgentStruct? agentId,
  CustomerStruct? customerId,
  String? description,
  String? code,
  String? discountType,
  int? discountValue,
  int? discountMoney,
  int? tax,
  int? taxMoney,
}) =>
    CustomerOrderStruct(
      id: id,
      status: status,
      dateCreated: dateCreated,
      dateUpdated: dateUpdated,
      userCreated: userCreated ?? UserStruct(),
      userUpdated: userUpdated ?? UserStruct(),
      version: version,
      totalVoucher: totalVoucher,
      totalOrderDetail: totalOrderDetail,
      note: note,
      agentId: agentId ?? AgentStruct(),
      customerId: customerId ?? CustomerStruct(),
      description: description,
      code: code,
      discountType: discountType,
      discountValue: discountValue,
      discountMoney: discountMoney,
      tax: tax,
      taxMoney: taxMoney,
    );
