// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserModelStruct extends FFFirebaseStruct {
  UserModelStruct({
    int? id,
    String? name,
    String? email,
    int? currentTeamId,
    String? profilePhotoPath,
    String? createdAt,
    String? hiringDate,
    String? updatedAt,
    String? token,
    String? designation,
    String? team,
    String? role,
    List<HasStruct>? has,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _name = name,
        _email = email,
        _currentTeamId = currentTeamId,
        _profilePhotoPath = profilePhotoPath,
        _createdAt = createdAt,
        _hiringDate = hiringDate,
        _updatedAt = updatedAt,
        _token = token,
        _designation = designation,
        _team = team,
        _role = role,
        _has = has,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

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

  // "current_team_id" field.
  int? _currentTeamId;
  int get currentTeamId => _currentTeamId ?? 0;
  set currentTeamId(int? val) => _currentTeamId = val;

  void incrementCurrentTeamId(int amount) =>
      currentTeamId = currentTeamId + amount;

  bool hasCurrentTeamId() => _currentTeamId != null;

  // "profile_photo_path" field.
  String? _profilePhotoPath;
  String get profilePhotoPath => _profilePhotoPath ?? '';
  set profilePhotoPath(String? val) => _profilePhotoPath = val;

  bool hasProfilePhotoPath() => _profilePhotoPath != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "hiring_date" field.
  String? _hiringDate;
  String get hiringDate => _hiringDate ?? '';
  set hiringDate(String? val) => _hiringDate = val;

  bool hasHiringDate() => _hiringDate != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "token" field.
  String? _token;
  String get token => _token ?? '';
  set token(String? val) => _token = val;

  bool hasToken() => _token != null;

  // "designation" field.
  String? _designation;
  String get designation => _designation ?? '';
  set designation(String? val) => _designation = val;

  bool hasDesignation() => _designation != null;

  // "team" field.
  String? _team;
  String get team => _team ?? '';
  set team(String? val) => _team = val;

  bool hasTeam() => _team != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  set role(String? val) => _role = val;

  bool hasRole() => _role != null;

  // "has" field.
  List<HasStruct>? _has;
  List<HasStruct> get has => _has ?? const [];
  set has(List<HasStruct>? val) => _has = val;

  void updateHas(Function(List<HasStruct>) updateFn) {
    updateFn(_has ??= []);
  }

  bool hasHas() => _has != null;

  static UserModelStruct fromMap(Map<String, dynamic> data) => UserModelStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        email: data['email'] as String?,
        currentTeamId: castToType<int>(data['current_team_id']),
        profilePhotoPath: data['profile_photo_path'] as String?,
        createdAt: data['created_at'] as String?,
        hiringDate: data['hiring_date'] as String?,
        updatedAt: data['updated_at'] as String?,
        token: data['token'] as String?,
        designation: data['designation'] as String?,
        team: data['team'] as String?,
        role: data['role'] as String?,
        has: getStructList(
          data['has'],
          HasStruct.fromMap,
        ),
      );

  static UserModelStruct? maybeFromMap(dynamic data) => data is Map
      ? UserModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'email': _email,
        'current_team_id': _currentTeamId,
        'profile_photo_path': _profilePhotoPath,
        'created_at': _createdAt,
        'hiring_date': _hiringDate,
        'updated_at': _updatedAt,
        'token': _token,
        'designation': _designation,
        'team': _team,
        'role': _role,
        'has': _has?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'current_team_id': serializeParam(
          _currentTeamId,
          ParamType.int,
        ),
        'profile_photo_path': serializeParam(
          _profilePhotoPath,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'hiring_date': serializeParam(
          _hiringDate,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'token': serializeParam(
          _token,
          ParamType.String,
        ),
        'designation': serializeParam(
          _designation,
          ParamType.String,
        ),
        'team': serializeParam(
          _team,
          ParamType.String,
        ),
        'role': serializeParam(
          _role,
          ParamType.String,
        ),
        'has': serializeParam(
          _has,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static UserModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserModelStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
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
        currentTeamId: deserializeParam(
          data['current_team_id'],
          ParamType.int,
          false,
        ),
        profilePhotoPath: deserializeParam(
          data['profile_photo_path'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        hiringDate: deserializeParam(
          data['hiring_date'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
        token: deserializeParam(
          data['token'],
          ParamType.String,
          false,
        ),
        designation: deserializeParam(
          data['designation'],
          ParamType.String,
          false,
        ),
        team: deserializeParam(
          data['team'],
          ParamType.String,
          false,
        ),
        role: deserializeParam(
          data['role'],
          ParamType.String,
          false,
        ),
        has: deserializeStructParam<HasStruct>(
          data['has'],
          ParamType.DataStruct,
          true,
          structBuilder: HasStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'UserModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is UserModelStruct &&
        id == other.id &&
        name == other.name &&
        email == other.email &&
        currentTeamId == other.currentTeamId &&
        profilePhotoPath == other.profilePhotoPath &&
        createdAt == other.createdAt &&
        hiringDate == other.hiringDate &&
        updatedAt == other.updatedAt &&
        token == other.token &&
        designation == other.designation &&
        team == other.team &&
        role == other.role &&
        listEquality.equals(has, other.has);
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        name,
        email,
        currentTeamId,
        profilePhotoPath,
        createdAt,
        hiringDate,
        updatedAt,
        token,
        designation,
        team,
        role,
        has
      ]);
}

UserModelStruct createUserModelStruct({
  int? id,
  String? name,
  String? email,
  int? currentTeamId,
  String? profilePhotoPath,
  String? createdAt,
  String? hiringDate,
  String? updatedAt,
  String? token,
  String? designation,
  String? team,
  String? role,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserModelStruct(
      id: id,
      name: name,
      email: email,
      currentTeamId: currentTeamId,
      profilePhotoPath: profilePhotoPath,
      createdAt: createdAt,
      hiringDate: hiringDate,
      updatedAt: updatedAt,
      token: token,
      designation: designation,
      team: team,
      role: role,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserModelStruct? updateUserModelStruct(
  UserModelStruct? userModel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    userModel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserModelStructData(
  Map<String, dynamic> firestoreData,
  UserModelStruct? userModel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userModel == null) {
    return;
  }
  if (userModel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && userModel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userModelData = getUserModelFirestoreData(userModel, forFieldValue);
  final nestedData = userModelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = userModel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserModelFirestoreData(
  UserModelStruct? userModel, [
  bool forFieldValue = false,
]) {
  if (userModel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(userModel.toMap());

  // Add any Firestore field values
  userModel.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserModelListFirestoreData(
  List<UserModelStruct>? userModels,
) =>
    userModels?.map((e) => getUserModelFirestoreData(e, true)).toList() ?? [];
