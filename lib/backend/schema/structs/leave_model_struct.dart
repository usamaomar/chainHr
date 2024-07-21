// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LeaveModelStruct extends FFFirebaseStruct {
  LeaveModelStruct({
    int? id,
    int? employeeId,
    String? amountInMin,
    String? startDate,
    String? endDate,
    int? typeId,
    String? reason,
    String? description,
    String? createdAt,
    String? updatedAt,
    String? status,
    String? deletedBy,
    String? deletedAt,
    String? attachment,
    String? attachmentFull,
    TypeStruct? type,
    EmployeeStruct? employee,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _employeeId = employeeId,
        _amountInMin = amountInMin,
        _startDate = startDate,
        _endDate = endDate,
        _typeId = typeId,
        _reason = reason,
        _description = description,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _status = status,
        _deletedBy = deletedBy,
        _deletedAt = deletedAt,
        _attachment = attachment,
        _attachmentFull = attachmentFull,
        _type = type,
        _employee = employee,
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

  // "reason" field.
  String? _reason;
  String get reason => _reason ?? '';
  set reason(String? val) => _reason = val;

  bool hasReason() => _reason != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

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

  // "deleted_by" field.
  String? _deletedBy;
  String get deletedBy => _deletedBy ?? '';
  set deletedBy(String? val) => _deletedBy = val;

  bool hasDeletedBy() => _deletedBy != null;

  // "deleted_at" field.
  String? _deletedAt;
  String get deletedAt => _deletedAt ?? '';
  set deletedAt(String? val) => _deletedAt = val;

  bool hasDeletedAt() => _deletedAt != null;

  // "attachment" field.
  String? _attachment;
  String get attachment => _attachment ?? '';
  set attachment(String? val) => _attachment = val;

  bool hasAttachment() => _attachment != null;

  // "attachment_full" field.
  String? _attachmentFull;
  String get attachmentFull => _attachmentFull ?? '';
  set attachmentFull(String? val) => _attachmentFull = val;

  bool hasAttachmentFull() => _attachmentFull != null;

  // "type" field.
  TypeStruct? _type;
  TypeStruct get type => _type ?? TypeStruct();
  set type(TypeStruct? val) => _type = val;

  void updateType(Function(TypeStruct) updateFn) {
    updateFn(_type ??= TypeStruct());
  }

  bool hasType() => _type != null;

  // "employee" field.
  EmployeeStruct? _employee;
  EmployeeStruct get employee => _employee ?? EmployeeStruct();
  set employee(EmployeeStruct? val) => _employee = val;

  void updateEmployee(Function(EmployeeStruct) updateFn) {
    updateFn(_employee ??= EmployeeStruct());
  }

  bool hasEmployee() => _employee != null;

  static LeaveModelStruct fromMap(Map<String, dynamic> data) =>
      LeaveModelStruct(
        id: castToType<int>(data['id']),
        employeeId: castToType<int>(data['employee_id']),
        amountInMin: data['amount_in_min'] as String?,
        startDate: data['start_date'] as String?,
        endDate: data['end_date'] as String?,
        typeId: castToType<int>(data['type_id']),
        reason: data['reason'] as String?,
        description: data['description'] as String?,
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
        status: data['status'] as String?,
        deletedBy: data['deleted_by'] as String?,
        deletedAt: data['deleted_at'] as String?,
        attachment: data['attachment'] as String?,
        attachmentFull: data['attachment_full'] as String?,
        type: TypeStruct.maybeFromMap(data['type']),
        employee: EmployeeStruct.maybeFromMap(data['employee']),
      );

  static LeaveModelStruct? maybeFromMap(dynamic data) => data is Map
      ? LeaveModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'employee_id': _employeeId,
        'amount_in_min': _amountInMin,
        'start_date': _startDate,
        'end_date': _endDate,
        'type_id': _typeId,
        'reason': _reason,
        'description': _description,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'status': _status,
        'deleted_by': _deletedBy,
        'deleted_at': _deletedAt,
        'attachment': _attachment,
        'attachment_full': _attachmentFull,
        'type': _type?.toMap(),
        'employee': _employee?.toMap(),
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
        'reason': serializeParam(
          _reason,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
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
        'deleted_by': serializeParam(
          _deletedBy,
          ParamType.String,
        ),
        'deleted_at': serializeParam(
          _deletedAt,
          ParamType.String,
        ),
        'attachment': serializeParam(
          _attachment,
          ParamType.String,
        ),
        'attachment_full': serializeParam(
          _attachmentFull,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.DataStruct,
        ),
        'employee': serializeParam(
          _employee,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static LeaveModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      LeaveModelStruct(
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
        reason: deserializeParam(
          data['reason'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
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
        deletedBy: deserializeParam(
          data['deleted_by'],
          ParamType.String,
          false,
        ),
        deletedAt: deserializeParam(
          data['deleted_at'],
          ParamType.String,
          false,
        ),
        attachment: deserializeParam(
          data['attachment'],
          ParamType.String,
          false,
        ),
        attachmentFull: deserializeParam(
          data['attachment_full'],
          ParamType.String,
          false,
        ),
        type: deserializeStructParam(
          data['type'],
          ParamType.DataStruct,
          false,
          structBuilder: TypeStruct.fromSerializableMap,
        ),
        employee: deserializeStructParam(
          data['employee'],
          ParamType.DataStruct,
          false,
          structBuilder: EmployeeStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'LeaveModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LeaveModelStruct &&
        id == other.id &&
        employeeId == other.employeeId &&
        amountInMin == other.amountInMin &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        typeId == other.typeId &&
        reason == other.reason &&
        description == other.description &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        status == other.status &&
        deletedBy == other.deletedBy &&
        deletedAt == other.deletedAt &&
        attachment == other.attachment &&
        attachmentFull == other.attachmentFull &&
        type == other.type &&
        employee == other.employee;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        employeeId,
        amountInMin,
        startDate,
        endDate,
        typeId,
        reason,
        description,
        createdAt,
        updatedAt,
        status,
        deletedBy,
        deletedAt,
        attachment,
        attachmentFull,
        type,
        employee
      ]);
}

LeaveModelStruct createLeaveModelStruct({
  int? id,
  int? employeeId,
  String? amountInMin,
  String? startDate,
  String? endDate,
  int? typeId,
  String? reason,
  String? description,
  String? createdAt,
  String? updatedAt,
  String? status,
  String? deletedBy,
  String? deletedAt,
  String? attachment,
  String? attachmentFull,
  TypeStruct? type,
  EmployeeStruct? employee,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LeaveModelStruct(
      id: id,
      employeeId: employeeId,
      amountInMin: amountInMin,
      startDate: startDate,
      endDate: endDate,
      typeId: typeId,
      reason: reason,
      description: description,
      createdAt: createdAt,
      updatedAt: updatedAt,
      status: status,
      deletedBy: deletedBy,
      deletedAt: deletedAt,
      attachment: attachment,
      attachmentFull: attachmentFull,
      type: type ?? (clearUnsetFields ? TypeStruct() : null),
      employee: employee ?? (clearUnsetFields ? EmployeeStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LeaveModelStruct? updateLeaveModelStruct(
  LeaveModelStruct? leaveModel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    leaveModel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLeaveModelStructData(
  Map<String, dynamic> firestoreData,
  LeaveModelStruct? leaveModel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (leaveModel == null) {
    return;
  }
  if (leaveModel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && leaveModel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final leaveModelData = getLeaveModelFirestoreData(leaveModel, forFieldValue);
  final nestedData = leaveModelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = leaveModel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLeaveModelFirestoreData(
  LeaveModelStruct? leaveModel, [
  bool forFieldValue = false,
]) {
  if (leaveModel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(leaveModel.toMap());

  // Handle nested data for "type" field.
  addTypeStructData(
    firestoreData,
    leaveModel.hasType() ? leaveModel.type : null,
    'type',
    forFieldValue,
  );

  // Handle nested data for "employee" field.
  addEmployeeStructData(
    firestoreData,
    leaveModel.hasEmployee() ? leaveModel.employee : null,
    'employee',
    forFieldValue,
  );

  // Add any Firestore field values
  leaveModel.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLeaveModelListFirestoreData(
  List<LeaveModelStruct>? leaveModels,
) =>
    leaveModels?.map((e) => getLeaveModelFirestoreData(e, true)).toList() ?? [];
