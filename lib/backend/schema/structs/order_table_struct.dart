// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderTableStruct extends BaseStruct {
  OrderTableStruct({
    double? discountCash,
    double? discountPercent,
    String? note,
    String? status,
    int? price,
    VoucherStruct? voucherTemplateId,
    String? id,
    int? discountMoney,
    String? code,
    int? totalVoucher,
    int? totalOrderDetail,
    String? description,
    AgentStruct? agentId,
    String? userUpdated,
    String? dateCreated,
    UserStruct? userCreated,
    String? discountType,
    int? discountValue,
    int? finalPrice,
  })  : _discountCash = discountCash,
        _discountPercent = discountPercent,
        _note = note,
        _status = status,
        _price = price,
        _voucherTemplateId = voucherTemplateId,
        _id = id,
        _discountMoney = discountMoney,
        _code = code,
        _totalVoucher = totalVoucher,
        _totalOrderDetail = totalOrderDetail,
        _description = description,
        _agentId = agentId,
        _userUpdated = userUpdated,
        _dateCreated = dateCreated,
        _userCreated = userCreated,
        _discountType = discountType,
        _discountValue = discountValue,
        _finalPrice = finalPrice;

  // "discountCash" field.
  double? _discountCash;
  double get discountCash => _discountCash ?? 0.0;
  set discountCash(double? val) => _discountCash = val;
  void incrementDiscountCash(double amount) =>
      _discountCash = discountCash + amount;
  bool hasDiscountCash() => _discountCash != null;

  // "discountPercent" field.
  double? _discountPercent;
  double get discountPercent => _discountPercent ?? 0.0;
  set discountPercent(double? val) => _discountPercent = val;
  void incrementDiscountPercent(double amount) =>
      _discountPercent = discountPercent + amount;
  bool hasDiscountPercent() => _discountPercent != null;

  // "note" field.
  String? _note;
  String get note => _note ?? '';
  set note(String? val) => _note = val;
  bool hasNote() => _note != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;
  bool hasStatus() => _status != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  set price(int? val) => _price = val;
  void incrementPrice(int amount) => _price = price + amount;
  bool hasPrice() => _price != null;

  // "voucher_template_id" field.
  VoucherStruct? _voucherTemplateId;
  VoucherStruct get voucherTemplateId => _voucherTemplateId ?? VoucherStruct();
  set voucherTemplateId(VoucherStruct? val) => _voucherTemplateId = val;
  void updateVoucherTemplateId(Function(VoucherStruct) updateFn) =>
      updateFn(_voucherTemplateId ??= VoucherStruct());
  bool hasVoucherTemplateId() => _voucherTemplateId != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "discount_money" field.
  int? _discountMoney;
  int get discountMoney => _discountMoney ?? 0;
  set discountMoney(int? val) => _discountMoney = val;
  void incrementDiscountMoney(int amount) =>
      _discountMoney = discountMoney + amount;
  bool hasDiscountMoney() => _discountMoney != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;
  bool hasCode() => _code != null;

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

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  // "agent_id" field.
  AgentStruct? _agentId;
  AgentStruct get agentId => _agentId ?? AgentStruct();
  set agentId(AgentStruct? val) => _agentId = val;
  void updateAgentId(Function(AgentStruct) updateFn) =>
      updateFn(_agentId ??= AgentStruct());
  bool hasAgentId() => _agentId != null;

  // "user_updated" field.
  String? _userUpdated;
  String get userUpdated => _userUpdated ?? '';
  set userUpdated(String? val) => _userUpdated = val;
  bool hasUserUpdated() => _userUpdated != null;

  // "date_created" field.
  String? _dateCreated;
  String get dateCreated => _dateCreated ?? '';
  set dateCreated(String? val) => _dateCreated = val;
  bool hasDateCreated() => _dateCreated != null;

  // "user_created" field.
  UserStruct? _userCreated;
  UserStruct get userCreated => _userCreated ?? UserStruct();
  set userCreated(UserStruct? val) => _userCreated = val;
  void updateUserCreated(Function(UserStruct) updateFn) =>
      updateFn(_userCreated ??= UserStruct());
  bool hasUserCreated() => _userCreated != null;

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

  // "final_price" field.
  int? _finalPrice;
  int get finalPrice => _finalPrice ?? 0;
  set finalPrice(int? val) => _finalPrice = val;
  void incrementFinalPrice(int amount) => _finalPrice = finalPrice + amount;
  bool hasFinalPrice() => _finalPrice != null;

  static OrderTableStruct fromMap(Map<String, dynamic> data) =>
      OrderTableStruct(
        discountCash: castToType<double>(data['discountCash']),
        discountPercent: castToType<double>(data['discountPercent']),
        note: data['note'] as String?,
        status: data['status'] as String?,
        price: castToType<int>(data['price']),
        voucherTemplateId:
            VoucherStruct.maybeFromMap(data['voucher_template_id']),
        id: data['id'] as String?,
        discountMoney: castToType<int>(data['discount_money']),
        code: data['code'] as String?,
        totalVoucher: castToType<int>(data['total_voucher']),
        totalOrderDetail: castToType<int>(data['total_order_detail']),
        description: data['description'] as String?,
        agentId: AgentStruct.maybeFromMap(data['agent_id']),
        userUpdated: data['user_updated'] as String?,
        dateCreated: data['date_created'] as String?,
        userCreated: UserStruct.maybeFromMap(data['user_created']),
        discountType: data['discount_type'] as String?,
        discountValue: castToType<int>(data['discount_value']),
        finalPrice: castToType<int>(data['final_price']),
      );

  static OrderTableStruct? maybeFromMap(dynamic data) => data is Map
      ? OrderTableStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'discountCash': _discountCash,
        'discountPercent': _discountPercent,
        'note': _note,
        'status': _status,
        'price': _price,
        'voucher_template_id': _voucherTemplateId?.toMap(),
        'id': _id,
        'discount_money': _discountMoney,
        'code': _code,
        'total_voucher': _totalVoucher,
        'total_order_detail': _totalOrderDetail,
        'description': _description,
        'agent_id': _agentId?.toMap(),
        'user_updated': _userUpdated,
        'date_created': _dateCreated,
        'user_created': _userCreated?.toMap(),
        'discount_type': _discountType,
        'discount_value': _discountValue,
        'final_price': _finalPrice,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'discountCash': serializeParam(
          _discountCash,
          ParamType.double,
        ),
        'discountPercent': serializeParam(
          _discountPercent,
          ParamType.double,
        ),
        'note': serializeParam(
          _note,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.int,
        ),
        'voucher_template_id': serializeParam(
          _voucherTemplateId,
          ParamType.DataStruct,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'discount_money': serializeParam(
          _discountMoney,
          ParamType.int,
        ),
        'code': serializeParam(
          _code,
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
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'agent_id': serializeParam(
          _agentId,
          ParamType.DataStruct,
        ),
        'user_updated': serializeParam(
          _userUpdated,
          ParamType.String,
        ),
        'date_created': serializeParam(
          _dateCreated,
          ParamType.String,
        ),
        'user_created': serializeParam(
          _userCreated,
          ParamType.DataStruct,
        ),
        'discount_type': serializeParam(
          _discountType,
          ParamType.String,
        ),
        'discount_value': serializeParam(
          _discountValue,
          ParamType.int,
        ),
        'final_price': serializeParam(
          _finalPrice,
          ParamType.int,
        ),
      }.withoutNulls;

  static OrderTableStruct fromSerializableMap(Map<String, dynamic> data) =>
      OrderTableStruct(
        discountCash: deserializeParam(
          data['discountCash'],
          ParamType.double,
          false,
        ),
        discountPercent: deserializeParam(
          data['discountPercent'],
          ParamType.double,
          false,
        ),
        note: deserializeParam(
          data['note'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.int,
          false,
        ),
        voucherTemplateId: deserializeStructParam(
          data['voucher_template_id'],
          ParamType.DataStruct,
          false,
          structBuilder: VoucherStruct.fromSerializableMap,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        discountMoney: deserializeParam(
          data['discount_money'],
          ParamType.int,
          false,
        ),
        code: deserializeParam(
          data['code'],
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
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        agentId: deserializeStructParam(
          data['agent_id'],
          ParamType.DataStruct,
          false,
          structBuilder: AgentStruct.fromSerializableMap,
        ),
        userUpdated: deserializeParam(
          data['user_updated'],
          ParamType.String,
          false,
        ),
        dateCreated: deserializeParam(
          data['date_created'],
          ParamType.String,
          false,
        ),
        userCreated: deserializeStructParam(
          data['user_created'],
          ParamType.DataStruct,
          false,
          structBuilder: UserStruct.fromSerializableMap,
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
        finalPrice: deserializeParam(
          data['final_price'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'OrderTableStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OrderTableStruct &&
        discountCash == other.discountCash &&
        discountPercent == other.discountPercent &&
        note == other.note &&
        status == other.status &&
        price == other.price &&
        voucherTemplateId == other.voucherTemplateId &&
        id == other.id &&
        discountMoney == other.discountMoney &&
        code == other.code &&
        totalVoucher == other.totalVoucher &&
        totalOrderDetail == other.totalOrderDetail &&
        description == other.description &&
        agentId == other.agentId &&
        userUpdated == other.userUpdated &&
        dateCreated == other.dateCreated &&
        userCreated == other.userCreated &&
        discountType == other.discountType &&
        discountValue == other.discountValue &&
        finalPrice == other.finalPrice;
  }

  @override
  int get hashCode => const ListEquality().hash([
        discountCash,
        discountPercent,
        note,
        status,
        price,
        voucherTemplateId,
        id,
        discountMoney,
        code,
        totalVoucher,
        totalOrderDetail,
        description,
        agentId,
        userUpdated,
        dateCreated,
        userCreated,
        discountType,
        discountValue,
        finalPrice
      ]);
}

OrderTableStruct createOrderTableStruct({
  double? discountCash,
  double? discountPercent,
  String? note,
  String? status,
  int? price,
  VoucherStruct? voucherTemplateId,
  String? id,
  int? discountMoney,
  String? code,
  int? totalVoucher,
  int? totalOrderDetail,
  String? description,
  AgentStruct? agentId,
  String? userUpdated,
  String? dateCreated,
  UserStruct? userCreated,
  String? discountType,
  int? discountValue,
  int? finalPrice,
}) =>
    OrderTableStruct(
      discountCash: discountCash,
      discountPercent: discountPercent,
      note: note,
      status: status,
      price: price,
      voucherTemplateId: voucherTemplateId ?? VoucherStruct(),
      id: id,
      discountMoney: discountMoney,
      code: code,
      totalVoucher: totalVoucher,
      totalOrderDetail: totalOrderDetail,
      description: description,
      agentId: agentId ?? AgentStruct(),
      userUpdated: userUpdated,
      dateCreated: dateCreated,
      userCreated: userCreated ?? UserStruct(),
      discountType: discountType,
      discountValue: discountValue,
      finalPrice: finalPrice,
    );
