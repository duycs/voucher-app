// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CustomerOrderDetailRequestStruct extends BaseStruct {
  CustomerOrderDetailRequestStruct({
    String? voucherTemplateId,
    int? totalVoucher,
    int? retailPrice,
    String? discountType,
    int? discountValue,
  })  : _voucherTemplateId = voucherTemplateId,
        _totalVoucher = totalVoucher,
        _retailPrice = retailPrice,
        _discountType = discountType,
        _discountValue = discountValue;

  // "voucher_template_id" field.
  String? _voucherTemplateId;
  String get voucherTemplateId => _voucherTemplateId ?? '';
  set voucherTemplateId(String? val) => _voucherTemplateId = val;
  bool hasVoucherTemplateId() => _voucherTemplateId != null;

  // "total_voucher" field.
  int? _totalVoucher;
  int get totalVoucher => _totalVoucher ?? 0;
  set totalVoucher(int? val) => _totalVoucher = val;
  void incrementTotalVoucher(int amount) =>
      _totalVoucher = totalVoucher + amount;
  bool hasTotalVoucher() => _totalVoucher != null;

  // "retail_price" field.
  int? _retailPrice;
  int get retailPrice => _retailPrice ?? 0;
  set retailPrice(int? val) => _retailPrice = val;
  void incrementRetailPrice(int amount) => _retailPrice = retailPrice + amount;
  bool hasRetailPrice() => _retailPrice != null;

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

  static CustomerOrderDetailRequestStruct fromMap(Map<String, dynamic> data) =>
      CustomerOrderDetailRequestStruct(
        voucherTemplateId: data['voucher_template_id'] as String?,
        totalVoucher: castToType<int>(data['total_voucher']),
        retailPrice: castToType<int>(data['retail_price']),
        discountType: data['discount_type'] as String?,
        discountValue: castToType<int>(data['discount_value']),
      );

  static CustomerOrderDetailRequestStruct? maybeFromMap(dynamic data) => data
          is Map
      ? CustomerOrderDetailRequestStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'voucher_template_id': _voucherTemplateId,
        'total_voucher': _totalVoucher,
        'retail_price': _retailPrice,
        'discount_type': _discountType,
        'discount_value': _discountValue,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'voucher_template_id': serializeParam(
          _voucherTemplateId,
          ParamType.String,
        ),
        'total_voucher': serializeParam(
          _totalVoucher,
          ParamType.int,
        ),
        'retail_price': serializeParam(
          _retailPrice,
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
      }.withoutNulls;

  static CustomerOrderDetailRequestStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CustomerOrderDetailRequestStruct(
        voucherTemplateId: deserializeParam(
          data['voucher_template_id'],
          ParamType.String,
          false,
        ),
        totalVoucher: deserializeParam(
          data['total_voucher'],
          ParamType.int,
          false,
        ),
        retailPrice: deserializeParam(
          data['retail_price'],
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
      );

  @override
  String toString() => 'CustomerOrderDetailRequestStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CustomerOrderDetailRequestStruct &&
        voucherTemplateId == other.voucherTemplateId &&
        totalVoucher == other.totalVoucher &&
        retailPrice == other.retailPrice &&
        discountType == other.discountType &&
        discountValue == other.discountValue;
  }

  @override
  int get hashCode => const ListEquality().hash([
        voucherTemplateId,
        totalVoucher,
        retailPrice,
        discountType,
        discountValue
      ]);
}

CustomerOrderDetailRequestStruct createCustomerOrderDetailRequestStruct({
  String? voucherTemplateId,
  int? totalVoucher,
  int? retailPrice,
  String? discountType,
  int? discountValue,
}) =>
    CustomerOrderDetailRequestStruct(
      voucherTemplateId: voucherTemplateId,
      totalVoucher: totalVoucher,
      retailPrice: retailPrice,
      discountType: discountType,
      discountValue: discountValue,
    );
