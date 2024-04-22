// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VoucherStruct extends BaseStruct {
  VoucherStruct({
    String? id,
    String? status,
    String? dateCreated,
    String? dateUpdated,
    String? dateStart,
    String? dateEnd,
    String? code,
    String? price,
    String? title,
    String? description,
    String? note,
    String? version,
    UserStruct? userCreated,
    UserStruct? userUpdated,
    AgentStruct? agentId,
    ProviderStruct? providerId,
    CustomerStruct? customerId,
    VoucherTemplateStruct? voucherTemplateId,
    CustomerOrderStruct? customerOrderId,
    AgentOrderStruct? agentOrderId,
    CustomerOrderDetailStruct? customerOrderDetailId,
    String? qrCodeImageUrl,
    String? avatar,
    String? dateCheckin,
    int? totalVoucher,
    int? retailPrice,
  })  : _id = id,
        _status = status,
        _dateCreated = dateCreated,
        _dateUpdated = dateUpdated,
        _dateStart = dateStart,
        _dateEnd = dateEnd,
        _code = code,
        _price = price,
        _title = title,
        _description = description,
        _note = note,
        _version = version,
        _userCreated = userCreated,
        _userUpdated = userUpdated,
        _agentId = agentId,
        _providerId = providerId,
        _customerId = customerId,
        _voucherTemplateId = voucherTemplateId,
        _customerOrderId = customerOrderId,
        _agentOrderId = agentOrderId,
        _customerOrderDetailId = customerOrderDetailId,
        _qrCodeImageUrl = qrCodeImageUrl,
        _avatar = avatar,
        _dateCheckin = dateCheckin,
        _totalVoucher = totalVoucher,
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

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;
  bool hasCode() => _code != null;

  // "price" field.
  String? _price;
  String get price => _price ?? '';
  set price(String? val) => _price = val;
  bool hasPrice() => _price != null;

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

  // "version" field.
  String? _version;
  String get version => _version ?? '';
  set version(String? val) => _version = val;
  bool hasVersion() => _version != null;

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

  // "agent_id" field.
  AgentStruct? _agentId;
  AgentStruct get agentId => _agentId ?? AgentStruct();
  set agentId(AgentStruct? val) => _agentId = val;
  void updateAgentId(Function(AgentStruct) updateFn) =>
      updateFn(_agentId ??= AgentStruct());
  bool hasAgentId() => _agentId != null;

  // "provider_id" field.
  ProviderStruct? _providerId;
  ProviderStruct get providerId => _providerId ?? ProviderStruct();
  set providerId(ProviderStruct? val) => _providerId = val;
  void updateProviderId(Function(ProviderStruct) updateFn) =>
      updateFn(_providerId ??= ProviderStruct());
  bool hasProviderId() => _providerId != null;

  // "customer_id" field.
  CustomerStruct? _customerId;
  CustomerStruct get customerId => _customerId ?? CustomerStruct();
  set customerId(CustomerStruct? val) => _customerId = val;
  void updateCustomerId(Function(CustomerStruct) updateFn) =>
      updateFn(_customerId ??= CustomerStruct());
  bool hasCustomerId() => _customerId != null;

  // "voucher_template_id" field.
  VoucherTemplateStruct? _voucherTemplateId;
  VoucherTemplateStruct get voucherTemplateId =>
      _voucherTemplateId ?? VoucherTemplateStruct();
  set voucherTemplateId(VoucherTemplateStruct? val) => _voucherTemplateId = val;
  void updateVoucherTemplateId(Function(VoucherTemplateStruct) updateFn) =>
      updateFn(_voucherTemplateId ??= VoucherTemplateStruct());
  bool hasVoucherTemplateId() => _voucherTemplateId != null;

  // "customer_order_id" field.
  CustomerOrderStruct? _customerOrderId;
  CustomerOrderStruct get customerOrderId =>
      _customerOrderId ?? CustomerOrderStruct();
  set customerOrderId(CustomerOrderStruct? val) => _customerOrderId = val;
  void updateCustomerOrderId(Function(CustomerOrderStruct) updateFn) =>
      updateFn(_customerOrderId ??= CustomerOrderStruct());
  bool hasCustomerOrderId() => _customerOrderId != null;

  // "agent_order_id" field.
  AgentOrderStruct? _agentOrderId;
  AgentOrderStruct get agentOrderId => _agentOrderId ?? AgentOrderStruct();
  set agentOrderId(AgentOrderStruct? val) => _agentOrderId = val;
  void updateAgentOrderId(Function(AgentOrderStruct) updateFn) =>
      updateFn(_agentOrderId ??= AgentOrderStruct());
  bool hasAgentOrderId() => _agentOrderId != null;

  // "customer_order_detail_id" field.
  CustomerOrderDetailStruct? _customerOrderDetailId;
  CustomerOrderDetailStruct get customerOrderDetailId =>
      _customerOrderDetailId ?? CustomerOrderDetailStruct();
  set customerOrderDetailId(CustomerOrderDetailStruct? val) =>
      _customerOrderDetailId = val;
  void updateCustomerOrderDetailId(
          Function(CustomerOrderDetailStruct) updateFn) =>
      updateFn(_customerOrderDetailId ??= CustomerOrderDetailStruct());
  bool hasCustomerOrderDetailId() => _customerOrderDetailId != null;

  // "qr_code_image_url" field.
  String? _qrCodeImageUrl;
  String get qrCodeImageUrl => _qrCodeImageUrl ?? '';
  set qrCodeImageUrl(String? val) => _qrCodeImageUrl = val;
  bool hasQrCodeImageUrl() => _qrCodeImageUrl != null;

  // "avatar" field.
  String? _avatar;
  String get avatar => _avatar ?? '';
  set avatar(String? val) => _avatar = val;
  bool hasAvatar() => _avatar != null;

  // "date_checkin" field.
  String? _dateCheckin;
  String get dateCheckin => _dateCheckin ?? '';
  set dateCheckin(String? val) => _dateCheckin = val;
  bool hasDateCheckin() => _dateCheckin != null;

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

  static VoucherStruct fromMap(Map<String, dynamic> data) => VoucherStruct(
        id: data['id'] as String?,
        status: data['status'] as String?,
        dateCreated: data['date_created'] as String?,
        dateUpdated: data['date_updated'] as String?,
        dateStart: data['date_start'] as String?,
        dateEnd: data['date_end'] as String?,
        code: data['code'] as String?,
        price: data['price'] as String?,
        title: data['title'] as String?,
        description: data['description'] as String?,
        note: data['note'] as String?,
        version: data['version'] as String?,
        userCreated: UserStruct.maybeFromMap(data['user_created']),
        userUpdated: UserStruct.maybeFromMap(data['user_updated']),
        agentId: AgentStruct.maybeFromMap(data['agent_id']),
        providerId: ProviderStruct.maybeFromMap(data['provider_id']),
        customerId: CustomerStruct.maybeFromMap(data['customer_id']),
        voucherTemplateId:
            VoucherTemplateStruct.maybeFromMap(data['voucher_template_id']),
        customerOrderId:
            CustomerOrderStruct.maybeFromMap(data['customer_order_id']),
        agentOrderId: AgentOrderStruct.maybeFromMap(data['agent_order_id']),
        customerOrderDetailId: CustomerOrderDetailStruct.maybeFromMap(
            data['customer_order_detail_id']),
        qrCodeImageUrl: data['qr_code_image_url'] as String?,
        avatar: data['avatar'] as String?,
        dateCheckin: data['date_checkin'] as String?,
        totalVoucher: castToType<int>(data['total_voucher']),
        retailPrice: castToType<int>(data['retail_price']),
      );

  static VoucherStruct? maybeFromMap(dynamic data) =>
      data is Map ? VoucherStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'status': _status,
        'date_created': _dateCreated,
        'date_updated': _dateUpdated,
        'date_start': _dateStart,
        'date_end': _dateEnd,
        'code': _code,
        'price': _price,
        'title': _title,
        'description': _description,
        'note': _note,
        'version': _version,
        'user_created': _userCreated?.toMap(),
        'user_updated': _userUpdated?.toMap(),
        'agent_id': _agentId?.toMap(),
        'provider_id': _providerId?.toMap(),
        'customer_id': _customerId?.toMap(),
        'voucher_template_id': _voucherTemplateId?.toMap(),
        'customer_order_id': _customerOrderId?.toMap(),
        'agent_order_id': _agentOrderId?.toMap(),
        'customer_order_detail_id': _customerOrderDetailId?.toMap(),
        'qr_code_image_url': _qrCodeImageUrl,
        'avatar': _avatar,
        'date_checkin': _dateCheckin,
        'total_voucher': _totalVoucher,
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
        'date_start': serializeParam(
          _dateStart,
          ParamType.String,
        ),
        'date_end': serializeParam(
          _dateEnd,
          ParamType.String,
        ),
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
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
        'version': serializeParam(
          _version,
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
        'agent_id': serializeParam(
          _agentId,
          ParamType.DataStruct,
        ),
        'provider_id': serializeParam(
          _providerId,
          ParamType.DataStruct,
        ),
        'customer_id': serializeParam(
          _customerId,
          ParamType.DataStruct,
        ),
        'voucher_template_id': serializeParam(
          _voucherTemplateId,
          ParamType.DataStruct,
        ),
        'customer_order_id': serializeParam(
          _customerOrderId,
          ParamType.DataStruct,
        ),
        'agent_order_id': serializeParam(
          _agentOrderId,
          ParamType.DataStruct,
        ),
        'customer_order_detail_id': serializeParam(
          _customerOrderDetailId,
          ParamType.DataStruct,
        ),
        'qr_code_image_url': serializeParam(
          _qrCodeImageUrl,
          ParamType.String,
        ),
        'avatar': serializeParam(
          _avatar,
          ParamType.String,
        ),
        'date_checkin': serializeParam(
          _dateCheckin,
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
      }.withoutNulls;

  static VoucherStruct fromSerializableMap(Map<String, dynamic> data) =>
      VoucherStruct(
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
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
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
        version: deserializeParam(
          data['version'],
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
        agentId: deserializeStructParam(
          data['agent_id'],
          ParamType.DataStruct,
          false,
          structBuilder: AgentStruct.fromSerializableMap,
        ),
        providerId: deserializeStructParam(
          data['provider_id'],
          ParamType.DataStruct,
          false,
          structBuilder: ProviderStruct.fromSerializableMap,
        ),
        customerId: deserializeStructParam(
          data['customer_id'],
          ParamType.DataStruct,
          false,
          structBuilder: CustomerStruct.fromSerializableMap,
        ),
        voucherTemplateId: deserializeStructParam(
          data['voucher_template_id'],
          ParamType.DataStruct,
          false,
          structBuilder: VoucherTemplateStruct.fromSerializableMap,
        ),
        customerOrderId: deserializeStructParam(
          data['customer_order_id'],
          ParamType.DataStruct,
          false,
          structBuilder: CustomerOrderStruct.fromSerializableMap,
        ),
        agentOrderId: deserializeStructParam(
          data['agent_order_id'],
          ParamType.DataStruct,
          false,
          structBuilder: AgentOrderStruct.fromSerializableMap,
        ),
        customerOrderDetailId: deserializeStructParam(
          data['customer_order_detail_id'],
          ParamType.DataStruct,
          false,
          structBuilder: CustomerOrderDetailStruct.fromSerializableMap,
        ),
        qrCodeImageUrl: deserializeParam(
          data['qr_code_image_url'],
          ParamType.String,
          false,
        ),
        avatar: deserializeParam(
          data['avatar'],
          ParamType.String,
          false,
        ),
        dateCheckin: deserializeParam(
          data['date_checkin'],
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
      );

  @override
  String toString() => 'VoucherStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VoucherStruct &&
        id == other.id &&
        status == other.status &&
        dateCreated == other.dateCreated &&
        dateUpdated == other.dateUpdated &&
        dateStart == other.dateStart &&
        dateEnd == other.dateEnd &&
        code == other.code &&
        price == other.price &&
        title == other.title &&
        description == other.description &&
        note == other.note &&
        version == other.version &&
        userCreated == other.userCreated &&
        userUpdated == other.userUpdated &&
        agentId == other.agentId &&
        providerId == other.providerId &&
        customerId == other.customerId &&
        voucherTemplateId == other.voucherTemplateId &&
        customerOrderId == other.customerOrderId &&
        agentOrderId == other.agentOrderId &&
        customerOrderDetailId == other.customerOrderDetailId &&
        qrCodeImageUrl == other.qrCodeImageUrl &&
        avatar == other.avatar &&
        dateCheckin == other.dateCheckin &&
        totalVoucher == other.totalVoucher &&
        retailPrice == other.retailPrice;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        status,
        dateCreated,
        dateUpdated,
        dateStart,
        dateEnd,
        code,
        price,
        title,
        description,
        note,
        version,
        userCreated,
        userUpdated,
        agentId,
        providerId,
        customerId,
        voucherTemplateId,
        customerOrderId,
        agentOrderId,
        customerOrderDetailId,
        qrCodeImageUrl,
        avatar,
        dateCheckin,
        totalVoucher,
        retailPrice
      ]);
}

