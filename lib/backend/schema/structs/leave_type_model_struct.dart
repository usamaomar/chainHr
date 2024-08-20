// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LeaveTypeModelStruct extends FFFirebaseStruct {
  LeaveTypeModelStruct({
    int? id,
    String? departmentId,
    int? sectionId,
    String? nameAr,
    String? nameEn,
    String? name,
    String? jobDescriptionAr,
    String? jobDescriptionEn,
    String? jobDescription,
    int? index,
    bool? isOpened = true,
    List<LeaveTypeModelStruct>? sections,
    List<LeaveTypeModelStruct>? designations,
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
        _index = index,
        _isOpened = isOpened,
        _sections = sections,
        _designations = designations,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "departmentId" field.
  String? _departmentId;
  String get departmentId => _departmentId ?? '';
  set departmentId(String? val) => _departmentId = val;

  bool hasDepartmentId() => _departmentId != null;

  // "sectionId" field.
  int? _sectionId;
  int get sectionId => _sectionId ?? 0;
  set sectionId(int? val) => _sectionId = val;

  void incrementSectionId(int amount) => sectionId = sectionId + amount;

  bool hasSectionId() => _sectionId != null;

  // "nameAr" field.
  String? _nameAr;
  String get nameAr => _nameAr ?? '';
  set nameAr(String? val) => _nameAr = val;

  bool hasNameAr() => _nameAr != null;

  // "nameEn" field.
  String? _nameEn;
  String get nameEn => _nameEn ?? '';
  set nameEn(String? val) => _nameEn = val;

  bool hasNameEn() => _nameEn != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "jobDescriptionAr" field.
  String? _jobDescriptionAr;
  String get jobDescriptionAr => _jobDescriptionAr ?? '';
  set jobDescriptionAr(String? val) => _jobDescriptionAr = val;

  bool hasJobDescriptionAr() => _jobDescriptionAr != null;

  // "jobDescriptionEn" field.
  String? _jobDescriptionEn;
  String get jobDescriptionEn => _jobDescriptionEn ?? '';
  set jobDescriptionEn(String? val) => _jobDescriptionEn = val;

  bool hasJobDescriptionEn() => _jobDescriptionEn != null;

  // "jobDescription" field.
  String? _jobDescription;
  String get jobDescription => _jobDescription ?? '';
  set jobDescription(String? val) => _jobDescription = val;

  bool hasJobDescription() => _jobDescription != null;

  // "index" field.
  int? _index;
  int get index => _index ?? 0;
  set index(int? val) => _index = val;

  void incrementIndex(int amount) => index = index + amount;

  bool hasIndex() => _index != null;

  // "isOpened" field.
  bool? _isOpened;
  bool get isOpened => _isOpened ?? true;
  set isOpened(bool? val) => _isOpened = val;

  bool hasIsOpened() => _isOpened != null;

  // "sections" field.
  List<LeaveTypeModelStruct>? _sections;
  List<LeaveTypeModelStruct> get sections => _sections ?? [];
  set sections(List<LeaveTypeModelStruct>? val) => _sections = val;

  bool hasSections() => _sections != null;

  // "designations" field.
  List<LeaveTypeModelStruct>? _designations;
  List<LeaveTypeModelStruct> get designations => _designations ?? [];
  set designations(List<LeaveTypeModelStruct>? val) => _designations = val;

  bool hasDesignations() => _designations != null;

  static LeaveTypeModelStruct fromMap(Map<String, dynamic> data) => LeaveTypeModelStruct(
    id: castToType<int>(data['id']),
    departmentId: data['department_id'].toString(),
    sectionId: castToType<int>(data['section_id']),
    nameAr: data['name_ar'] as String?,
    nameEn: data['name_en'] as String?,
    name: data['name'] as String?,
    jobDescriptionAr: data['job_description_ar'] as String?,
    jobDescriptionEn: data['job_description_en'] as String?,
    jobDescription: data['job_description'] as String?,
    index: castToType<int>(data['index']),
    isOpened: data['is_opened'] as bool?,
    sections: getLeaveTypeModelStructList(data['sections']),
    designations: getLeaveTypeModelStructList(data['designations']),
  );

  static LeaveTypeModelStruct? maybeFromMap(dynamic data) =>
      data is Map ? LeaveTypeModelStruct.fromMap(data.cast<String, dynamic>()) : null;

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
    'index': _index,
    'is_opened': _isOpened,
    'sections': _sections?.map((e) => e.toMap()).toList(),
    'designations': _designations?.map((e) => e.toMap()).toList(),
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
    'index': serializeParam(
      _index,
      ParamType.int,
    ),
    'is_opened': serializeParam(
      _isOpened,
      ParamType.bool,
    ),
    'sections': serializeParam(
      _sections,
      ParamType.DataStruct,
     isList:  true,
    ),
    'designations': serializeParam(
      _designations,
      ParamType.DataStruct,
      isList: true,
    ),
  }.withoutNulls;
}

List<LeaveTypeModelStruct> getLeaveTypeModelStructList(dynamic data) =>
    data is List ? data.map((e) => LeaveTypeModelStruct.maybeFromMap(e)).withoutNulls.toList() : [];
