// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PurchaseListDetailStruct extends BaseStruct {
  PurchaseListDetailStruct({
    double? subTotal,
    double? total,
    double? discountCash,
    double? discountPercent,
    String? note,
    String? agentOrderId,
    int? totalVoucher,
    String? status,
    VoucherStruct? voucherTemplateId,
    String? id,
    int? discountMoney,
    int? discountValue,
    String? discountType,
    int? price,
    int? finalPrice,
  })  : _subTotal = subTotal,
        _total = total,
        _discountCash = discountCash,
        _discountPercent = discountPercent,
        _note = note,
        _agentOrderId = agentOrderId,
        _totalVoucher = totalVoucher,
        _status = status,
        _voucherTemplateId = voucherTemplateId,
        _id = id,
        _discountMoney = discountMoney,
        _discountValue = discountValue,
        _discountType = discountType,
        _price = price,
        _finalPrice = finalPrice;

  // "subTotal" field.
  double? _subTotal;
  double get subTotal => _subTotal ?? 0.0;
  set subTotal(double? val) => _subTotal = val;
  void incrementSubTotal(double amount) => _subTotal = subTotal + amount;
  bool hasSubTotal() => _subTotal != null;

  // "total" field.
  double? _total;
  double get total => _total ?? 0.0;
  set total(double? val) => _total = val;
  void incrementTotal(double amount) => _total = total + amount;
  bool hasTotal() => _total != null;

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

  // "agent_order_id" field.
  String? _agentOrderId;
  String get agentOrderId => _agentOrderId ?? '';
  set agentOrderId(String? val) => _agentOrderId = val;
  bool hasAgentOrderId() => _agentOrderId != null;

  // "total_voucher" field.
  int? _totalVoucher;
  int get totalVoucher => _totalVoucher ?? 0;
  set totalVoucher(int? val) => _totalVoucher = val;
  void incrementTotalVoucher(int amount) =>
      _totalVoucher = totalVoucher + amount;
  bool hasTotalVoucher() => _totalVoucher != null;

  // "status" field.
  String? _status;
  String get status => _status ?? 'published';
  set status(String? val) => _status = val;
  bool hasStatus() => _status != null;

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

  // "discount_value" field.
  int? _discountValue;
  int get discountValue => _discountValue ?? 0;
  set discountValue(int? val) => _discountValue = val;
  void incrementDiscountValue(int amount) =>
      _discountValue = discountValue + amount;
  bool hasDiscountValue() => _discountValue != null;

  // "discount_type" field.
  String? _discountType;
  String get discountType => _discountType ?? '';
  set discountType(String? val) => _discountType = val;
  bool hasDiscountType() => _discountType != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  set price(int? val) => _price = val;
  void incrementPrice(int amount) => _price = price + amount;
  bool hasPrice() => _price != null;

  // "final_price" field.
  int? _finalPrice;
  int get finalPrice => _finalPrice ?? 0;
  set finalPrice(int? val) => _finalPrice = val;
  void incrementFinalPrice(int amount) => _finalPrice = finalPrice + amount;
  bool hasFinalPrice() => _finalPrice != null;

  static PurchaseListDetailStruct fromMap(Map<String, dynamic> data) =>
      PurchaseListDetailStruct(
        subTotal: castToType<double>(data['subTotal']),
        total: castToType<double>(data['total']),
        discountCash: castToType<double>(data['discountCash']),
        discountPercent: castToType<double>(data['discountPercent']),
        note: data['note'] as String?,
        agentOrderId: data['agent_order_id'] as String?,
        totalVoucher: castToType<int>(data['total_voucher']),
        status: data['status'] as String?,
        voucherTemplateId:
            VoucherStruct.maybeFromMap(data['voucher_template_id']),
        id: data['id'] as String?,
        discountMoney: castToType<int>(data['discount_money']),
        discountValue: castToType<int>(data['discount_value']),
        discountType: data['discount_type'] as String?,
        price: castToType<int>(data['price']),
        finalPrice: castToType<int>(data['final_price']),
      );

  static PurchaseListDetailStruct? maybeFromMap(dynamic data) => data is Map
      ? PurchaseListDetailStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'subTotal': _subTotal,
        'total': _total,
        'discountCash': _discountCash,
        'discountPercent': _discountPercent,
        'note': _note,
        'agent_order_id': _agentOrderId,
        'total_voucher': _totalVoucher,
        'status': _status,
        'voucher_template_id': _voucherTemplateId?.toMap(),
        'id': _id,
        'discount_money': _discountMoney,
        'discount_value': _discountValue,
        'discount_type': _discountType,
        'price': _price,
        'final_price': _finalPrice,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'subTotal': serializeParam(
          _subTotal,
          ParamType.double,
        ),
        'total': serializeParam(
          _total,
          ParamType.double,
        ),
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
        'agent_order_id': serializeParam(
          _agentOrderId,
          ParamType.String,
        ),
        'total_voucher': serializeParam(
          _totalVoucher,
          ParamType.int,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
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
        'discount_value': serializeParam(
          _discountValue,
          ParamType.int,
        ),
        'discount_type': serializeParam(
          _discountType,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.int,
        ),
        'final_price': serializeParam(
          _finalPrice,
          ParamType.int,
        ),
      }.withoutNulls;

  static PurchaseListDetailStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PurchaseListDetailStruct(
        subTotal: deserializeParam(
          data['subTotal'],
          ParamType.double,
          false,
        ),
        total: deserializeParam(
          data['total'],
          ParamType.double,
          false,
        ),
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
        agentOrderId: deserializeParam(
          data['agent_order_id'],
          ParamType.String,
          false,
        ),
        totalVoucher: deserializeParam(
          data['total_voucher'],
          ParamType.int,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
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
        discountValue: deserializeParam(
          data['discount_value'],
          ParamType.int,
          false,
        ),
        discountType: deserializeParam(
          data['discount_type'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
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
  String toString() => 'PurchaseListDetailStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PurchaseListDetailStruct &&
        subTotal == other.subTotal &&
        total == other.total &&
        discountCash == other.discountCash &&
        discountPercent == other.discountPercent &&
        note == other.note &&
        agentOrderId == other.agentOrderId &&
        totalVoucher == other.totalVoucher &&
        status == other.status &&
        voucherTemplateId == other.voucherTemplateId &&
        id == other.id &&
        discountMoney == other.discountMoney &&
        discountValue == other.discountValue &&
        discountType == other.discountType &&
        price == other.price &&
        finalPrice == other.finalPrice;
  }

  @override
  int get hashCode => const ListEquality().hash([
        subTotal,
        total,
        discountCash,
        discountPercent,
        note,
        agentOrderId,
        totalVoucher,
        status,
        voucherTemplateId,
        id,
        discountMoney,
        discountValue,
        discountType,
        price,
        finalPrice
      ]);
}

PurchaseListDetailStruct createPurchaseListDetailStruct({
  double? subTotal,
  double? total,
  double? discountCash,
  double? discountPercent,
  String? note,
  String? agentOrderId,
  int? totalVoucher,
  String? status,
  VoucherStruct? voucherTemplateId,
  String? id,
  int? discountMoney,
  int? discountValue,
  String? discountType,
  int? price,
  int? finalPrice,
}) =>
    PurchaseListDetailStruct(
      subTotal: subTotal,
      total: total,
      discountCash: discountCash,
      discountPercent: discountPercent,
      note: note,
      agentOrderId: agentOrderId,
      totalVoucher: totalVoucher,
      status: status,
      voucherTemplateId: voucherTemplateId ?? VoucherStruct(),
      id: id,
      discountMoney: discountMoney,
      discountValue: discountValue,
      discountType: discountType,
      price: price,
      finalPrice: finalPrice,
    );
