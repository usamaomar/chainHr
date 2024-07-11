// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class EmploymentInfoModelStruct extends FFFirebaseStruct {
  EmploymentInfoModelStruct({
    int? departmentId,
    int? sectionId,
    int? designationId,
    String? designation,
    String? hiringDate,
    String? reportedTo,
    int? reportedToId,
    String? contractType,
    String? contractTypeId,
    String? jobDescription,
    int? shiftId,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _departmentId = departmentId,
        _sectionId = sectionId,
        _designationId = designationId,
        _designation = designation,
        _hiringDate = hiringDate,
        _reportedTo = reportedTo,
        _reportedToId = reportedToId,
        _contractType = contractType,
        _contractTypeId = contractTypeId,
        _jobDescription = jobDescription,
        _shiftId = shiftId,
        super(firestoreUtilData);

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

  // "designation_id" field.
  int? _designationId;
  int get designationId => _designationId ?? 0;
  set designationId(int? val) => _designationId = val;

  void incrementDesignationId(int amount) =>
      designationId = designationId + amount;

  bool hasDesignationId() => _designationId != null;

  // "designation" field.
  String? _designation;
  String get designation => _designation ?? '';
  set designation(String? val) => _designation = val;

  bool hasDesignation() => _designation != null;

  // "hiring_date" field.
  String? _hiringDate;
  String get hiringDate => _hiringDate ?? '';
  set hiringDate(String? val) => _hiringDate = val;

  bool hasHiringDate() => _hiringDate != null;

  // "reportedTo" field.
  String? _reportedTo;
  String get reportedTo => _reportedTo ?? '';
  set reportedTo(String? val) => _reportedTo = val;

  bool hasReportedTo() => _reportedTo != null;

  // "reportedTo_id" field.
  int? _reportedToId;
  int get reportedToId => _reportedToId ?? 0;
  set reportedToId(int? val) => _reportedToId = val;

  void incrementReportedToId(int amount) =>
      reportedToId = reportedToId + amount;

  bool hasReportedToId() => _reportedToId != null;

  // "contract_type" field.
  String? _contractType;
  String get contractType => _contractType ?? '';
  set contractType(String? val) => _contractType = val;

  bool hasContractType() => _contractType != null;

  // "contract_type_id" field.
  String? _contractTypeId;
  String get contractTypeId => _contractTypeId ?? '';
  set contractTypeId(String? val) => _contractTypeId = val;

  bool hasContractTypeId() => _contractTypeId != null;

  // "job_description" field.
  String? _jobDescription;
  String get jobDescription => _jobDescription ?? '';
  set jobDescription(String? val) => _jobDescription = val;

  bool hasJobDescription() => _jobDescription != null;

  // "shift_id" field.
  int? _shiftId;
  int get shiftId => _shiftId ?? 0;
  set shiftId(int? val) => _shiftId = val;

  void incrementShiftId(int amount) => shiftId = shiftId + amount;

  bool hasShiftId() => _shiftId != null;

  static EmploymentInfoModelStruct fromMap(Map<String, dynamic> data) =>
      EmploymentInfoModelStruct(
        departmentId: castToType<int>(data['department_id']),
        sectionId: castToType<int>(data['section_id']),
        designationId: castToType<int>(data['designation_id']),
        designation: data['designation'] as String?,
        hiringDate: data['hiring_date'] as String?,
        reportedTo: data['reportedTo'] as String?,
        reportedToId: castToType<int>(data['reportedTo_id']),
        contractType: data['contract_type'] as String?,
        contractTypeId: data['contract_type_id'] as String?,
        jobDescription: data['job_description'] as String?,
        shiftId: castToType<int>(data['shift_id']),
      );

  static EmploymentInfoModelStruct? maybeFromMap(dynamic data) => data is Map
      ? EmploymentInfoModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'department_id': _departmentId,
        'section_id': _sectionId,
        'designation_id': _designationId,
        'designation': _designation,
        'hiring_date': _hiringDate,
        'reportedTo': _reportedTo,
        'reportedTo_id': _reportedToId,
        'contract_type': _contractType,
        'contract_type_id': _contractTypeId,
        'job_description': _jobDescription,
        'shift_id': _shiftId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'department_id': serializeParam(
          _departmentId,
          ParamType.int,
        ),
        'section_id': serializeParam(
          _sectionId,
          ParamType.int,
        ),
        'designation_id': serializeParam(
          _designationId,
          ParamType.int,
        ),
        'designation': serializeParam(
          _designation,
          ParamType.String,
        ),
        'hiring_date': serializeParam(
          _hiringDate,
          ParamType.String,
        ),
        'reportedTo': serializeParam(
          _reportedTo,
          ParamType.String,
        ),
        'reportedTo_id': serializeParam(
          _reportedToId,
          ParamType.int,
        ),
        'contract_type': serializeParam(
          _contractType,
          ParamType.String,
        ),
        'contract_type_id': serializeParam(
          _contractTypeId,
          ParamType.String,
        ),
        'job_description': serializeParam(
          _jobDescription,
          ParamType.String,
        ),
        'shift_id': serializeParam(
          _shiftId,
          ParamType.int,
        ),
      }.withoutNulls;

  static EmploymentInfoModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      EmploymentInfoModelStruct(
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
        designationId: deserializeParam(
          data['designation_id'],
          ParamType.int,
          false,
        ),
        designation: deserializeParam(
          data['designation'],
          ParamType.String,
          false,
        ),
        hiringDate: deserializeParam(
          data['hiring_date'],
          ParamType.String,
          false,
        ),
        reportedTo: deserializeParam(
          data['reportedTo'],
          ParamType.String,
          false,
        ),
        reportedToId: deserializeParam(
          data['reportedTo_id'],
          ParamType.int,
          false,
        ),
        contractType: deserializeParam(
          data['contract_type'],
          ParamType.String,
          false,
        ),
        contractTypeId: deserializeParam(
          data['contract_type_id'],
          ParamType.String,
          false,
        ),
        jobDescription: deserializeParam(
          data['job_description'],
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
  String toString() => 'EmploymentInfoModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EmploymentInfoModelStruct &&
        departmentId == other.departmentId &&
        sectionId == other.sectionId &&
        designationId == other.designationId &&
        designation == other.designation &&
        hiringDate == other.hiringDate &&
        reportedTo == other.reportedTo &&
        reportedToId == other.reportedToId &&
        contractType == other.contractType &&
        contractTypeId == other.contractTypeId &&
        jobDescription == other.jobDescription &&
        shiftId == other.shiftId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        departmentId,
        sectionId,
        designationId,
        designation,
        hiringDate,
        reportedTo,
        reportedToId,
        contractType,
        contractTypeId,
        jobDescription,
        shiftId
      ]);
}

