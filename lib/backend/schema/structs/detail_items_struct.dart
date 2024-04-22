// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DetailItemsStruct extends BaseStruct {
  DetailItemsStruct({
    String? id,
    String? status,
    int? totalVoucher,
    String? discountType,
    int? discountValue,
    int? discountMoney,
    String? customerOrderId,
    int? price,
    VoucherTemplateStruct? voucherTemplateId,
    int? retailPrice,
  })  : _id = id,
        _status = status,
        _totalVoucher = totalVoucher,
        _discountType = discountType,
        _discountValue = discountValue,
        _discountMoney = discountMoney,
        _customerOrderId = customerOrderId,
        _price = price,
        _voucherTemplateId = voucherTemplateId,
        _retailPrice = retailPrice;

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

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  set price(int? val) => _price = val;
  void incrementPrice(int amount) => _price = price + amount;
  bool hasPrice() => _price != null;

  // "voucher_template_id" field.
  VoucherTemplateStruct? _voucherTemplateId;
  VoucherTemplateStruct get voucherTemplateId =>
      _voucherTemplateId ?? VoucherTemplateStruct();
  set voucherTemplateId(VoucherTemplateStruct? val) => _voucherTemplateId = val;
  void updateVoucherTemplateId(Function(VoucherTemplateStruct) updateFn) =>
      updateFn(_voucherTemplateId ??= VoucherTemplateStruct());
  bool hasVoucherTemplateId() => _voucherTemplateId != null;

  // "retail_price" field.
  int? _retailPrice;
  int get retailPrice => _retailPrice ?? 0;
  set retailPrice(int? val) => _retailPrice = val;
  void incrementRetailPrice(int amount) => _retailPrice = retailPrice + amount;
  bool hasRetailPrice() => _retailPrice != null;

  static DetailItemsStruct fromMap(Map<String, dynamic> data) =>
      DetailItemsStruct(
        id: data['id'] as String?,
        status: data['status'] as String?,
        totalVoucher: castToType<int>(data['total_voucher']),
        discountType: data['discount_type'] as String?,
        discountValue: castToType<int>(data['discount_value']),
        discountMoney: castToType<int>(data['discount_money']),
        customerOrderId: data['customer_order_id'] as String?,
        price: castToType<int>(data['price']),
        voucherTemplateId:
            VoucherTemplateStruct.maybeFromMap(data['voucher_template_id']),
        retailPrice: castToType<int>(data['retail_price']),
      );

  static DetailItemsStruct? maybeFromMap(dynamic data) => data is Map
      ? DetailItemsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'status': _status,
        'total_voucher': _totalVoucher,
        'discount_type': _discountType,
        'discount_value': _discountValue,
        'discount_money': _discountMoney,
        'customer_order_id': _customerOrderId,
        'price': _price,
        'voucher_template_id': _voucherTemplateId?.toMap(),
        'retail_price': _retailPrice,
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
        'price': serializeParam(
          _price,
          ParamType.int,
        ),
        'voucher_template_id': serializeParam(
          _voucherTemplateId,
          ParamType.DataStruct,
        ),
        'retail_price': serializeParam(
          _retailPrice,
          ParamType.int,
        ),
      }.withoutNulls;

  static DetailItemsStruct fromSerializableMap(Map<String, dynamic> data) =>
      DetailItemsStruct(
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
        price: deserializeParam(
          data['price'],
          ParamType.int,
          false,
        ),
        voucherTemplateId: deserializeStructParam(
          data['voucher_template_id'],
          ParamType.DataStruct,
          false,
          structBuilder: VoucherTemplateStruct.fromSerializableMap,
        ),
        retailPrice: deserializeParam(
          data['retail_price'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'DetailItemsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DetailItemsStruct &&
        id == other.id &&
        status == other.status &&
        totalVoucher == other.totalVoucher &&
        discountType == other.discountType &&
        discountValue == other.discountValue &&
        discountMoney == other.discountMoney &&
        customerOrderId == other.customerOrderId &&
        price == other.price &&
        voucherTemplateId == other.voucherTemplateId &&
        retailPrice == other.retailPrice;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        status,
        totalVoucher,
        discountType,
        discountValue,
        discountMoney,
        customerOrderId,
        price,
        voucherTemplateId,
        retailPrice
      ]);
}

DetailItemsStruct createDetailItemsStruct({
  String? id,
  String? status,
  int? totalVoucher,
  String? discountType,
  int? discountValue,
  int? discountMoney,
  String? customerOrderId,
  int? price,
  VoucherTemplateStruct? voucherTemplateId,
  int? retailPrice,
}) =>
    DetailItemsStruct(
      id: id,
      status: status,
      totalVoucher: totalVoucher,
      discountType: discountType,
      discountValue: discountValue,
      discountMoney: discountMoney,
      customerOrderId: customerOrderId,
      price: price,
      voucherTemplateId: voucherTemplateId ?? VoucherTemplateStruct(),
      retailPrice: retailPrice,
    );
