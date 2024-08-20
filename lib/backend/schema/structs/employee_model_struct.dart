// ignore_for_file: unnecessary_getters_setters

import 'package:hr_chain/backend/schema/structs/leave_type_model_struct.dart';
import '/backend/schema/util/firestore_util.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmployeeModelStruct extends FFFirebaseStruct {
  EmployeeModelStruct({
    int? id,
    String? name,
    String? email,
    int? currentTeamId,
    String? profilePhotoPath,
    String? createdAt,
    String? updatedAt,
    String? token,
    String? team,
    String? role,
    String? hiringDate,
    String? userType,
    String? mobileNumber,
    String? birthDate,
    String? address,
    String? gender,
    String? passportNumber,
    int? nationality,
    String? religion,
    String? maritalStatus,
    String? loginAuthName,
    String? loginAuthPassword,
    int? childrenNumber,
    String? fullName,
    String? personalPicFullPath,
    LeaveTypeModelStruct? department,
    LeaveTypeModelStruct? designation,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _name = name,
        _email = email,
        _currentTeamId = currentTeamId,
        _profilePhotoPath = profilePhotoPath,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _token = token,
        _team = team,
        _role = role,
        _hiringDate = hiringDate,
        _userType = userType,
        _mobileNumber = mobileNumber,
        _birthDate = birthDate,
        _address = address,
        _gender = gender,
        _passportNumber = passportNumber,
        _nationality = nationality,
        _religion = religion,
        _maritalStatus = maritalStatus,
        _loginAuthName = loginAuthName,
        _loginAuthPassword = loginAuthPassword,
        _childrenNumber = childrenNumber,
        _fullName = fullName,
        _personalPicFullPath = personalPicFullPath,
        _department = department,
        _designation = designation,
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

  // "currentTeamId" field.
  int? _currentTeamId;
  int get currentTeamId => _currentTeamId ?? 0;
  set currentTeamId(int? val) => _currentTeamId = val;

  void incrementCurrentTeamId(int amount) => currentTeamId = currentTeamId + amount;

  bool hasCurrentTeamId() => _currentTeamId != null;

  // "profilePhotoPath" field.
  String? _profilePhotoPath;
  String get profilePhotoPath => _profilePhotoPath ?? '';
  set profilePhotoPath(String? val) => _profilePhotoPath = val;

  bool hasProfilePhotoPath() => _profilePhotoPath != null;

  // "createdAt" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "updatedAt" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "token" field.
  String? _token;
  String get token => _token ?? '';
  set token(String? val) => _token = val;

  bool hasToken() => _token != null;

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

  // "hiringDate" field.
  String? _hiringDate;
  String get hiringDate => _hiringDate ?? '';
  set hiringDate(String? val) => _hiringDate = val;

  bool hasHiringDate() => _hiringDate != null;

  // "userType" field.
  String? _userType;
  String get userType => _userType ?? '';
  set userType(String? val) => _userType = val;

  bool hasUserType() => _userType != null;

  // "mobileNumber" field.
  String? _mobileNumber;
  String get mobileNumber => _mobileNumber ?? '';
  set mobileNumber(String? val) => _mobileNumber = val;

  bool hasMobileNumber() => _mobileNumber != null;

  // "birthDate" field.
  String? _birthDate;
  String get birthDate => _birthDate ?? '';
  set birthDate(String? val) => _birthDate = val;

  bool hasBirthDate() => _birthDate != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;

  bool hasAddress() => _address != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  set gender(String? val) => _gender = val;

  bool hasGender() => _gender != null;

  // "passportNumber" field.
  String? _passportNumber;
  String get passportNumber => _passportNumber ?? '';
  set passportNumber(String? val) => _passportNumber = val;

  bool hasPassportNumber() => _passportNumber != null;

  // "nationality" field.
  int? _nationality;
  int get nationality => _nationality ?? 0;
  set nationality(int? val) => _nationality = val;

  void incrementNationality(int amount) => nationality = nationality + amount;

  bool hasNationality() => _nationality != null;

  // "religion" field.
  String? _religion;
  String get religion => _religion ?? '';
  set religion(String? val) => _religion = val;

  bool hasReligion() => _religion != null;

  // "maritalStatus" field.
  String? _maritalStatus;
  String get maritalStatus => _maritalStatus ?? '';
  set maritalStatus(String? val) => _maritalStatus = val;

  bool hasMaritalStatus() => _maritalStatus != null;

  // "loginAuthName" field.
  String? _loginAuthName;
  String get loginAuthName => _loginAuthName ?? '';
  set loginAuthName(String? val) => _loginAuthName = val;

  bool hasLoginAuthName() => _loginAuthName != null;

  // "loginAuthPassword" field.
  String? _loginAuthPassword;
  String get loginAuthPassword => _loginAuthPassword ?? '';
  set loginAuthPassword(String? val) => _loginAuthPassword = val;

  bool hasLoginAuthPassword() => _loginAuthPassword != null;

  // "childrenNumber" field.
  int? _childrenNumber;
  int get childrenNumber => _childrenNumber ?? 0;
  set childrenNumber(int? val) => _childrenNumber = val;

  void incrementChildrenNumber(int amount) => childrenNumber = childrenNumber + amount;

  bool hasChildrenNumber() => _childrenNumber != null;

  // "fullName" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  set fullName(String? val) => _fullName = val;

  bool hasFullName() => _fullName != null;

  // "personalPicFullPath" field.
  String? _personalPicFullPath;
  String get personalPicFullPath => _personalPicFullPath ?? '';
  set personalPicFullPath(String? val) => _personalPicFullPath = val;

  bool hasPersonalPicFullPath() => _personalPicFullPath != null;

  // "department" field.
  LeaveTypeModelStruct? _department;
  LeaveTypeModelStruct get department => _department ?? LeaveTypeModelStruct();
  set department(LeaveTypeModelStruct? val) => _department = val;

  void updateDepartment(Function(LeaveTypeModelStruct) updateFn) {
    updateFn(_department ??= LeaveTypeModelStruct());
  }

  bool hasDepartment() => _department != null;

  // "designation" field.
  LeaveTypeModelStruct? _designation;
  LeaveTypeModelStruct get designation => _designation ?? LeaveTypeModelStruct();
  set designation(LeaveTypeModelStruct? val) => _designation = val;

  void updateDesignation(Function(LeaveTypeModelStruct) updateFn) {
    updateFn(_designation ??= LeaveTypeModelStruct());
  }

  bool hasDesignation() => _designation != null;

  static EmployeeModelStruct fromMap(Map<String, dynamic> data) => EmployeeModelStruct(
    id: castToType<int>(data['id']),
    name: data['name'] as String?,
    email: data['email'] as String?,
    currentTeamId: castToType<int>(data['current_team_id']),
    profilePhotoPath: data['profile_photo_path'] as String?,
    createdAt: data['created_at'] as String?,
    updatedAt: data['updated_at'] as String?,
    token: data['token'] as String?,
    team: data['team'] as String?,
    role: data['role'] as String?,
    hiringDate: data['hiring_date'] as String?,
    userType: data['user_type'] as String?,
    mobileNumber: data['mobile_number'] as String?,
    birthDate: data['birth_date'] as String?,
    address: data['address'] as String?,
    gender: data['gender'] as String?,
    passportNumber: data['passport_number'] as String?,
    nationality: castToType<int>(data['nationality']),
    religion: data['religion'] as String?,
    maritalStatus: data['marital_status'] as String?,
    loginAuthName: data['login_auth_name'] as String?,
    loginAuthPassword: data['login_auth_password'] as String?,
    childrenNumber: castToType<int>(data['children_number']),
    fullName: data['full_name'] as String?,
    personalPicFullPath: data['personal_pic_full_path'] as String?,
    department: LeaveTypeModelStruct.maybeFromMap(data['department']),
    designation: LeaveTypeModelStruct.maybeFromMap(data['designation']),
  );

  static EmployeeModelStruct? maybeFromMap(dynamic data) =>
      data is Map ? EmployeeModelStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
    'id': _id,
    'name': _name,
    'email': _email,
    'current_team_id': _currentTeamId,
    'profile_photo_path': _profilePhotoPath,
    'created_at': _createdAt,
    'updated_at': _updatedAt,
    'token': _token,
    'team': _team,
    'role': _role,

    'hiring_date': _hiringDate,
    'user_type': _userType,
    'mobile_number': _mobileNumber,
    'birth_date': _birthDate,
    'address': _address,
    'gender': _gender,
    'passport_number': _passportNumber,
    'nationality': _nationality,
    'religion': _religion,
    'marital_status': _maritalStatus,
    'login_auth_name': _loginAuthName,
    'login_auth_password': _loginAuthPassword,
    'children_number': _childrenNumber,
    'full_name': _fullName,
    'personal_pic_full_path': _personalPicFullPath,
    'department': _department?.toMap(),
    'designation': _designation?.toMap(),
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
    'updated_at': serializeParam(
      _updatedAt,
      ParamType.String,
    ),
    'token': serializeParam(
      _token,
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
    'hiring_date': serializeParam(
      _hiringDate,
      ParamType.String,
    ),
    'user_type': serializeParam(
      _userType,
      ParamType.String,
    ),
    'mobile_number': serializeParam(
      _mobileNumber,
      ParamType.String,
    ),
    'birth_date': serializeParam(
      _birthDate,
      ParamType.String,
    ),
    'address': serializeParam(
      _address,
      ParamType.String,
    ),
    'gender': serializeParam(
      _gender,
      ParamType.String,
    ),
    'passport_number': serializeParam(
      _passportNumber,
      ParamType.String,
    ),
    'nationality': serializeParam(
      _nationality,
      ParamType.int,
    ),
    'religion': serializeParam(
      _religion,
      ParamType.String,
    ),
    'marital_status': serializeParam(
      _maritalStatus,
      ParamType.String,
    ),
    'login_auth_name': serializeParam(
      _loginAuthName,
      ParamType.String,
    ),
    'login_auth_password': serializeParam(
      _loginAuthPassword,
      ParamType.String,
    ),
    'children_number': serializeParam(
      _childrenNumber,
      ParamType.int,
    ),
    'full_name': serializeParam(
      _fullName,
      ParamType.String,
    ),
    'personal_pic_full_path': serializeParam(
      _personalPicFullPath,
      ParamType.String,
    ),
    'department': serializeParam(
      _department,
      ParamType.DataStruct,
    ),
    'designation': serializeParam(
      _designation,
      ParamType.DataStruct,
    ),
  }.withoutNulls;
}
