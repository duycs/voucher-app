// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CustomerOrderDetailStruct extends BaseStruct {
  CustomerOrderDetailStruct({
    String? id,
    String? status,
    String? dateCreated,
    String? dateUpdated,
    UserStruct? userCreated,
    UserStruct? userUpdated,
    String? version,
    VoucherTemplateStruct? voucherTemplateId,
    String? discountType,
    int? discountValue,
    CustomerStruct? customerOrderId,
    int? retailPrice,
  })  : _id = id,
        _status = status,
        _dateCreated = dateCreated,
        _dateUpdated = dateUpdated,
        _userCreated = userCreated,
        _userUpdated = userUpdated,
        _version = version,
        _voucherTemplateId = voucherTemplateId,
        _discountType = discountType,
        _discountValue = discountValue,
        _customerOrderId = customerOrderId,
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

  // "voucher_template_id" field.
  VoucherTemplateStruct? _voucherTemplateId;
  VoucherTemplateStruct get voucherTemplateId =>
      _voucherTemplateId ?? VoucherTemplateStruct();
  set voucherTemplateId(VoucherTemplateStruct? val) => _voucherTemplateId = val;
  void updateVoucherTemplateId(Function(VoucherTemplateStruct) updateFn) =>
      updateFn(_voucherTemplateId ??= VoucherTemplateStruct());
  bool hasVoucherTemplateId() => _voucherTemplateId != null;

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

  // "customer_order_id" field.
  CustomerStruct? _customerOrderId;
  CustomerStruct get customerOrderId => _customerOrderId ?? CustomerStruct();
  set customerOrderId(CustomerStruct? val) => _customerOrderId = val;
  void updateCustomerOrderId(Function(CustomerStruct) updateFn) =>
      updateFn(_customerOrderId ??= CustomerStruct());
  bool hasCustomerOrderId() => _customerOrderId != null;

  // "retail_price" field.
  int? _retailPrice;
  int get retailPrice => _retailPrice ?? 0;
  set retailPrice(int? val) => _retailPrice = val;
  void incrementRetailPrice(int amount) => _retailPrice = retailPrice + amount;
  bool hasRetailPrice() => _retailPrice != null;

  static CustomerOrderDetailStruct fromMap(Map<String, dynamic> data) =>
      CustomerOrderDetailStruct(
        id: data['id'] as String?,
        status: data['status'] as String?,
        dateCreated: data['date_created'] as String?,
        dateUpdated: data['date_updated'] as String?,
        userCreated: UserStruct.maybeFromMap(data['user_created']),
        userUpdated: UserStruct.maybeFromMap(data['user_updated']),
        version: data['version'] as String?,
        voucherTemplateId:
            VoucherTemplateStruct.maybeFromMap(data['voucher_template_id']),
        discountType: data['discount_type'] as String?,
        discountValue: castToType<int>(data['discount_value']),
        customerOrderId: CustomerStruct.maybeFromMap(data['customer_order_id']),
        retailPrice: castToType<int>(data['retail_price']),
      );

  static CustomerOrderDetailStruct? maybeFromMap(dynamic data) => data is Map
      ? CustomerOrderDetailStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'status': _status,
        'date_created': _dateCreated,
        'date_updated': _dateUpdated,
        'user_created': _userCreated?.toMap(),
        'user_updated': _userUpdated?.toMap(),
        'version': _version,
        'voucher_template_id': _voucherTemplateId?.toMap(),
        'discount_type': _discountType,
        'discount_value': _discountValue,
        'customer_order_id': _customerOrderId?.toMap(),
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
        'voucher_template_id': serializeParam(
          _voucherTemplateId,
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
        'customer_order_id': serializeParam(
          _customerOrderId,
          ParamType.DataStruct,
        ),
        'retail_price': serializeParam(
          _retailPrice,
          ParamType.int,
        ),
      }.withoutNulls;

  static CustomerOrderDetailStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CustomerOrderDetailStruct(
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
        voucherTemplateId: deserializeStructParam(
          data['voucher_template_id'],
          ParamType.DataStruct,
          false,
          structBuilder: VoucherTemplateStruct.fromSerializableMap,
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
        customerOrderId: deserializeStructParam(
          data['customer_order_id'],
          ParamType.DataStruct,
          false,
          structBuilder: CustomerStruct.fromSerializableMap,
        ),
        retailPrice: deserializeParam(
          data['retail_price'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CustomerOrderDetailStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CustomerOrderDetailStruct &&
        id == other.id &&
        status == other.status &&
        dateCreated == other.dateCreated &&
        dateUpdated == other.dateUpdated &&
        userCreated == other.userCreated &&
        userUpdated == other.userUpdated &&
        version == other.version &&
        voucherTemplateId == other.voucherTemplateId &&
        discountType == other.discountType &&
        discountValue == other.discountValue &&
        customerOrderId == other.customerOrderId &&
        retailPrice == other.retailPrice;
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
        voucherTemplateId,
        discountType,
        discountValue,
        customerOrderId,
        retailPrice
      ]);
}

CustomerOrderDetailStruct createCustomerOrderDetailStruct({
  String? id,
  String? status,
  String? dateCreated,
  String? dateUpdated,
  UserStruct? userCreated,
  UserStruct? userUpdated,
  String? version,
  VoucherTemplateStruct? voucherTemplateId,
  String? discountType,
  int? discountValue,
  CustomerStruct? customerOrderId,
  int? retailPrice,
}) =>
    CustomerOrderDetailStruct(
      id: id,
      status: status,
      dateCreated: dateCreated,
      dateUpdated: dateUpdated,
      userCreated: userCreated ?? UserStruct(),
      userUpdated: userUpdated ?? UserStruct(),
      version: version,
      voucherTemplateId: voucherTemplateId ?? VoucherTemplateStruct(),
      discountType: discountType,
      discountValue: discountValue,
      customerOrderId: customerOrderId ?? CustomerStruct(),
      retailPrice: retailPrice,
    );
