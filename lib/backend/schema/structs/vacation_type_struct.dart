// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class VacationTypeStruct extends FFFirebaseStruct {
  VacationTypeStruct({
    int? id,
    String? nameEn,
    String? nameAr,
    int? attachment,
    int? type,
    String? createdAt,
    String? updatedAt,
    String? name,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _nameEn = nameEn,
        _nameAr = nameAr,
        _attachment = attachment,
        _type = type,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _name = name,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "name_en" field.
  String? _nameEn;
  String get nameEn => _nameEn ?? '';
  set nameEn(String? val) => _nameEn = val;

  bool hasNameEn() => _nameEn != null;

  // "name_ar" field.
  String? _nameAr;
  String get nameAr => _nameAr ?? '';
  set nameAr(String? val) => _nameAr = val;

  bool hasNameAr() => _nameAr != null;

  // "attachment" field.
  int? _attachment;
  int get attachment => _attachment ?? 0;
  set attachment(int? val) => _attachment = val;

  void incrementAttachment(int amount) => attachment = attachment + amount;

  bool hasAttachment() => _attachment != null;

  // "type" field.
  int? _type;
  int get type => _type ?? 0;
  set type(int? val) => _type = val;

  void incrementType(int amount) => type = type + amount;

  bool hasType() => _type != null;

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

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  static VacationTypeStruct fromMap(Map<String, dynamic> data) =>
      VacationTypeStruct(
        id: castToType<int>(data['id']),
        nameEn: data['name_en'] as String?,
        nameAr: data['name_ar'] as String?,
        attachment: castToType<int>(data['attachment']),
        type: castToType<int>(data['type']),
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
        name: data['name'] as String?,
      );

  static VacationTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? VacationTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name_en': _nameEn,
        'name_ar': _nameAr,
        'attachment': _attachment,
        'type': _type,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name_en': serializeParam(
          _nameEn,
          ParamType.String,
        ),
        'name_ar': serializeParam(
          _nameAr,
          ParamType.String,
        ),
        'attachment': serializeParam(
          _attachment,
          ParamType.int,
        ),
        'type': serializeParam(
          _type,
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
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
      }.withoutNulls;

  static VacationTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      VacationTypeStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        nameEn: deserializeParam(
          data['name_en'],
          ParamType.String,
          false,
        ),
        nameAr: deserializeParam(
          data['name_ar'],
          ParamType.String,
          false,
        ),
        attachment: deserializeParam(
          data['attachment'],
          ParamType.int,
          false,
        ),
        type: deserializeParam(
          data['type'],
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
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'VacationTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VacationTypeStruct &&
        id == other.id &&
        nameEn == other.nameEn &&
        nameAr == other.nameAr &&
        attachment == other.attachment &&
        type == other.type &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        name == other.name;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, nameEn, nameAr, attachment, type, createdAt, updatedAt, name]);
}

VacationTypeStruct createVacationTypeStruct({
  int? id,
  String? nameEn,
  String? nameAr,
  int? attachment,
  int? type,
  String? createdAt,
  String? updatedAt,
  String? name,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    VacationTypeStruct(
      id: id,
      nameEn: nameEn,
      nameAr: nameAr,
      attachment: attachment,
      type: type,
      createdAt: createdAt,
      updatedAt: updatedAt,
      name: name,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

VacationTypeStruct? updateVacationTypeStruct(
  VacationTypeStruct? vacationType, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    vacationType
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addVacationTypeStructData(
  Map<String, dynamic> firestoreData,
  VacationTypeStruct? vacationType,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (vacationType == null) {
    return;
  }
  if (vacationType.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && vacationType.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final vacationTypeData =
      getVacationTypeFirestoreData(vacationType, forFieldValue);
  final nestedData =
      vacationTypeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = vacationType.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getVacationTypeFirestoreData(
  VacationTypeStruct? vacationType, [
  bool forFieldValue = false,
]) {
  if (vacationType == null) {
    return {};
  }
  final firestoreData = mapToFirestore(vacationType.toMap());

  // Add any Firestore field values
  vacationType.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getVacationTypeListFirestoreData(
  List<VacationTypeStruct>? vacationTypes,
) =>
    vacationTypes?.map((e) => getVacationTypeFirestoreData(e, true)).toList() ??
    [];
