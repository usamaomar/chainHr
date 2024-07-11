// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CreateBunchStruct extends FFFirebaseStruct {
  CreateBunchStruct({
    int? companyId,
    int? departmentId,
    int? sectionId,
    int? employeeId,
    String? punchtime,
    String? zkPunchId,
    String? zkUserId,
    int? zkState,
    String? zkTimestamp,
    int? zkType,
    int? deviceId,
    String? ipAddress,
    int? lat,
    int? lng,
    int? shiftId,
    String? updatedAt,
    String? createdAt,
    int? id,
    String? dayName,
    int? old,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _companyId = companyId,
        _departmentId = departmentId,
        _sectionId = sectionId,
        _employeeId = employeeId,
        _punchtime = punchtime,
        _zkPunchId = zkPunchId,
        _zkUserId = zkUserId,
        _zkState = zkState,
        _zkTimestamp = zkTimestamp,
        _zkType = zkType,
        _deviceId = deviceId,
        _ipAddress = ipAddress,
        _lat = lat,
        _lng = lng,
        _shiftId = shiftId,
        _updatedAt = updatedAt,
        _createdAt = createdAt,
        _id = id,
        _dayName = dayName,
        _old = old,
        super(firestoreUtilData);

  // "company_id" field.
  int? _companyId;
  int get companyId => _companyId ?? 0;
  set companyId(int? val) => _companyId = val;

  void incrementCompanyId(int amount) => companyId = companyId + amount;

  bool hasCompanyId() => _companyId != null;

  // "department_id" field.
  int? _departmentId;
  int get departmentId => _departmentId ?? 0;
  set departmentId(int? val) => _departmentId = val;

  void incrementDepartmentId(int amount) =>
      departmentId = departmentId + amount;

  bool hasDepartmentId() => _departmentId != null;

  // "section_id" field.
  int? _sectionId;
  int get sectionId => _sectionId ?? 0;
  set sectionId(int? val) => _sectionId = val;

  void incrementSectionId(int amount) => sectionId = sectionId + amount;

  bool hasSectionId() => _sectionId != null;

  // "employee_id" field.
  int? _employeeId;
  int get employeeId => _employeeId ?? 0;
  set employeeId(int? val) => _employeeId = val;

  void incrementEmployeeId(int amount) => employeeId = employeeId + amount;

  bool hasEmployeeId() => _employeeId != null;

  // "punchtime" field.
  String? _punchtime;
  String get punchtime => _punchtime ?? '';
  set punchtime(String? val) => _punchtime = val;

  bool hasPunchtime() => _punchtime != null;

  // "zk_punch_id" field.
  String? _zkPunchId;
  String get zkPunchId => _zkPunchId ?? '';
  set zkPunchId(String? val) => _zkPunchId = val;

  bool hasZkPunchId() => _zkPunchId != null;

  // "zk_user_id" field.
  String? _zkUserId;
  String get zkUserId => _zkUserId ?? '';
  set zkUserId(String? val) => _zkUserId = val;

  bool hasZkUserId() => _zkUserId != null;

  // "zk_state" field.
  int? _zkState;
  int get zkState => _zkState ?? 0;
  set zkState(int? val) => _zkState = val;

  void incrementZkState(int amount) => zkState = zkState + amount;

  bool hasZkState() => _zkState != null;

  // "zk_timestamp" field.
  String? _zkTimestamp;
  String get zkTimestamp => _zkTimestamp ?? '';
  set zkTimestamp(String? val) => _zkTimestamp = val;

  bool hasZkTimestamp() => _zkTimestamp != null;

  // "zk_type" field.
  int? _zkType;
  int get zkType => _zkType ?? 0;
  set zkType(int? val) => _zkType = val;

  void incrementZkType(int amount) => zkType = zkType + amount;

  bool hasZkType() => _zkType != null;

  // "device_id" field.
  int? _deviceId;
  int get deviceId => _deviceId ?? 0;
  set deviceId(int? val) => _deviceId = val;

  void incrementDeviceId(int amount) => deviceId = deviceId + amount;

  bool hasDeviceId() => _deviceId != null;

  // "ip_address" field.
  String? _ipAddress;
  String get ipAddress => _ipAddress ?? '';
  set ipAddress(String? val) => _ipAddress = val;

  bool hasIpAddress() => _ipAddress != null;

  // "lat" field.
  int? _lat;
  int get lat => _lat ?? 0;
  set lat(int? val) => _lat = val;

  void incrementLat(int amount) => lat = lat + amount;

  bool hasLat() => _lat != null;

  // "lng" field.
  int? _lng;
  int get lng => _lng ?? 0;
  set lng(int? val) => _lng = val;

  void incrementLng(int amount) => lng = lng + amount;

  bool hasLng() => _lng != null;

  // "shift_id" field.
  int? _shiftId;
  int get shiftId => _shiftId ?? 0;
  set shiftId(int? val) => _shiftId = val;

  void incrementShiftId(int amount) => shiftId = shiftId + amount;

  bool hasShiftId() => _shiftId != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "day_name" field.
  String? _dayName;
  String get dayName => _dayName ?? '';
  set dayName(String? val) => _dayName = val;

  bool hasDayName() => _dayName != null;

  // "old" field.
  int? _old;
  int get old => _old ?? 0;
  set old(int? val) => _old = val;

  void incrementOld(int amount) => old = old + amount;

  bool hasOld() => _old != null;

  static CreateBunchStruct fromMap(Map<String, dynamic> data) =>
      CreateBunchStruct(
        companyId: castToType<int>(data['company_id']),
        departmentId: castToType<int>(data['department_id']),
        sectionId: castToType<int>(data['section_id']),
        employeeId: castToType<int>(data['employee_id']),
        punchtime: data['punchtime'] as String?,
        zkPunchId: data['zk_punch_id'] as String?,
        zkUserId: data['zk_user_id'] as String?,
        zkState: castToType<int>(data['zk_state']),
        zkTimestamp: data['zk_timestamp'] as String?,
        zkType: castToType<int>(data['zk_type']),
        deviceId: castToType<int>(data['device_id']),
        ipAddress: data['ip_address'] as String?,
        lat: castToType<int>(data['lat']),
        lng: castToType<int>(data['lng']),
        shiftId: castToType<int>(data['shift_id']),
        updatedAt: data['updated_at'] as String?,
        createdAt: data['created_at'] as String?,
        id: castToType<int>(data['id']),
        dayName: data['day_name'] as String?,
        old: castToType<int>(data['old']),
      );

  static CreateBunchStruct? maybeFromMap(dynamic data) => data is Map
      ? CreateBunchStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'company_id': _companyId,
        'department_id': _departmentId,
        'section_id': _sectionId,
        'employee_id': _employeeId,
        'punchtime': _punchtime,
        'zk_punch_id': _zkPunchId,
        'zk_user_id': _zkUserId,
        'zk_state': _zkState,
        'zk_timestamp': _zkTimestamp,
        'zk_type': _zkType,
        'device_id': _deviceId,
        'ip_address': _ipAddress,
        'lat': _lat,
        'lng': _lng,
        'shift_id': _shiftId,
        'updated_at': _updatedAt,
        'created_at': _createdAt,
        'id': _id,
        'day_name': _dayName,
        'old': _old,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'company_id': serializeParam(
          _companyId,
          ParamType.int,
        ),
        'department_id': serializeParam(
          _departmentId,
          ParamType.int,
        ),
        'section_id': serializeParam(
          _sectionId,
          ParamType.int,
        ),
        'employee_id': serializeParam(
          _employeeId,
          ParamType.int,
        ),
        'punchtime': serializeParam(
          _punchtime,
          ParamType.String,
        ),
        'zk_punch_id': serializeParam(
          _zkPunchId,
          ParamType.String,
        ),
        'zk_user_id': serializeParam(
          _zkUserId,
          ParamType.String,
        ),
        'zk_state': serializeParam(
          _zkState,
          ParamType.int,
        ),
        'zk_timestamp': serializeParam(
          _zkTimestamp,
          ParamType.String,
        ),
        'zk_type': serializeParam(
          _zkType,
          ParamType.int,
        ),
        'device_id': serializeParam(
          _deviceId,
          ParamType.int,
        ),
        'ip_address': serializeParam(
          _ipAddress,
          ParamType.String,
        ),
        'lat': serializeParam(
          _lat,
          ParamType.int,
        ),
        'lng': serializeParam(
          _lng,
          ParamType.int,
        ),
        'shift_id': serializeParam(
          _shiftId,
          ParamType.int,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'day_name': serializeParam(
          _dayName,
          ParamType.String,
        ),
        'old': serializeParam(
          _old,
          ParamType.int,
        ),
      }.withoutNulls;

  static CreateBunchStruct fromSerializableMap(Map<String, dynamic> data) =>
      CreateBunchStruct(
        companyId: deserializeParam(
          data['company_id'],
          ParamType.int,
          false,
        ),
        departmentId: deserializeParam(
          data['department_id'],
          ParamType.int,
          false,
        ),
        sectionId: deserializeParam(
          data['section_id'],
          ParamType.int,
          false,
        ),
        employeeId: deserializeParam(
          data['employee_id'],
          ParamType.int,
          false,
        ),
        punchtime: deserializeParam(
          data['punchtime'],
          ParamType.String,
          false,
        ),
        zkPunchId: deserializeParam(
          data['zk_punch_id'],
          ParamType.String,
          false,
        ),
        zkUserId: deserializeParam(
          data['zk_user_id'],
          ParamType.String,
          false,
        ),
        zkState: deserializeParam(
          data['zk_state'],
          ParamType.int,
          false,
        ),
        zkTimestamp: deserializeParam(
          data['zk_timestamp'],
          ParamType.String,
          false,
        ),
        zkType: deserializeParam(
          data['zk_type'],
          ParamType.int,
          false,
        ),
        deviceId: deserializeParam(
          data['device_id'],
          ParamType.int,
          false,
        ),
        ipAddress: deserializeParam(
          data['ip_address'],
          ParamType.String,
          false,
        ),
        lat: deserializeParam(
          data['lat'],
          ParamType.int,
          false,
        ),
        lng: deserializeParam(
          data['lng'],
          ParamType.int,
          false,
        ),
        shiftId: deserializeParam(
          data['shift_id'],
          ParamType.int,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        dayName: deserializeParam(
          data['day_name'],
          ParamType.String,
          false,
        ),
        old: deserializeParam(
          data['old'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CreateBunchStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CreateBunchStruct &&
        companyId == other.companyId &&
        departmentId == other.departmentId &&
        sectionId == other.sectionId &&
        employeeId == other.employeeId &&
        punchtime == other.punchtime &&
        zkPunchId == other.zkPunchId &&
        zkUserId == other.zkUserId &&
        zkState == other.zkState &&
        zkTimestamp == other.zkTimestamp &&
        zkType == other.zkType &&
        deviceId == other.deviceId &&
        ipAddress == other.ipAddress &&
        lat == other.lat &&
        lng == other.lng &&
        shiftId == other.shiftId &&
        updatedAt == other.updatedAt &&
        createdAt == other.createdAt &&
        id == other.id &&
        dayName == other.dayName &&
        old == other.old;
  }

  @override
  int get hashCode => const ListEquality().hash([
        companyId,
        departmentId,
        sectionId,
        employeeId,
        punchtime,
        zkPunchId,
        zkUserId,
        zkState,
        zkTimestamp,
        zkType,
        deviceId,
        ipAddress,
        lat,
        lng,
        shiftId,
        updatedAt,
        createdAt,
        id,
        dayName,
        old
      ]);
}

CreateBunchStruct createCreateBunchStruct({
  int? companyId,
  int? departmentId,
  int? sectionId,
  int? employeeId,
  String? punchtime,
  String? zkPunchId,
  String? zkUserId,
  int? zkState,
  String? zkTimestamp,
  int? zkType,
  int? deviceId,
  String? ipAddress,
  int? lat,
  int? lng,
  int? shiftId,
  String? updatedAt,
  String? createdAt,
  int? id,
  String? dayName,
  int? old,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CreateBunchStruct(
      companyId: companyId,
      departmentId: departmentId,
      sectionId: sectionId,
      employeeId: employeeId,
      punchtime: punchtime,
      zkPunchId: zkPunchId,
      zkUserId: zkUserId,
      zkState: zkState,
      zkTimestamp: zkTimestamp,
      zkType: zkType,
      deviceId: deviceId,
      ipAddress: ipAddress,
      lat: lat,
      lng: lng,
      shiftId: shiftId,
      updatedAt: updatedAt,
      createdAt: createdAt,
      id: id,
      dayName: dayName,
      old: old,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CreateBunchStruct? updateCreateBunchStruct(
  CreateBunchStruct? createBunch, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    createBunch
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCreateBunchStructData(
  Map<String, dynamic> firestoreData,
  CreateBunchStruct? createBunch,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (createBunch == null) {
    return;
  }
  if (createBunch.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && createBunch.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final createBunchData =
      getCreateBunchFirestoreData(createBunch, forFieldValue);
  final nestedData =
      createBunchData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = createBunch.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCreateBunchFirestoreData(
  CreateBunchStruct? createBunch, [
  bool forFieldValue = false,
]) {
  if (createBunch == null) {
    return {};
  }
  final firestoreData = mapToFirestore(createBunch.toMap());

  // Add any Firestore field values
  createBunch.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCreateBunchListFirestoreData(
  List<CreateBunchStruct>? createBunchs,
) =>
    createBunchs?.map((e) => getCreateBunchFirestoreData(e, true)).toList() ??
    [];
