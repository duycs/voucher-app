// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VoucherTemplateStruct extends BaseStruct {
  VoucherTemplateStruct({
    String? id,
    String? status,
    String? dateCreated,
    String? dateUpdated,
    UserStruct? userCreated,
    UserStruct? userUpdated,
    String? version,
    String? title,
    String? description,
    String? note,
    String? dateStart,
    String? dateEnd,
    int? limit,
    int? totalOrdered,
    int? totalRemain,
    String? avatar,
    int? price,
    String? code,
    int? retailPrice,
    VoucherStruct? voucherTemplateId,
  })  : _id = id,
        _status = status,
        _dateCreated = dateCreated,
        _dateUpdated = dateUpdated,
        _userCreated = userCreated,
        _userUpdated = userUpdated,
        _version = version,
        _title = title,
        _description = description,
        _note = note,
        _dateStart = dateStart,
        _dateEnd = dateEnd,
        _limit = limit,
        _totalOrdered = totalOrdered,
        _totalRemain = totalRemain,
        _avatar = avatar,
        _price = price,
        _code = code,
        _retailPrice = retailPrice,
        _voucherTemplateId = voucherTemplateId;

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

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  // "note" field.
  String? _note;
  String get note => _note ?? '';
  set note(String? val) => _note = val;
  bool hasNote() => _note != null;

  // "date_start" field.
  String? _dateStart;
  String get dateStart => _dateStart ?? '';
  set dateStart(String? val) => _dateStart = val;
  bool hasDateStart() => _dateStart != null;

  // "date_end" field.
  String? _dateEnd;
  String get dateEnd => _dateEnd ?? '';
  set dateEnd(String? val) => _dateEnd = val;
  bool hasDateEnd() => _dateEnd != null;

  // "limit" field.
  int? _limit;
  int get limit => _limit ?? 0;
  set limit(int? val) => _limit = val;
  void incrementLimit(int amount) => _limit = limit + amount;
  bool hasLimit() => _limit != null;

  // "total_ordered" field.
  int? _totalOrdered;
  int get totalOrdered => _totalOrdered ?? 0;
  set totalOrdered(int? val) => _totalOrdered = val;
  void incrementTotalOrdered(int amount) =>
      _totalOrdered = totalOrdered + amount;
  bool hasTotalOrdered() => _totalOrdered != null;

  // "total_remain" field.
  int? _totalRemain;
  int get totalRemain => _totalRemain ?? 0;
  set totalRemain(int? val) => _totalRemain = val;
  void incrementTotalRemain(int amount) => _totalRemain = totalRemain + amount;
  bool hasTotalRemain() => _totalRemain != null;

  // "avatar" field.
  String? _avatar;
  String get avatar => _avatar ?? '';
  set avatar(String? val) => _avatar = val;
  bool hasAvatar() => _avatar != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  set price(int? val) => _price = val;
  void incrementPrice(int amount) => _price = price + amount;
  bool hasPrice() => _price != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;
  bool hasCode() => _code != null;

  // "retail_price" field.
  int? _retailPrice;
  int get retailPrice => _retailPrice ?? 0;
  set retailPrice(int? val) => _retailPrice = val;
  void incrementRetailPrice(int amount) => _retailPrice = retailPrice + amount;
  bool hasRetailPrice() => _retailPrice != null;

  // "voucher_template_id" field.
  VoucherStruct? _voucherTemplateId;
  VoucherStruct get voucherTemplateId => _voucherTemplateId ?? VoucherStruct();
  set voucherTemplateId(VoucherStruct? val) => _voucherTemplateId = val;
  void updateVoucherTemplateId(Function(VoucherStruct) updateFn) =>
      updateFn(_voucherTemplateId ??= VoucherStruct());
  bool hasVoucherTemplateId() => _voucherTemplateId != null;

  static VoucherTemplateStruct fromMap(Map<String, dynamic> data) =>
      VoucherTemplateStruct(
        id: data['id'] as String?,
        status: data['status'] as String?,
        dateCreated: data['date_created'] as String?,
        dateUpdated: data['date_updated'] as String?,
        userCreated: UserStruct.maybeFromMap(data['user_created']),
        userUpdated: UserStruct.maybeFromMap(data['user_updated']),
        version: data['version'] as String?,
        title: data['title'] as String?,
        description: data['description'] as String?,
        note: data['note'] as String?,
        dateStart: data['date_start'] as String?,
        dateEnd: data['date_end'] as String?,
        limit: castToType<int>(data['limit']),
        totalOrdered: castToType<int>(data['total_ordered']),
        totalRemain: castToType<int>(data['total_remain']),
        avatar: data['avatar'] as String?,
        price: castToType<int>(data['price']),
        code: data['code'] as String?,
        retailPrice: castToType<int>(data['retail_price']),
        voucherTemplateId:
            VoucherStruct.maybeFromMap(data['voucher_template_id']),
      );

  static VoucherTemplateStruct? maybeFromMap(dynamic data) => data is Map
      ? VoucherTemplateStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'status': _status,
        'date_created': _dateCreated,
        'date_updated': _dateUpdated,
        'user_created': _userCreated?.toMap(),
        'user_updated': _userUpdated?.toMap(),
        'version': _version,
        'title': _title,
        'description': _description,
        'note': _note,
        'date_start': _dateStart,
        'date_end': _dateEnd,
        'limit': _limit,
        'total_ordered': _totalOrdered,
        'total_remain': _totalRemain,
        'avatar': _avatar,
        'price': _price,
        'code': _code,
        'retail_price': _retailPrice,
        'voucher_template_id': _voucherTemplateId?.toMap(),
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
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'note': serializeParam(
          _note,
          ParamType.String,
        ),
        'date_start': serializeParam(
          _dateStart,
          ParamType.String,
        ),
        'date_end': serializeParam(
          _dateEnd,
          ParamType.String,
        ),
        'limit': serializeParam(
          _limit,
          ParamType.int,
        ),
        'total_ordered': serializeParam(
          _totalOrdered,
          ParamType.int,
        ),
        'total_remain': serializeParam(
          _totalRemain,
          ParamType.int,
        ),
        'avatar': serializeParam(
          _avatar,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.int,
        ),
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
        'retail_price': serializeParam(
          _retailPrice,
          ParamType.int,
        ),
        'voucher_template_id': serializeParam(
          _voucherTemplateId,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static VoucherTemplateStruct fromSerializableMap(Map<String, dynamic> data) =>
      VoucherTemplateStruct(
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
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        note: deserializeParam(
          data['note'],
          ParamType.String,
          false,
        ),
        dateStart: deserializeParam(
          data['date_start'],
          ParamType.String,
          false,
        ),
        dateEnd: deserializeParam(
          data['date_end'],
          ParamType.String,
          false,
        ),
        limit: deserializeParam(
          data['limit'],
          ParamType.int,
          false,
        ),
        totalOrdered: deserializeParam(
          data['total_ordered'],
          ParamType.int,
          false,
        ),
        totalRemain: deserializeParam(
          data['total_remain'],
          ParamType.int,
          false,
        ),
        avatar: deserializeParam(
          data['avatar'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.int,
          false,
        ),
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
        retailPrice: deserializeParam(
          data['retail_price'],
          ParamType.int,
          false,
        ),
        voucherTemplateId: deserializeStructParam(
          data['voucher_template_id'],
          ParamType.DataStruct,
          false,
          structBuilder: VoucherStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'VoucherTemplateStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VoucherTemplateStruct &&
        id == other.id &&
        status == other.status &&
        dateCreated == other.dateCreated &&
        dateUpdated == other.dateUpdated &&
        userCreated == other.userCreated &&
        userUpdated == other.userUpdated &&
        version == other.version &&
        title == other.title &&
        description == other.description &&
        note == other.note &&
        dateStart == other.dateStart &&
        dateEnd == other.dateEnd &&
        limit == other.limit &&
        totalOrdered == other.totalOrdered &&
        totalRemain == other.totalRemain &&
        avatar == other.avatar &&
        price == other.price &&
        code == other.code &&
        retailPrice == other.retailPrice &&
        voucherTemplateId == other.voucherTemplateId;
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
        title,
        description,
        note,
        dateStart,
        dateEnd,
        limit,
        totalOrdered,
        totalRemain,
        avatar,
        price,
        code,
        retailPrice,
        voucherTemplateId
      ]);
}

VoucherTemplateStruct createVoucherTemplateStruct({
  String? id,
  String? status,
  String? dateCreated,
  String? dateUpdated,
  UserStruct? userCreated,
  UserStruct? userUpdated,
  String? version,
  String? title,
  String? description,
  String? note,
  String? dateStart,
  String? dateEnd,
  int? limit,
  int? totalOrdered,
  int? totalRemain,
  String? avatar,
  int? price,
  String? code,
  int? retailPrice,
  VoucherStruct? voucherTemplateId,
}) =>
    VoucherTemplateStruct(
      id: id,
      status: status,
      dateCreated: dateCreated,
      dateUpdated: dateUpdated,
      userCreated: userCreated ?? UserStruct(),
      userUpdated: userUpdated ?? UserStruct(),
      version: version,
      title: title,
      description: description,
      note: note,
      dateStart: dateStart,
      dateEnd: dateEnd,
      limit: limit,
      totalOrdered: totalOrdered,
      totalRemain: totalRemain,
      avatar: avatar,
      price: price,
      code: code,
      retailPrice: retailPrice,
      voucherTemplateId: voucherTemplateId ?? VoucherStruct(),
    );
