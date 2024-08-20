// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataStruct extends FFFirebaseStruct {
  DataStruct({
    int? id,
    int? employeeId,
    String? startDate,
    String? endDate,
    String? daysCount,
    int? typeId,
    String? status,
    int? bulk,
    String? createdAt,
    String? updatedAt,
    String? vacationTypeName,
    String? attachmentFull,
    List<VacationsStruct>? vacations,
    EmployeeStruct? employee,
    VacationTypeStruct? vacationType,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _employeeId = employeeId,
        _startDate = startDate,
        _endDate = endDate,
        _daysCount = daysCount,
        _typeId = typeId,
        _status = status,
        _bulk = bulk,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _vacationTypeName = vacationTypeName,
        _attachmentFull = attachmentFull,
        _vacations = vacations,
        _employee = employee,
        _vacationType = vacationType,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "employee_id" field.
  int? _employeeId;
  int get employeeId => _employeeId ?? 0;
  set employeeId(int? val) => _employeeId = val;

  void incrementEmployeeId(int amount) => employeeId = employeeId + amount;

  bool hasEmployeeId() => _employeeId != null;

  // "start_date" field.
  String? _startDate;
  String get startDate => _startDate ?? '';
  set startDate(String? val) => _startDate = val;

  bool hasStartDate() => _startDate != null;

  // "end_date" field.
  String? _endDate;
  String get endDate => _endDate ?? '';
  set endDate(String? val) => _endDate = val;

  bool hasEndDate() => _endDate != null;

  // "days_count" field.
  String? _daysCount;
  String get daysCount => _daysCount ?? '';
  set daysCount(String? val) => _daysCount = val;

  bool hasDaysCount() => _daysCount != null;

  // "type_id" field.
  int? _typeId;
  int get typeId => _typeId ?? 0;
  set typeId(int? val) => _typeId = val;

  void incrementTypeId(int amount) => typeId = typeId + amount;

  bool hasTypeId() => _typeId != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "bulk" field.
  int? _bulk;
  int get bulk => _bulk ?? 0;
  set bulk(int? val) => _bulk = val;

  void incrementBulk(int amount) => bulk = bulk + amount;

  bool hasBulk() => _bulk != null;

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

  // "vacation_type_name" field.
  String? _vacationTypeName;
  String get vacationTypeName => _vacationTypeName ?? '';
  set vacationTypeName(String? val) => _vacationTypeName = val;

  bool hasVacationTypeName() => _vacationTypeName != null;

  // "attachment_full" field.
  String? _attachmentFull;
  String get attachmentFull => _attachmentFull ?? '';
  set attachmentFull(String? val) => _attachmentFull = val;

  bool hasAttachmentFull() => _attachmentFull != null;

  // "vacations" field.
  List<VacationsStruct>? _vacations;
  List<VacationsStruct> get vacations => _vacations ?? const [];
  set vacations(List<VacationsStruct>? val) => _vacations = val;

  void updateVacations(Function(List<VacationsStruct>) updateFn) {
    updateFn(_vacations ??= []);
  }

  bool hasVacations() => _vacations != null;

  // "employee" field.
  EmployeeStruct? _employee;
  EmployeeStruct get employee => _employee ?? EmployeeStruct();
  set employee(EmployeeStruct? val) => _employee = val;

  void updateEmployee(Function(EmployeeStruct) updateFn) {
    updateFn(_employee ??= EmployeeStruct());
  }

  bool hasEmployee() => _employee != null;

  // "vacation_type" field.
  VacationTypeStruct? _vacationType;
  VacationTypeStruct get vacationType => _vacationType ?? VacationTypeStruct();
  set vacationType(VacationTypeStruct? val) => _vacationType = val;

  void updateVacationType(Function(VacationTypeStruct) updateFn) {
    updateFn(_vacationType ??= VacationTypeStruct());
  }

  bool hasVacationType() => _vacationType != null;


  // @override
  // bool operator ==(Object other) =>
  //     identical(this, other) ||
  //         other is DataStruct &&
  //             runtimeType == other.runtimeType &&
  //             employeeId == other.employeeId;
  //
  // @override
  // int get hashCode => employeeId.hashCode;

  static DataStruct fromMap(Map<String, dynamic> data) => DataStruct(
        id: castToType<int>(data['id']),
        employeeId: castToType<int>(data['employee_id']),
        startDate: data['start_date'] as String?,
        endDate: data['end_date'] as String?,
        daysCount: data['days_count'] as String?,
        typeId: castToType<int>(data['type_id']),
        status: data['status'] as String?,
        bulk: castToType<int>(data['bulk']),
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
        vacationTypeName: data['vacation_type_name'] as String?,
        attachmentFull: data['attachment_full'] as String?,
        vacations: getStructList(
          data['vacations'],
          VacationsStruct.fromMap,
        ),
        employee: EmployeeStruct.maybeFromMap(data['employee']),
        vacationType: VacationTypeStruct.maybeFromMap(data['vacation_type']),
      );

  static DataStruct? maybeFromMap(dynamic data) =>
      data is Map ? DataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'employee_id': _employeeId,
        'start_date': _startDate,
        'end_date': _endDate,
        'days_count': _daysCount,
        'type_id': _typeId,
        'status': _status,
        'bulk': _bulk,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'vacation_type_name': _vacationTypeName,
        'attachment_full': _attachmentFull,
        'vacations': _vacations?.map((e) => e.toMap()).toList(),
        'employee': _employee?.toMap(),
        'vacation_type': _vacationType?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'employee_id': serializeParam(
          _employeeId,
          ParamType.int,
        ),
        'start_date': serializeParam(
          _startDate,
          ParamType.String,
        ),
        'end_date': serializeParam(
          _endDate,
          ParamType.String,
        ),
        'days_count': serializeParam(
          _daysCount,
          ParamType.String,
        ),
        'type_id': serializeParam(
          _typeId,
          ParamType.int,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'bulk': serializeParam(
          _bulk,
          ParamType.int,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'vacation_type_name': serializeParam(
          _vacationTypeName,
          ParamType.String,
        ),
        'attachment_full': serializeParam(
          _attachmentFull,
          ParamType.String,
        ),
        'vacations': serializeParam(
          _vacations,
          ParamType.DataStruct,
          isList: true,
        ),
        'employee': serializeParam(
          _employee,
          ParamType.DataStruct,
        ),
        'vacation_type': serializeParam(
          _vacationType,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static DataStruct fromSerializableMap(Map<String, dynamic> data) =>
      DataStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        employeeId: deserializeParam(
          data['employee_id'],
          ParamType.int,
          false,
        ),
        startDate: deserializeParam(
          data['start_date'],
          ParamType.String,
          false,
        ),
        endDate: deserializeParam(
          data['end_date'],
          ParamType.String,
          false,
        ),
        daysCount: deserializeParam(
          data['days_count'],
          ParamType.String,
          false,
        ),
        typeId: deserializeParam(
          data['type_id'],
          ParamType.int,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        bulk: deserializeParam(
          data['bulk'],
          ParamType.int,
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
        vacationTypeName: deserializeParam(
          data['vacation_type_name'],
          ParamType.String,
          false,
        ),
        attachmentFull: deserializeParam(
          data['attachment_full'],
          ParamType.String,
          false,
        ),
        vacations: deserializeStructParam<VacationsStruct>(
          data['vacations'],
          ParamType.DataStruct,
          true,
          structBuilder: VacationsStruct.fromSerializableMap,
        ),
        employee: deserializeStructParam(
          data['employee'],
          ParamType.DataStruct,
          false,
          structBuilder: EmployeeStruct.fromSerializableMap,
        ),
        vacationType: deserializeStructParam(
          data['vacation_type'],
          ParamType.DataStruct,
          false,
          structBuilder: VacationTypeStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'DataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DataStruct &&
        id == other.id &&
        employeeId == other.employeeId &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        daysCount == other.daysCount &&
        typeId == other.typeId &&
        status == other.status &&
        bulk == other.bulk &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        vacationTypeName == other.vacationTypeName &&
        attachmentFull == other.attachmentFull &&
        listEquality.equals(vacations, other.vacations) &&
        employee == other.employee &&
        vacationType == other.vacationType;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        employeeId,
        startDate,
        endDate,
        daysCount,
        typeId,
        status,
        bulk,
        createdAt,
        updatedAt,
        vacationTypeName,
        attachmentFull,
        vacations,
        employee,
        vacationType
      ]);
}

DataStruct createDataStruct({
  int? id,
  int? employeeId,
  String? startDate,
  String? endDate,
  String? daysCount,
  int? typeId,
  String? status,
  int? bulk,
  String? createdAt,
  String? updatedAt,
  String? vacationTypeName,
  String? attachmentFull,
  EmployeeStruct? employee,
  VacationTypeStruct? vacationType,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DataStruct(
      id: id,
      employeeId: employeeId,
      startDate: startDate,
      endDate: endDate,
      daysCount: daysCount,
      typeId: typeId,
      status: status,
      bulk: bulk,
      createdAt: createdAt,
      updatedAt: updatedAt,
      vacationTypeName: vacationTypeName,
      attachmentFull: attachmentFull,
      employee: employee ?? (clearUnsetFields ? EmployeeStruct() : null),
      vacationType:
          vacationType ?? (clearUnsetFields ? VacationTypeStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DataStruct? updateDataStruct(
  DataStruct? data, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    data
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDataStructData(
  Map<String, dynamic> firestoreData,
  DataStruct? data,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (data == null) {
    return;
  }
  if (data.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && data.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dataData = getDataFirestoreData(data, forFieldValue);
  final nestedData = dataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = data.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDataFirestoreData(
  DataStruct? data, [
  bool forFieldValue = false,
]) {
  if (data == null) {
    return {};
  }
  final firestoreData = mapToFirestore(data.toMap());

  // Handle nested data for "employee" field.
  addEmployeeStructData(
    firestoreData,
    data.hasEmployee() ? data.employee : null,
    'employee',
    forFieldValue,
  );

  // Handle nested data for "vacation_type" field.
  addVacationTypeStructData(
    firestoreData,
    data.hasVacationType() ? data.vacationType : null,
    'vacation_type',
    forFieldValue,
  );

  // Add any Firestore field values
  data.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDataListFirestoreData(
  List<DataStruct>? datas,
) =>
    datas?.map((e) => getDataFirestoreData(e, true)).toList() ?? [];
