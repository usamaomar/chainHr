// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VacationsStruct extends FFFirebaseStruct {
  VacationsStruct({
    int? id,
    int? employeeId,
    String? amountInMin,
    String? startDate,
    String? endDate,
    int? typeId,
    String? attachment,
    int? bulkId,
    int? bulk,
    String? status,
    String? deletedAt,
    String? createdAt,
    String? updatedAt,
    String? deletedBy,
    String? vacationTypeName,
    String? day,
    String? dayName,
    String? attachmentFull,
    VacationTypeStruct? vacationType,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _employeeId = employeeId,
        _amountInMin = amountInMin,
        _startDate = startDate,
        _endDate = endDate,
        _typeId = typeId,
        _attachment = attachment,
        _bulkId = bulkId,
        _bulk = bulk,
        _status = status,
        _deletedAt = deletedAt,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _deletedBy = deletedBy,
        _vacationTypeName = vacationTypeName,
        _day = day,
        _dayName = dayName,
        _attachmentFull = attachmentFull,
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

  // "amount_in_min" field.
  String? _amountInMin;
  String get amountInMin => _amountInMin ?? '';
  set amountInMin(String? val) => _amountInMin = val;

  bool hasAmountInMin() => _amountInMin != null;

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

  // "type_id" field.
  int? _typeId;
  int get typeId => _typeId ?? 0;
  set typeId(int? val) => _typeId = val;

  void incrementTypeId(int amount) => typeId = typeId + amount;

  bool hasTypeId() => _typeId != null;

  // "attachment" field.
  String? _attachment;
  String get attachment => _attachment ?? '';
  set attachment(String? val) => _attachment = val;

  bool hasAttachment() => _attachment != null;

  // "bulk_id" field.
  int? _bulkId;
  int get bulkId => _bulkId ?? 0;
  set bulkId(int? val) => _bulkId = val;

  void incrementBulkId(int amount) => bulkId = bulkId + amount;

  bool hasBulkId() => _bulkId != null;

  // "bulk" field.
  int? _bulk;
  int get bulk => _bulk ?? 0;
  set bulk(int? val) => _bulk = val;

  void incrementBulk(int amount) => bulk = bulk + amount;

  bool hasBulk() => _bulk != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "deleted_at" field.
  String? _deletedAt;
  String get deletedAt => _deletedAt ?? '';
  set deletedAt(String? val) => _deletedAt = val;

  bool hasDeletedAt() => _deletedAt != null;

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

  // "deleted_by" field.
  String? _deletedBy;
  String get deletedBy => _deletedBy ?? '';
  set deletedBy(String? val) => _deletedBy = val;

  bool hasDeletedBy() => _deletedBy != null;

  // "vacationTypeName" field.
  String? _vacationTypeName;
  String get vacationTypeName => _vacationTypeName ?? '';
  set vacationTypeName(String? val) => _vacationTypeName = val;

  bool hasVacationTypeName() => _vacationTypeName != null;

  // "day" field.
  String? _day;
  String get day => _day ?? '';
  set day(String? val) => _day = val;

  bool hasDay() => _day != null;

  // "day_name" field.
  String? _dayName;
  String get dayName => _dayName ?? '';
  set dayName(String? val) => _dayName = val;

  bool hasDayName() => _dayName != null;

  // "attachment_full" field.
  String? _attachmentFull;
  String get attachmentFull => _attachmentFull ?? '';
  set attachmentFull(String? val) => _attachmentFull = val;

  bool hasAttachmentFull() => _attachmentFull != null;

  // "vacation_type" field.
  VacationTypeStruct? _vacationType;
  VacationTypeStruct get vacationType => _vacationType ?? VacationTypeStruct();
  set vacationType(VacationTypeStruct? val) => _vacationType = val;

  void updateVacationType(Function(VacationTypeStruct) updateFn) {
    updateFn(_vacationType ??= VacationTypeStruct());
  }

  bool hasVacationType() => _vacationType != null;

  static VacationsStruct fromMap(Map<String, dynamic> data) => VacationsStruct(
        id: castToType<int>(data['id']),
        employeeId: castToType<int>(data['employee_id']),
        amountInMin: data['amount_in_min'] as String?,
        startDate: data['start_date'] as String?,
        endDate: data['end_date'] as String?,
        typeId: castToType<int>(data['type_id']),
        attachment: data['attachment'] as String?,
        bulkId: castToType<int>(data['bulk_id']),
        bulk: castToType<int>(data['bulk']),
        status: data['status'] as String?,
        deletedAt: data['deleted_at'] as String?,
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
        deletedBy: data['deleted_by'] as String?,
        vacationTypeName: data['vacationTypeName'] as String?,
        day: data['day'] as String?,
        dayName: data['day_name'] as String?,
        // attachmentFull: data['attachment_full'] as String?,
        vacationType: VacationTypeStruct.maybeFromMap(data['vacation_type']),
      );

  static VacationsStruct? maybeFromMap(dynamic data) => data is Map
      ? VacationsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'employee_id': _employeeId,
        'amount_in_min': _amountInMin,
        'start_date': _startDate,
        'end_date': _endDate,
        'type_id': _typeId,
        'attachment': _attachment,
        'bulk_id': _bulkId,
        'bulk': _bulk,
        'status': _status,
        'deleted_at': _deletedAt,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'deleted_by': _deletedBy,
        'vacationTypeName': _vacationTypeName,
        'day': _day,
        'day_name': _dayName,
        'attachment_full': _attachmentFull,
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
        'amount_in_min': serializeParam(
          _amountInMin,
          ParamType.String,
        ),
        'start_date': serializeParam(
          _startDate,
          ParamType.String,
        ),
        'end_date': serializeParam(
          _endDate,
          ParamType.String,
        ),
        'type_id': serializeParam(
          _typeId,
          ParamType.int,
        ),
        'attachment': serializeParam(
          _attachment,
          ParamType.String,
        ),
        'bulk_id': serializeParam(
          _bulkId,
          ParamType.int,
        ),
        'bulk': serializeParam(
          _bulk,
          ParamType.int,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'deleted_at': serializeParam(
          _deletedAt,
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
        'deleted_by': serializeParam(
          _deletedBy,
          ParamType.String,
        ),
        'vacationTypeName': serializeParam(
          _vacationTypeName,
          ParamType.String,
        ),
        'day': serializeParam(
          _day,
          ParamType.String,
        ),
        'day_name': serializeParam(
          _dayName,
          ParamType.String,
        ),
        'attachment_full': serializeParam(
          _attachmentFull,
          ParamType.String,
        ),
        'vacation_type': serializeParam(
          _vacationType,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static VacationsStruct fromSerializableMap(Map<String, dynamic> data) =>
      VacationsStruct(
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
        amountInMin: deserializeParam(
          data['amount_in_min'],
          ParamType.String,
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
        typeId: deserializeParam(
          data['type_id'],
          ParamType.int,
          false,
        ),
        attachment: deserializeParam(
          data['attachment'],
          ParamType.String,
          false,
        ),
        bulkId: deserializeParam(
          data['bulk_id'],
          ParamType.int,
          false,
        ),
        bulk: deserializeParam(
          data['bulk'],
          ParamType.int,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        deletedAt: deserializeParam(
          data['deleted_at'],
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
        deletedBy: deserializeParam(
          data['deleted_by'],
          ParamType.String,
          false,
        ),
        vacationTypeName: deserializeParam(
          data['vacationTypeName'],
          ParamType.String,
          false,
        ),
        day: deserializeParam(
          data['day'],
          ParamType.String,
          false,
        ),
        dayName: deserializeParam(
          data['day_name'],
          ParamType.String,
          false,
        ),
        attachmentFull: deserializeParam(
          data['attachment_full'],
          ParamType.String,
          false,
        ),
        vacationType: deserializeStructParam(
          data['vacation_type'],
          ParamType.DataStruct,
          false,
          structBuilder: VacationTypeStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'VacationsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VacationsStruct &&
        id == other.id &&
        employeeId == other.employeeId &&
        amountInMin == other.amountInMin &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        typeId == other.typeId &&
        attachment == other.attachment &&
        bulkId == other.bulkId &&
        bulk == other.bulk &&
        status == other.status &&
        deletedAt == other.deletedAt &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        deletedBy == other.deletedBy &&
        vacationTypeName == other.vacationTypeName &&
        day == other.day &&
        dayName == other.dayName &&
        attachmentFull == other.attachmentFull &&
        vacationType == other.vacationType;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        employeeId,
        amountInMin,
        startDate,
        endDate,
        typeId,
        attachment,
        bulkId,
        bulk,
        status,
        deletedAt,
        createdAt,
        updatedAt,
        deletedBy,
        vacationTypeName,
        day,
        dayName,
        attachmentFull,
        vacationType
      ]);
}

VacationsStruct createVacationsStruct({
  int? id,
  int? employeeId,
  String? amountInMin,
  String? startDate,
  String? endDate,
  int? typeId,
  String? attachment,
  int? bulkId,
  int? bulk,
  String? status,
  String? deletedAt,
  String? createdAt,
  String? updatedAt,
  String? deletedBy,
  String? vacationTypeName,
  String? day,
  String? dayName,
  String? attachmentFull,
  VacationTypeStruct? vacationType,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    VacationsStruct(
      id: id,
      employeeId: employeeId,
      amountInMin: amountInMin,
      startDate: startDate,
      endDate: endDate,
      typeId: typeId,
      attachment: attachment,
      bulkId: bulkId,
      bulk: bulk,
      status: status,
      deletedAt: deletedAt,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedBy: deletedBy,
      vacationTypeName: vacationTypeName,
      day: day,
      dayName: dayName,
      attachmentFull: attachmentFull,
      vacationType:
          vacationType ?? (clearUnsetFields ? VacationTypeStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

VacationsStruct? updateVacationsStruct(
  VacationsStruct? vacations, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    vacations
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addVacationsStructData(
  Map<String, dynamic> firestoreData,
  VacationsStruct? vacations,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (vacations == null) {
    return;
  }
  if (vacations.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && vacations.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final vacationsData = getVacationsFirestoreData(vacations, forFieldValue);
  final nestedData = vacationsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = vacations.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getVacationsFirestoreData(
  VacationsStruct? vacations, [
  bool forFieldValue = false,
]) {
  if (vacations == null) {
    return {};
  }
  final firestoreData = mapToFirestore(vacations.toMap());

  // Handle nested data for "vacation_type" field.
  addVacationTypeStructData(
    firestoreData,
    vacations.hasVacationType() ? vacations.vacationType : null,
    'vacation_type',
    forFieldValue,
  );

  // Add any Firestore field values
  vacations.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getVacationsListFirestoreData(
  List<VacationsStruct>? vacationss,
) =>
    vacationss?.map((e) => getVacationsFirestoreData(e, true)).toList() ?? [];
