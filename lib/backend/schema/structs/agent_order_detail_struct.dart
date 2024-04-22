// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AgentOrderDetailStruct extends BaseStruct {
  AgentOrderDetailStruct({
    String? id,
    String? status,
    String? dateCreated,
    String? dateUpdated,
    UserStruct? userCreated,
    UserStruct? userUpdated,
    String? version,
  })  : _id = id,
        _status = status,
        _dateCreated = dateCreated,
        _dateUpdated = dateUpdated,
        _userCreated = userCreated,
        _userUpdated = userUpdated,
        _version = version;

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

  static AgentOrderDetailStruct fromMap(Map<String, dynamic> data) =>
      AgentOrderDetailStruct(
        id: data['id'] as String?,
        status: data['status'] as String?,
        dateCreated: data['date_created'] as String?,
        dateUpdated: data['date_updated'] as String?,
        userCreated: UserStruct.maybeFromMap(data['user_created']),
        userUpdated: UserStruct.maybeFromMap(data['user_updated']),
        version: data['version'] as String?,
      );

  static AgentOrderDetailStruct? maybeFromMap(dynamic data) => data is Map
      ? AgentOrderDetailStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'status': _status,
        'date_created': _dateCreated,
        'date_updated': _dateUpdated,
        'user_created': _userCreated?.toMap(),
        'user_updated': _userUpdated?.toMap(),
        'version': _version,
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
      }.withoutNulls;

  static AgentOrderDetailStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AgentOrderDetailStruct(
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
      );

  @override
  String toString() => 'AgentOrderDetailStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AgentOrderDetailStruct &&
        id == other.id &&
        status == other.status &&
        dateCreated == other.dateCreated &&
        dateUpdated == other.dateUpdated &&
        userCreated == other.userCreated &&
        userUpdated == other.userUpdated &&
        version == other.version;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        status,
        dateCreated,
        dateUpdated,
        userCreated,
        userUpdated,
        version
      ]);
}

AgentOrderDetailStruct createAgentOrderDetailStruct({
  String? id,
  String? status,
  String? dateCreated,
  String? dateUpdated,
  UserStruct? userCreated,
  UserStruct? userUpdated,
  String? version,
}) =>
    AgentOrderDetailStruct(
      id: id,
      status: status,
      dateCreated: dateCreated,
      dateUpdated: dateUpdated,
      userCreated: userCreated ?? UserStruct(),
      userUpdated: userUpdated ?? UserStruct(),
      version: version,
    );
