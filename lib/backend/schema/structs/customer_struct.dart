// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CustomerStruct extends BaseStruct {
  CustomerStruct({
    String? id,
    String? status,
    UserStruct? userCreated,
    UserStruct? userUpdated,
    String? dateCreated,
    String? dateUpdated,
    String? name,
    String? email,
    String? phone,
    String? address,
    String? note,
    String? avatar,
    String? version,
    int? discountMoney,
    String? discountType,
    int? discountValue,
  })  : _id = id,
        _status = status,
        _userCreated = userCreated,
        _userUpdated = userUpdated,
        _dateCreated = dateCreated,
        _dateUpdated = dateUpdated,
        _name = name,
        _email = email,
        _phone = phone,
        _address = address,
        _note = note,
        _avatar = avatar,
        _version = version,
        _discountMoney = discountMoney,
        _discountType = discountType,
        _discountValue = discountValue;

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

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;
  bool hasPhone() => _phone != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;
  bool hasAddress() => _address != null;

  // "note" field.
  String? _note;
  String get note => _note ?? '';
  set note(String? val) => _note = val;
  bool hasNote() => _note != null;

  // "avatar" field.
  String? _avatar;
  String get avatar => _avatar ?? '';
  set avatar(String? val) => _avatar = val;
  bool hasAvatar() => _avatar != null;

  // "version" field.
  String? _version;
  String get version => _version ?? '';
  set version(String? val) => _version = val;
  bool hasVersion() => _version != null;

  // "discount_money" field.
  int? _discountMoney;
  int get discountMoney => _discountMoney ?? 0;
  set discountMoney(int? val) => _discountMoney = val;
  void incrementDiscountMoney(int amount) =>
      _discountMoney = discountMoney + amount;
  bool hasDiscountMoney() => _discountMoney != null;

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

  static CustomerStruct fromMap(Map<String, dynamic> data) => CustomerStruct(
        id: data['id'] as String?,
        status: data['status'] as String?,
        userCreated: UserStruct.maybeFromMap(data['user_created']),
        userUpdated: UserStruct.maybeFromMap(data['user_updated']),
        dateCreated: data['date_created'] as String?,
        dateUpdated: data['date_updated'] as String?,
        name: data['name'] as String?,
        email: data['email'] as String?,
        phone: data['phone'] as String?,
        address: data['address'] as String?,
        note: data['note'] as String?,
        avatar: data['avatar'] as String?,
        version: data['version'] as String?,
        discountMoney: castToType<int>(data['discount_money']),
        discountType: data['discount_type'] as String?,
        discountValue: castToType<int>(data['discount_value']),
      );

  static CustomerStruct? maybeFromMap(dynamic data) =>
      data is Map ? CustomerStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'status': _status,
        'user_created': _userCreated?.toMap(),
        'user_updated': _userUpdated?.toMap(),
        'date_created': _dateCreated,
        'date_updated': _dateUpdated,
        'name': _name,
        'email': _email,
        'phone': _phone,
        'address': _address,
        'note': _note,
        'avatar': _avatar,
        'version': _version,
        'discount_money': _discountMoney,
        'discount_type': _discountType,
        'discount_value': _discountValue,
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
        'user_created': serializeParam(
          _userCreated,
          ParamType.DataStruct,
        ),
        'user_updated': serializeParam(
          _userUpdated,
          ParamType.DataStruct,
        ),
        'date_created': serializeParam(
          _dateCreated,
          ParamType.String,
        ),
        'date_updated': serializeParam(
          _dateUpdated,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'note': serializeParam(
          _note,
          ParamType.String,
        ),
        'avatar': serializeParam(
          _avatar,
          ParamType.String,
        ),
        'version': serializeParam(
          _version,
          ParamType.String,
        ),
        'discount_money': serializeParam(
          _discountMoney,
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

  static CustomerStruct fromSerializableMap(Map<String, dynamic> data) =>
      CustomerStruct(
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
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        note: deserializeParam(
          data['note'],
          ParamType.String,
          false,
        ),
        avatar: deserializeParam(
          data['avatar'],
          ParamType.String,
          false,
        ),
        version: deserializeParam(
          data['version'],
          ParamType.String,
          false,
        ),
        discountMoney: deserializeParam(
          data['discount_money'],
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
  String toString() => 'CustomerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CustomerStruct &&
        id == other.id &&
        status == other.status &&
        userCreated == other.userCreated &&
        userUpdated == other.userUpdated &&
        dateCreated == other.dateCreated &&
        dateUpdated == other.dateUpdated &&
        name == other.name &&
        email == other.email &&
        phone == other.phone &&
        address == other.address &&
        note == other.note &&
        avatar == other.avatar &&
        version == other.version &&
        discountMoney == other.discountMoney &&
        discountType == other.discountType &&
        discountValue == other.discountValue;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        status,
        userCreated,
        userUpdated,
        dateCreated,
        dateUpdated,
        name,
        email,
        phone,
        address,
        note,
        avatar,
        version,
        discountMoney,
        discountType,
        discountValue
      ]);
}

CustomerStruct createCustomerStruct({
  String? id,
  String? status,
  UserStruct? userCreated,
  UserStruct? userUpdated,
  String? dateCreated,
  String? dateUpdated,
  String? name,
  String? email,
  String? phone,
  String? address,
  String? note,
  String? avatar,
  String? version,
  int? discountMoney,
  String? discountType,
  int? discountValue,
}) =>
    CustomerStruct(
      id: id,
      status: status,
      userCreated: userCreated ?? UserStruct(),
      userUpdated: userUpdated ?? UserStruct(),
      dateCreated: dateCreated,
      dateUpdated: dateUpdated,
      name: name,
      email: email,
      phone: phone,
      address: address,
      note: note,
      avatar: avatar,
      version: version,
      discountMoney: discountMoney,
      discountType: discountType,
      discountValue: discountValue,
    );
