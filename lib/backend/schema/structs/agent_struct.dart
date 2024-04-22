// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AgentStruct extends BaseStruct {
  AgentStruct({
    String? id,
    String? avatar,
    String? name,
    String? phone,
    String? address,
    String? status,
    String? userId,
    String? dateCreated,
    String? dateUpdated,
  })  : _id = id,
        _avatar = avatar,
        _name = name,
        _phone = phone,
        _address = address,
        _status = status,
        _userId = userId,
        _dateCreated = dateCreated,
        _dateUpdated = dateUpdated;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "avatar" field.
  String? _avatar;
  String get avatar => _avatar ?? '';
  set avatar(String? val) => _avatar = val;
  bool hasAvatar() => _avatar != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

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

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;
  bool hasStatus() => _status != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  set userId(String? val) => _userId = val;
  bool hasUserId() => _userId != null;

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

  static AgentStruct fromMap(Map<String, dynamic> data) => AgentStruct(
        id: data['id'] as String?,
        avatar: data['avatar'] as String?,
        name: data['name'] as String?,
        phone: data['phone'] as String?,
        address: data['address'] as String?,
        status: data['status'] as String?,
        userId: data['user_id'] as String?,
        dateCreated: data['date_created'] as String?,
        dateUpdated: data['date_updated'] as String?,
      );

  static AgentStruct? maybeFromMap(dynamic data) =>
      data is Map ? AgentStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'avatar': _avatar,
        'name': _name,
        'phone': _phone,
        'address': _address,
        'status': _status,
        'user_id': _userId,
        'date_created': _dateCreated,
        'date_updated': _dateUpdated,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'avatar': serializeParam(
          _avatar,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
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
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'user_id': serializeParam(
          _userId,
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
      }.withoutNulls;

  static AgentStruct fromSerializableMap(Map<String, dynamic> data) =>
      AgentStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        avatar: deserializeParam(
          data['avatar'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
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
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
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
      );

  @override
  String toString() => 'AgentStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AgentStruct &&
        id == other.id &&
        avatar == other.avatar &&
        name == other.name &&
        phone == other.phone &&
        address == other.address &&
        status == other.status &&
        userId == other.userId &&
        dateCreated == other.dateCreated &&
        dateUpdated == other.dateUpdated;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        avatar,
        name,
        phone,
        address,
        status,
        userId,
        dateCreated,
        dateUpdated
      ]);
}

AgentStruct createAgentStruct({
  String? id,
  String? avatar,
  String? name,
  String? phone,
  String? address,
  String? status,
  String? userId,
  String? dateCreated,
  String? dateUpdated,
}) =>
    AgentStruct(
      id: id,
      avatar: avatar,
      name: name,
      phone: phone,
      address: address,
      status: status,
      userId: userId,
      dateCreated: dateCreated,
      dateUpdated: dateUpdated,
    );