VoucherStruct createVoucherStruct({
  String? id,
  String? status,
  String? dateCreated,
  String? dateUpdated,
  String? dateStart,
  String? dateEnd,
  String? code,
  String? price,
  String? title,
  String? description,
  String? note,
  String? version,
  UserStruct? userCreated,
  UserStruct? userUpdated,
  AgentStruct? agentId,
  ProviderStruct? providerId,
  CustomerStruct? customerId,
  VoucherTemplateStruct? voucherTemplateId,
  CustomerOrderStruct? customerOrderId,
  AgentOrderStruct? agentOrderId,
  CustomerOrderDetailStruct? customerOrderDetailId,
  String? qrCodeImageUrl,
  String? avatar,
  String? dateCheckin,
  int? totalVoucher,
  int? retailPrice,
}) =>
    VoucherStruct(
      id: id,
      status: status,
      dateCreated: dateCreated,
      dateUpdated: dateUpdated,
      dateStart: dateStart,
      dateEnd: dateEnd,
      code: code,
      price: price,
      title: title,
      description: description,
      note: note,
      version: version,
      userCreated: userCreated ?? UserStruct(),
      userUpdated: userUpdated ?? UserStruct(),
      agentId: agentId ?? AgentStruct(),
      providerId: providerId ?? ProviderStruct(),
      customerId: customerId ?? CustomerStruct(),
      voucherTemplateId: voucherTemplateId ?? VoucherTemplateStruct(),
      customerOrderId: customerOrderId ?? CustomerOrderStruct(),
      agentOrderId: agentOrderId ?? AgentOrderStruct(),
      customerOrderDetailId:
          customerOrderDetailId ?? CustomerOrderDetailStruct(),
      qrCodeImageUrl: qrCodeImageUrl,
      avatar: avatar,
      dateCheckin: dateCheckin,
      totalVoucher: totalVoucher,
      retailPrice: retailPrice,
    );
