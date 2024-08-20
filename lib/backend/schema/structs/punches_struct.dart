// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class PunchesStruct extends FFFirebaseStruct {
  PunchesStruct({
    int? id,
    int? companyId,
    int? departmentId,
    int? sectionId,
    int? employeeId,
    String? punchtime,
    int? zkPunchId,
    int? zkUserId,
    int? zkState,
    String? zkTimestamp,
    int? zkType,
    int? deviceId,
    String? ipAddress,
    String? lat,
    String? lng,
    String? createdAt,
    String? updatedAt,
    String? status,
    int? shiftId,
    String? dayName,
    int? old,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _companyId = companyId,
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
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _status = status,
        _shiftId = shiftId,
        _dayName = dayName,
        _old = old,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

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
  int? _zkPunchId;
  int get zkPunchId => _zkPunchId ?? 0;
  set zkPunchId(int? val) => _zkPunchId = val;

  void incrementZkPunchId(int amount) => zkPunchId = zkPunchId + amount;

  bool hasZkPunchId() => _zkPunchId != null;

  // "zk_user_id" field.
  int? _zkUserId;
  int get zkUserId => _zkUserId ?? 0;
  set zkUserId(int? val) => _zkUserId = val;

  void incrementZkUserId(int amount) => zkUserId = zkUserId + amount;

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
  String? _lat;
  String get lat => _lat ?? '';
  set lat(String? val) => _lat = val;

  bool hasLat() => _lat != null;

  // "lng" field.
  String? _lng;
  String get lng => _lng ?? '';
  set lng(String? val) => _lng = val;

  bool hasLng() => _lng != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "shift_id" field.
  int? _shiftId;
  int get shiftId => _shiftId ?? 0;
  set shiftId(int? val) => _shiftId = val;

  void incrementShiftId(int amount) => shiftId = shiftId + amount;

  bool hasShiftId() => _shiftId != null;

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

  static PunchesStruct fromMap(Map<String, dynamic> data) => PunchesStruct(
        id: castToType<int>(data['id']),
        companyId: castToType<int>(data['company_id']),
        departmentId: castToType<int>(data['department_id']),
        sectionId: castToType<int>(data['section_id']),
        employeeId: castToType<int>(data['employee_id']),
        punchtime: data['punchtime'] as String?,
        zkPunchId: castToType<int>(data['zk_punch_id']),
        zkUserId: castToType<int>(data['zk_user_id']),
        zkState: castToType<int>(data['zk_state']),
        zkTimestamp: data['zk_timestamp'] as String?,
        zkType: castToType<int>(data['zk_type']),
        deviceId: castToType<int>(data['device_id']),
        ipAddress: data['ip_address'] as String?,
        lat: data['lat'] as String?,
        lng: data['lng'] as String?,
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
        status: data['status'] as String?,
        shiftId: castToType<int>(data['shift_id']),
        dayName: data['day_name'] as String?,
        old: castToType<int>(data['old']),
      );

  static PunchesStruct? maybeFromMap(dynamic data) =>
      data is Map ? PunchesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
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
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'status': _status,
        'shift_id': _shiftId,
        'day_name': _dayName,
        'old': _old,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
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
          ParamType.int,
        ),
        'zk_user_id': serializeParam(
          _zkUserId,
          ParamType.int,
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
          ParamType.String,
        ),
        'lng': serializeParam(
          _lng,
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
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'shift_id': serializeParam(
          _shiftId,
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

  static PunchesStruct fromSerializableMap(Map<String, dynamic> data) =>
      PunchesStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
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
          ParamType.int,
          false,
        ),
        zkUserId: deserializeParam(
          data['zk_user_id'],
          ParamType.int,
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
          ParamType.String,
          false,
        ),
        lng: deserializeParam(
          data['lng'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        shiftId: deserializeParam(
          data['shift_id'],
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
  String toString() => 'PunchesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PunchesStruct &&
        id == other.id &&
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
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        status == other.status &&
        shiftId == other.shiftId &&
        dayName == other.dayName &&
        old == other.old;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
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
        createdAt,
        updatedAt,
        status,
        shiftId,
        dayName,
        old
      ]);
}

PunchesStruct createPunchesStruct({
  int? id,
  int? companyId,
  int? departmentId,
  int? sectionId,
  int? employeeId,
  String? punchtime,
  int? zkPunchId,
  int? zkUserId,
  int? zkState,
  String? zkTimestamp,
  int? zkType,
  int? deviceId,
  String? ipAddress,
  String? lat,
  String? lng,
  String? createdAt,
  String? updatedAt,
  String? status,
  int? shiftId,
  String? dayName,
  int? old,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PunchesStruct(
      id: id,
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
      createdAt: createdAt,
      updatedAt: updatedAt,
      status: status,
      shiftId: shiftId,
      dayName: dayName,
      old: old,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PunchesStruct? updatePunchesStruct(
  PunchesStruct? punches, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    punches
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPunchesStructData(
  Map<String, dynamic> firestoreData,
  PunchesStruct? punches,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (punches == null) {
    return;
  }
  if (punches.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && punches.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final punchesData = getPunchesFirestoreData(punches, forFieldValue);
  final nestedData = punchesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = punches.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPunchesFirestoreData(
  PunchesStruct? punches, [
  bool forFieldValue = false,
]) {
  if (punches == null) {
    return {};
  }
  final firestoreData = mapToFirestore(punches.toMap());

  // Add any Firestore field values
  punches.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPunchesListFirestoreData(
  List<PunchesStruct>? punchess,
) =>
    punchess?.map((e) => getPunchesFirestoreData(e, true)).toList() ?? [];