EmploymentInfoModelStruct createEmploymentInfoModelStruct({
  int? departmentId,
  int? sectionId,
  int? designationId,
  String? designation,
  String? hiringDate,
  String? reportedTo,
  int? reportedToId,
  String? contractType,
  String? contractTypeId,
  String? jobDescription,
  int? shiftId,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EmploymentInfoModelStruct(
      departmentId: departmentId,
      sectionId: sectionId,
      designationId: designationId,
      designation: designation,
      hiringDate: hiringDate,
      reportedTo: reportedTo,
      reportedToId: reportedToId,
      contractType: contractType,
      contractTypeId: contractTypeId,
      jobDescription: jobDescription,
      shiftId: shiftId,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

EmploymentInfoModelStruct? updateEmploymentInfoModelStruct(
  EmploymentInfoModelStruct? employmentInfoModel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    employmentInfoModel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEmploymentInfoModelStructData(
  Map<String, dynamic> firestoreData,
  EmploymentInfoModelStruct? employmentInfoModel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (employmentInfoModel == null) {
    return;
  }
  if (employmentInfoModel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && employmentInfoModel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final employmentInfoModelData =
      getEmploymentInfoModelFirestoreData(employmentInfoModel, forFieldValue);
  final nestedData =
      employmentInfoModelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      employmentInfoModel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEmploymentInfoModelFirestoreData(
  EmploymentInfoModelStruct? employmentInfoModel, [
  bool forFieldValue = false,
]) {
  if (employmentInfoModel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(employmentInfoModel.toMap());

  // Add any Firestore field values
  employmentInfoModel.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEmploymentInfoModelListFirestoreData(
  List<EmploymentInfoModelStruct>? employmentInfoModels,
) =>
    employmentInfoModels
        ?.map((e) => getEmploymentInfoModelFirestoreData(e, true))
        .toList() ??
    [];
