// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AttendancePeriodsStruct extends FFFirebaseStruct {
  AttendancePeriodsStruct({
    int? id,
    int? companyId,
    int? departmentId,
    int? sectionId,
    int? employeeId,
    String? startTime,
    String? endTime,
    String? originalStartTime,
    String? originalEndTime,
    int? periodInMin,
    String? leaveId,
    String? vacationId,
    String? periodType,
    String? createdAt,
    String? updatedAt,
    int? shiftId,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _companyId = companyId,
        _departmentId = departmentId,
        _sectionId = sectionId,
        _employeeId = employeeId,
        _startTime = startTime,
        _endTime = endTime,
        _originalStartTime = originalStartTime,
        _originalEndTime = originalEndTime,
        _periodInMin = periodInMin,
        _leaveId = leaveId,
        _vacationId = vacationId,
        _periodType = periodType,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _shiftId = shiftId,
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

  // "start_time" field.
  String? _startTime;
  String get startTime => _startTime ?? '';
  set startTime(String? val) => _startTime = val;

  bool hasStartTime() => _startTime != null;

  // "end_time" field.
  String? _endTime;
  String get endTime => _endTime ?? '';
  set endTime(String? val) => _endTime = val;

  bool hasEndTime() => _endTime != null;

  // "original_start_time" field.
  String? _originalStartTime;
  String get originalStartTime => _originalStartTime ?? '';
  set originalStartTime(String? val) => _originalStartTime = val;

  bool hasOriginalStartTime() => _originalStartTime != null;

  // "original_end_time" field.
  String? _originalEndTime;
  String get originalEndTime => _originalEndTime ?? '';
  set originalEndTime(String? val) => _originalEndTime = val;

  bool hasOriginalEndTime() => _originalEndTime != null;

  // "period_in_min" field.
  int? _periodInMin;
  int get periodInMin => _periodInMin ?? 0;
  set periodInMin(int? val) => _periodInMin = val;

  void incrementPeriodInMin(int amount) => periodInMin = periodInMin + amount;

  bool hasPeriodInMin() => _periodInMin != null;

  // "leave_id" field.
  String? _leaveId;
  String get leaveId => _leaveId ?? '';
  set leaveId(String? val) => _leaveId = val;

  bool hasLeaveId() => _leaveId != null;

  // "vacation_id" field.
  String? _vacationId;
  String get vacationId => _vacationId ?? '';
  set vacationId(String? val) => _vacationId = val;

  bool hasVacationId() => _vacationId != null;

  // "period_type" field.
  String? _periodType;
  String get periodType => _periodType ?? '';
  set periodType(String? val) => _periodType = val;

  bool hasPeriodType() => _periodType != null;

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

  // "shift_id" field.
  int? _shiftId;
  int get shiftId => _shiftId ?? 0;
  set shiftId(int? val) => _shiftId = val;

  void incrementShiftId(int amount) => shiftId = shiftId + amount;

  bool hasShiftId() => _shiftId != null;

  static AttendancePeriodsStruct fromMap(Map<String, dynamic> data) =>
      AttendancePeriodsStruct(
        id: castToType<int>(data['id']),
        companyId: castToType<int>(data['company_id']),
        departmentId: castToType<int>(data['department_id']),
        sectionId: castToType<int>(data['section_id']),
        employeeId: castToType<int>(data['employee_id']),
        startTime: data['start_time'] as String?,
        endTime: data['end_time'] as String?,
        originalStartTime: data['original_start_time'] as String?,
        originalEndTime: data['original_end_time'] as String?,
        periodInMin: castToType<int>(data['period_in_min']),
        leaveId: data['leave_id'] as String?,
        vacationId: data['vacation_id'] as String?,
        periodType: data['period_type'] as String?,
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
        shiftId: castToType<int>(data['shift_id']),
      );

  static AttendancePeriodsStruct? maybeFromMap(dynamic data) => data is Map
      ? AttendancePeriodsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'company_id': _companyId,
        'department_id': _departmentId,
        'section_id': _sectionId,
        'employee_id': _employeeId,
        'start_time': _startTime,
        'end_time': _endTime,
        'original_start_time': _originalStartTime,
        'original_end_time': _originalEndTime,
        'period_in_min': _periodInMin,
        'leave_id': _leaveId,
        'vacation_id': _vacationId,
        'period_type': _periodType,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'shift_id': _shiftId,
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
        'start_time': serializeParam(
          _startTime,
          ParamType.String,
        ),
        'end_time': serializeParam(
          _endTime,
          ParamType.String,
        ),
        'original_start_time': serializeParam(
          _originalStartTime,
          ParamType.String,
        ),
        'original_end_time': serializeParam(
          _originalEndTime,
          ParamType.String,
        ),
        'period_in_min': serializeParam(
          _periodInMin,
          ParamType.int,
        ),
        'leave_id': serializeParam(
          _leaveId,
          ParamType.String,
        ),
        'vacation_id': serializeParam(
          _vacationId,
          ParamType.String,
        ),
        'period_type': serializeParam(
          _periodType,
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
        'shift_id': serializeParam(
          _shiftId,
          ParamType.int,
        ),
      }.withoutNulls;

  static AttendancePeriodsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AttendancePeriodsStruct(
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
        startTime: deserializeParam(
          data['start_time'],
          ParamType.String,
          false,
        ),
        endTime: deserializeParam(
          data['end_time'],
          ParamType.String,
          false,
        ),
        originalStartTime: deserializeParam(
          data['original_start_time'],
          ParamType.String,
          false,
        ),
        originalEndTime: deserializeParam(
          data['original_end_time'],
          ParamType.String,
          false,
        ),
        periodInMin: deserializeParam(
          data['period_in_min'],
          ParamType.int,
          false,
        ),
        leaveId: deserializeParam(
          data['leave_id'],
          ParamType.String,
          false,
        ),
        vacationId: deserializeParam(
          data['vacation_id'],
          ParamType.String,
          false,
        ),
        periodType: deserializeParam(
          data['period_type'],
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
        shiftId: deserializeParam(
          data['shift_id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'AttendancePeriodsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AttendancePeriodsStruct &&
        id == other.id &&
        companyId == other.companyId &&
        departmentId == other.departmentId &&
        sectionId == other.sectionId &&
        employeeId == other.employeeId &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        originalStartTime == other.originalStartTime &&
        originalEndTime == other.originalEndTime &&
        periodInMin == other.periodInMin &&
        leaveId == other.leaveId &&
        vacationId == other.vacationId &&
        periodType == other.periodType &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        shiftId == other.shiftId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        companyId,
        departmentId,
        sectionId,
        employeeId,
        startTime,
        endTime,
        originalStartTime,
        originalEndTime,
        periodInMin,
        leaveId,
        vacationId,
        periodType,
        createdAt,
        updatedAt,
        shiftId
      ]);
}

AttendancePeriodsStruct createAttendancePeriodsStruct({
  int? id,
  int? companyId,
  int? departmentId,
  int? sectionId,
  int? employeeId,
  String? startTime,
  String? endTime,
  String? originalStartTime,
  String? originalEndTime,
  int? periodInMin,
  String? leaveId,
  String? vacationId,
  String? periodType,
  String? createdAt,
  String? updatedAt,
  int? shiftId,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AttendancePeriodsStruct(
      id: id,
      companyId: companyId,
      departmentId: departmentId,
      sectionId: sectionId,
      employeeId: employeeId,
      startTime: startTime,
      endTime: endTime,
      originalStartTime: originalStartTime,
      originalEndTime: originalEndTime,
      periodInMin: periodInMin,
      leaveId: leaveId,
      vacationId: vacationId,
      periodType: periodType,
      createdAt: createdAt,
      updatedAt: updatedAt,
      shiftId: shiftId,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AttendancePeriodsStruct? updateAttendancePeriodsStruct(
  AttendancePeriodsStruct? attendancePeriods, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    attendancePeriods
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAttendancePeriodsStructData(
  Map<String, dynamic> firestoreData,
  AttendancePeriodsStruct? attendancePeriods,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (attendancePeriods == null) {
    return;
  }
  if (attendancePeriods.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && attendancePeriods.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final attendancePeriodsData =
      getAttendancePeriodsFirestoreData(attendancePeriods, forFieldValue);
  final nestedData =
      attendancePeriodsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = attendancePeriods.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAttendancePeriodsFirestoreData(
  AttendancePeriodsStruct? attendancePeriods, [
  bool forFieldValue = false,
]) {
  if (attendancePeriods == null) {
    return {};
  }
  final firestoreData = mapToFirestore(attendancePeriods.toMap());

  // Add any Firestore field values
  attendancePeriods.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAttendancePeriodsListFirestoreData(
  List<AttendancePeriodsStruct>? attendancePeriodss,
) =>
    attendancePeriodss
        ?.map((e) => getAttendancePeriodsFirestoreData(e, true))
        .toList() ??
    [];
