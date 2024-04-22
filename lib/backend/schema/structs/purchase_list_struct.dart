// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PurchaseListStruct extends BaseStruct {
  PurchaseListStruct({
    int? price,
    int? totalVoucher,
    String? status,
    String? code,
    String? dateCreated,
    int? discountMoney,
    int? taxMoney,
    int? finalPrice,
    String? id,
    ProviderStruct? providerId,
  })  : _price = price,
        _totalVoucher = totalVoucher,
        _status = status,
        _code = code,
        _dateCreated = dateCreated,
        _discountMoney = discountMoney,
        _taxMoney = taxMoney,
        _finalPrice = finalPrice,
        _id = id,
        _providerId = providerId;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  set price(int? val) => _price = val;
  void incrementPrice(int amount) => _price = price + amount;
  bool hasPrice() => _price != null;

  // "total_voucher" field.
  int? _totalVoucher;
  int get totalVoucher => _totalVoucher ?? 0;
  set totalVoucher(int? val) => _totalVoucher = val;
  void incrementTotalVoucher(int amount) =>
      _totalVoucher = totalVoucher + amount;
  bool hasTotalVoucher() => _totalVoucher != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;
  bool hasStatus() => _status != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;
  bool hasCode() => _code != null;

  // "date_created" field.
  String? _dateCreated;
  String get dateCreated => _dateCreated ?? '';
  set dateCreated(String? val) => _dateCreated = val;
  bool hasDateCreated() => _dateCreated != null;

  // "discount_money" field.
  int? _discountMoney;
  int get discountMoney => _discountMoney ?? 0;
  set discountMoney(int? val) => _discountMoney = val;
  void incrementDiscountMoney(int amount) =>
      _discountMoney = discountMoney + amount;
  bool hasDiscountMoney() => _discountMoney != null;

  // "tax_money" field.
  int? _taxMoney;
  int get taxMoney => _taxMoney ?? 0;
  set taxMoney(int? val) => _taxMoney = val;
  void incrementTaxMoney(int amount) => _taxMoney = taxMoney + amount;
  bool hasTaxMoney() => _taxMoney != null;

  // "final_price" field.
  int? _finalPrice;
  int get finalPrice => _finalPrice ?? 0;
  set finalPrice(int? val) => _finalPrice = val;
  void incrementFinalPrice(int amount) => _finalPrice = finalPrice + amount;
  bool hasFinalPrice() => _finalPrice != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "provider_id" field.
  ProviderStruct? _providerId;
  ProviderStruct get providerId => _providerId ?? ProviderStruct();
  set providerId(ProviderStruct? val) => _providerId = val;
  void updateProviderId(Function(ProviderStruct) updateFn) =>
      updateFn(_providerId ??= ProviderStruct());
  bool hasProviderId() => _providerId != null;

  static PurchaseListStruct fromMap(Map<String, dynamic> data) =>
      PurchaseListStruct(
        price: castToType<int>(data['price']),
        totalVoucher: castToType<int>(data['total_voucher']),
        status: data['status'] as String?,
        code: data['code'] as String?,
        dateCreated: data['date_created'] as String?,
        discountMoney: castToType<int>(data['discount_money']),
        taxMoney: castToType<int>(data['tax_money']),
        finalPrice: castToType<int>(data['final_price']),
        id: data['id'] as String?,
        providerId: ProviderStruct.maybeFromMap(data['provider_id']),
      );

  static PurchaseListStruct? maybeFromMap(dynamic data) => data is Map
      ? PurchaseListStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'price': _price,
        'total_voucher': _totalVoucher,
        'status': _status,
        'code': _code,
        'date_created': _dateCreated,
        'discount_money': _discountMoney,
        'tax_money': _taxMoney,
        'final_price': _finalPrice,
        'id': _id,
        'provider_id': _providerId?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'price': serializeParam(
          _price,
          ParamType.int,
        ),
        'total_voucher': serializeParam(
          _totalVoucher,
          ParamType.int,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
        'date_created': serializeParam(
          _dateCreated,
          ParamType.String,
        ),
        'discount_money': serializeParam(
          _discountMoney,
          ParamType.int,
        ),
        'tax_money': serializeParam(
          _taxMoney,
          ParamType.int,
        ),
        'final_price': serializeParam(
          _finalPrice,
          ParamType.int,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'provider_id': serializeParam(
          _providerId,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static PurchaseListStruct fromSerializableMap(Map<String, dynamic> data) =>
      PurchaseListStruct(
        price: deserializeParam(
          data['price'],
          ParamType.int,
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
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
        dateCreated: deserializeParam(
          data['date_created'],
          ParamType.String,
          false,
        ),
        discountMoney: deserializeParam(
          data['discount_money'],
          ParamType.int,
          false,
        ),
        taxMoney: deserializeParam(
          data['tax_money'],
          ParamType.int,
          false,
        ),
        finalPrice: deserializeParam(
          data['final_price'],
          ParamType.int,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        providerId: deserializeStructParam(
          data['provider_id'],
          ParamType.DataStruct,
          false,
          structBuilder: ProviderStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'PurchaseListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PurchaseListStruct &&
        price == other.price &&
        totalVoucher == other.totalVoucher &&
        status == other.status &&
        code == other.code &&
        dateCreated == other.dateCreated &&
        discountMoney == other.discountMoney &&
        taxMoney == other.taxMoney &&
        finalPrice == other.finalPrice &&
        id == other.id &&
        providerId == other.providerId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        price,
        totalVoucher,
        status,
        code,
        dateCreated,
        discountMoney,
        taxMoney,
        finalPrice,
        id,
        providerId
      ]);
}

PurchaseListStruct createPurchaseListStruct({
  int? price,
  int? totalVoucher,
  String? status,
  String? code,
  String? dateCreated,
  int? discountMoney,
  int? taxMoney,
  int? finalPrice,
  String? id,
  ProviderStruct? providerId,
}) =>
    PurchaseListStruct(
      price: price,
      totalVoucher: totalVoucher,
      status: status,
      code: code,
      dateCreated: dateCreated,
      discountMoney: discountMoney,
      taxMoney: taxMoney,
      finalPrice: finalPrice,
      id: id,
      providerId: providerId ?? ProviderStruct(),
    );
