// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderEditRequestStruct extends BaseStruct {
  OrderEditRequestStruct({
    CustomerStruct? customerId,
    String? discountType,
    int? discountValue,
    int? discountMoney,
  })  : _customerId = customerId,
        _discountType = discountType,
        _discountValue = discountValue,
        _discountMoney = discountMoney;

  // "customer_id" field.
  CustomerStruct? _customerId;
  CustomerStruct get customerId => _customerId ?? CustomerStruct();
  set customerId(CustomerStruct? val) => _customerId = val;
  void updateCustomerId(Function(CustomerStruct) updateFn) =>
      updateFn(_customerId ??= CustomerStruct());
  bool hasCustomerId() => _customerId != null;

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

  static OrderEditRequestStruct fromMap(Map<String, dynamic> data) =>
      OrderEditRequestStruct(
        customerId: CustomerStruct.maybeFromMap(data['customer_id']),
        discountType: data['discount_type'] as String?,
        discountValue: castToType<int>(data['discount_value']),
        discountMoney: castToType<int>(data['discount_money']),
      );

  static OrderEditRequestStruct? maybeFromMap(dynamic data) => data is Map
      ? OrderEditRequestStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'customer_id': _customerId?.toMap(),
        'discount_type': _discountType,
        'discount_value': _discountValue,
        'discount_money': _discountMoney,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'customer_id': serializeParam(
          _customerId,
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
        'discount_money': serializeParam(
          _discountMoney,
          ParamType.int,
        ),
      }.withoutNulls;

  static OrderEditRequestStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      OrderEditRequestStruct(
        customerId: deserializeStructParam(
          data['customer_id'],
          ParamType.DataStruct,
          false,
          structBuilder: CustomerStruct.fromSerializableMap,
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
      );

  @override
  String toString() => 'OrderEditRequestStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OrderEditRequestStruct &&
        customerId == other.customerId &&
        discountType == other.discountType &&
        discountValue == other.discountValue &&
        discountMoney == other.discountMoney;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([customerId, discountType, discountValue, discountMoney]);
}

OrderEditRequestStruct createOrderEditRequestStruct({
  CustomerStruct? customerId,
  String? discountType,
  int? discountValue,
  int? discountMoney,
}) =>
    OrderEditRequestStruct(
      customerId: customerId ?? CustomerStruct(),
      discountType: discountType,
      discountValue: discountValue,
      discountMoney: discountMoney,
    );
