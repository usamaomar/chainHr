import '../../../flutter_flow/flutter_flow_util.dart';
import '../../backend.dart';
import '../util/firestore_util.dart';

class LeaveTypeStruct extends FFFirebaseStruct {
  LeaveTypeStruct({
    int? id,
    String? departmentId,
    int? sectionId,
    String? nameAr,
    String? nameEn,
    String? name,
    String? jobDescriptionAr,
    String? jobDescriptionEn,
    String? jobDescription,
    bool? isSelected = false,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _departmentId = departmentId,
        _sectionId = sectionId,
        _nameAr = nameAr,
        _nameEn = nameEn,
        _name = name,
        _jobDescriptionAr = jobDescriptionAr,
        _jobDescriptionEn = jobDescriptionEn,
        _jobDescription = jobDescription,
        _isSelected = isSelected,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  bool hasId() => _id != null;

  // "department_id" field.
  String? _departmentId;
  String get departmentId => _departmentId ?? '';
  set departmentId(String? val) => _departmentId = val;

  bool hasDepartmentId() => _departmentId != null;

  // "section_id" field.
  int? _sectionId;
  int get sectionId => _sectionId ?? 0;
  set sectionId(int? val) => _sectionId = val;

  bool hasSectionId() => _sectionId != null;

  // "name_ar" field.
  String? _nameAr;
  String get nameAr => _nameAr ?? '';
  set nameAr(String? val) => _nameAr = val;

  bool hasNameAr() => _nameAr != null;

  // "name_en" field.
  String? _nameEn;
  String get nameEn => _nameEn ?? '';
  set nameEn(String? val) => _nameEn = val;

  bool hasNameEn() => _nameEn != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "job_description_ar" field.
  String? _jobDescriptionAr;
  String get jobDescriptionAr => _jobDescriptionAr ?? '';
  set jobDescriptionAr(String? val) => _jobDescriptionAr = val;

  bool hasJobDescriptionAr() => _jobDescriptionAr != null;

  // "job_description_en" field.
  String? _jobDescriptionEn;
  String get jobDescriptionEn => _jobDescriptionEn ?? '';
  set jobDescriptionEn(String? val) => _jobDescriptionEn = val;

  bool hasJobDescriptionEn() => _jobDescriptionEn != null;

  // "job_description" field.
  String? _jobDescription;
  String get jobDescription => _jobDescription ?? '';
  set jobDescription(String? val) => _jobDescription = val;

  bool hasJobDescription() => _jobDescription != null;

  // "is_selected" field.
  bool? _isSelected;
  bool get isSelected => _isSelected ?? false;
  set isSelected(bool? val) => _isSelected = val;

  bool hasIsSelected() => _isSelected != null;

  static LeaveTypeStruct fromMap(Map<String, dynamic> data) => LeaveTypeStruct(
    id: castToType<int>(data['id']),
    departmentId: data['department_id'] as String?,
    sectionId: castToType<int>(data['section_id']),
    nameAr: data['name_ar'] as String?,
    nameEn: data['name_en'] as String?,
    name: data['name'] as String?,
    jobDescriptionAr: data['job_description_ar'] as String?,
    jobDescriptionEn: data['job_description_en'] as String?,
    jobDescription: data['job_description'] as String?,
    isSelected: castToType<bool>(data['is_selected']),
  );

  static LeaveTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? LeaveTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
    'id': _id,
    'department_id': _departmentId,
    'section_id': _sectionId,
    'name_ar': _nameAr,
    'name_en': _nameEn,
    'name': _name,
    'job_description_ar': _jobDescriptionAr,
    'job_description_en': _jobDescriptionEn,
    'job_description': _jobDescription,
    'is_selected': _isSelected,
  }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
    'id': serializeParam(
      _id,
      ParamType.int,
    ),
    'department_id': serializeParam(
      _departmentId,
      ParamType.String,
    ),
    'section_id': serializeParam(
      _sectionId,
      ParamType.int,
    ),
    'name_ar': serializeParam(
      _nameAr,
      ParamType.String,
    ),
    'name_en': serializeParam(
      _nameEn,
      ParamType.String,
    ),
    'name': serializeParam(
      _name,
      ParamType.String,
    ),
    'job_description_ar': serializeParam(
      _jobDescriptionAr,
      ParamType.String,
    ),
    'job_description_en': serializeParam(
      _jobDescriptionEn,
      ParamType.String,
    ),
    'job_description': serializeParam(
      _jobDescription,
      ParamType.String,
    ),
    'is_selected': serializeParam(
      _isSelected,
      ParamType.bool,
    ),
  }.withoutNulls;

  static LeaveTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      LeaveTypeStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        departmentId: deserializeParam(
          data['department_id'],
          ParamType.String,
          false,
        ),
        sectionId: deserializeParam(
          data['section_id'],
          ParamType.int,
          false,
        ),
        nameAr: deserializeParam(
          data['name_ar'],
          ParamType.String,
          false,
        ),
        nameEn: deserializeParam(
          data['name_en'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        jobDescriptionAr: deserializeParam(
          data['job_description_ar'],
          ParamType.String,
          false,
        ),
        jobDescriptionEn: deserializeParam(
          data['job_description_en'],
          ParamType.String,
          false,
        ),
        jobDescription: deserializeParam(
          data['job_description'],
          ParamType.String,
          false,
        ),
        isSelected: deserializeParam(
          data['is_selected'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'LeaveTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LeaveTypeStruct &&
        id == other.id &&
        departmentId == other.departmentId &&
        sectionId == other.sectionId &&
        nameAr == other.nameAr &&
        nameEn == other.nameEn &&
        name == other.name &&
        jobDescriptionAr == other.jobDescriptionAr &&
        jobDescriptionEn == other.jobDescriptionEn &&
        jobDescription == other.jobDescription &&
        isSelected == other.isSelected;
  }

  @override
  int get hashCode => const ListEquality().hash([
    id,
    departmentId,
    sectionId,
    nameAr,
    nameEn,
    name,
    jobDescriptionAr,
    jobDescriptionEn,
    jobDescription,
    isSelected,
  ]);
}

LeaveTypeStruct createLeaveTypeStruct({
  int? id,
  String? departmentId,
  int? sectionId,
  String? nameAr,
  String? nameEn,
  String? name,
  String? jobDescriptionAr,
  String? jobDescriptionEn,
  String? jobDescription,
  bool? isSelected,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LeaveTypeStruct(
      id: id,
      departmentId: departmentId,
      sectionId: sectionId,
      nameAr: nameAr,
      nameEn: nameEn,
      name: name,
      jobDescriptionAr: jobDescriptionAr,
      jobDescriptionEn: jobDescriptionEn,
      jobDescription: jobDescription,
      isSelected: isSelected,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LeaveTypeStruct? updateLeaveTypeStruct(
    LeaveTypeStruct? employee, {
      bool clearUnsetFields = true,
      bool create = false,
    }) =>
    employee
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );
