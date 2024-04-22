// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    String? id,
    String? firstName,
    String? lastName,
    String? email,
    String? title,
    String? description,
    String? status,
    String? theme,
    String? lastAccess,
    String? lastPage,
    bool? emailNotifications,
    AgentStruct? agentId,
    ProviderStruct? providerId,
    RoleStruct? role,
    String? avatar,
  })  : _id = id,
        _firstName = firstName,
        _lastName = lastName,
        _email = email,
        _title = title,
        _description = description,
        _status = status,
        _theme = theme,
        _lastAccess = lastAccess,
        _lastPage = lastPage,
        _emailNotifications = emailNotifications,
        _agentId = agentId,
        _providerId = providerId,
        _role = role,
        _avatar = avatar;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  set firstName(String? val) => _firstName = val;
  bool hasFirstName() => _firstName != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  set lastName(String? val) => _lastName = val;
  bool hasLastName() => _lastName != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

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

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;
  bool hasStatus() => _status != null;

  // "theme" field.
  String? _theme;
  String get theme => _theme ?? '';
  set theme(String? val) => _theme = val;
  bool hasTheme() => _theme != null;

  // "last_access" field.
  String? _lastAccess;
  String get lastAccess => _lastAccess ?? '';
  set lastAccess(String? val) => _lastAccess = val;
  bool hasLastAccess() => _lastAccess != null;

  // "last_page" field.
  String? _lastPage;
  String get lastPage => _lastPage ?? '';
  set lastPage(String? val) => _lastPage = val;
  bool hasLastPage() => _lastPage != null;

  // "email_notifications" field.
  bool? _emailNotifications;
  bool get emailNotifications => _emailNotifications ?? false;
  set emailNotifications(bool? val) => _emailNotifications = val;
  bool hasEmailNotifications() => _emailNotifications != null;

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

  // "role" field.
  RoleStruct? _role;
  RoleStruct get role => _role ?? RoleStruct();
  set role(RoleStruct? val) => _role = val;
  void updateRole(Function(RoleStruct) updateFn) =>
      updateFn(_role ??= RoleStruct());
  bool hasRole() => _role != null;

  // "avatar" field.
  String? _avatar;
  String get avatar => _avatar ?? '';
  set avatar(String? val) => _avatar = val;
  bool hasAvatar() => _avatar != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        id: data['id'] as String?,
        firstName: data['first_name'] as String?,
        lastName: data['last_name'] as String?,
        email: data['email'] as String?,
        title: data['title'] as String?,
        description: data['description'] as String?,
        status: data['status'] as String?,
        theme: data['theme'] as String?,
        lastAccess: data['last_access'] as String?,
        lastPage: data['last_page'] as String?,
        emailNotifications: data['email_notifications'] as bool?,
        agentId: AgentStruct.maybeFromMap(data['agent_id']),
        providerId: ProviderStruct.maybeFromMap(data['provider_id']),
        role: RoleStruct.maybeFromMap(data['role']),
        avatar: data['avatar'] as String?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'first_name': _firstName,
        'last_name': _lastName,
        'email': _email,
        'title': _title,
        'description': _description,
        'status': _status,
        'theme': _theme,
        'last_access': _lastAccess,
        'last_page': _lastPage,
        'email_notifications': _emailNotifications,
        'agent_id': _agentId?.toMap(),
        'provider_id': _providerId?.toMap(),
        'role': _role?.toMap(),
        'avatar': _avatar,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'first_name': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'last_name': serializeParam(
          _lastName,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
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
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'theme': serializeParam(
          _theme,
          ParamType.String,
        ),
        'last_access': serializeParam(
          _lastAccess,
          ParamType.String,
        ),
        'last_page': serializeParam(
          _lastPage,
          ParamType.String,
        ),
        'email_notifications': serializeParam(
          _emailNotifications,
          ParamType.bool,
        ),
        'agent_id': serializeParam(
          _agentId,
          ParamType.DataStruct,
        ),
        'provider_id': serializeParam(
          _providerId,
          ParamType.DataStruct,
        ),
        'role': serializeParam(
          _role,
          ParamType.DataStruct,
        ),
        'avatar': serializeParam(
          _avatar,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        firstName: deserializeParam(
          data['first_name'],
          ParamType.String,
          false,
        ),
        lastName: deserializeParam(
          data['last_name'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
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
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        theme: deserializeParam(
          data['theme'],
          ParamType.String,
          false,
        ),
        lastAccess: deserializeParam(
          data['last_access'],
          ParamType.String,
          false,
        ),
        lastPage: deserializeParam(
          data['last_page'],
          ParamType.String,
          false,
        ),
        emailNotifications: deserializeParam(
          data['email_notifications'],
          ParamType.bool,
          false,
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
        role: deserializeStructParam(
          data['role'],
          ParamType.DataStruct,
          false,
          structBuilder: RoleStruct.fromSerializableMap,
        ),
        avatar: deserializeParam(
          data['avatar'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        id == other.id &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email &&
        title == other.title &&
        description == other.description &&
        status == other.status &&
        theme == other.theme &&
        lastAccess == other.lastAccess &&
        lastPage == other.lastPage &&
        emailNotifications == other.emailNotifications &&
        agentId == other.agentId &&
        providerId == other.providerId &&
        role == other.role &&
        avatar == other.avatar;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        firstName,
        lastName,
        email,
        title,
        description,
        status,
        theme,
        lastAccess,
        lastPage,
        emailNotifications,
        agentId,
        providerId,
        role,
        avatar
      ]);
}

UserStruct createUserStruct({
  String? id,
  String? firstName,
  String? lastName,
  String? email,
  String? title,
  String? description,
  String? status,
  String? theme,
  String? lastAccess,
  String? lastPage,
  bool? emailNotifications,
  AgentStruct? agentId,
  ProviderStruct? providerId,
  RoleStruct? role,
  String? avatar,
}) =>
    UserStruct(
      id: id,
      firstName: firstName,
      lastName: lastName,
      email: email,
      title: title,
      description: description,
      status: status,
      theme: theme,
      lastAccess: lastAccess,
      lastPage: lastPage,
      emailNotifications: emailNotifications,
      agentId: agentId ?? AgentStruct(),
      providerId: providerId ?? ProviderStruct(),
      role: role ?? RoleStruct(),
      avatar: avatar,
    );
