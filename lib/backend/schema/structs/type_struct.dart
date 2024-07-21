// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class TypeStruct extends FFFirebaseStruct {
  TypeStruct({
    int? id,
    String? nameEn,
    String? nameAr,
    String? createdAt,
    String? updatedAt,
    int? attachment,
    String? name,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _nameEn = nameEn,
        _nameAr = nameAr,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _attachment = attachment,
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

  // "attachment" field.
  int? _attachment;
  int get attachment => _attachment ?? 0;
  set attachment(int? val) => _attachment = val;

  void incrementAttachment(int amount) => attachment = attachment + amount;

  bool hasAttachment() => _attachment != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  static TypeStruct fromMap(Map<String, dynamic> data) => TypeStruct(
        id: castToType<int>(data['id']),
        nameEn: data['name_en'] as String?,
        nameAr: data['name_ar'] as String?,
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
        attachment: castToType<int>(data['attachment']),
        name: data['name'] as String?,
      );

  static TypeStruct? maybeFromMap(dynamic data) =>
      data is Map ? TypeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name_en': _nameEn,
        'name_ar': _nameAr,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'attachment': _attachment,
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
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'attachment': serializeParam(
          _attachment,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
      }.withoutNulls;

  static TypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      TypeStruct(
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
        attachment: deserializeParam(
          data['attachment'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TypeStruct &&
        id == other.id &&
        nameEn == other.nameEn &&
        nameAr == other.nameAr &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        attachment == other.attachment &&
        name == other.name;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, nameEn, nameAr, createdAt, updatedAt, attachment, name]);
}

TypeStruct createTypeStruct({
  int? id,
  String? nameEn,
  String? nameAr,
  String? createdAt,
  String? updatedAt,
  int? attachment,
  String? name,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TypeStruct(
      id: id,
      nameEn: nameEn,
      nameAr: nameAr,
      createdAt: createdAt,
      updatedAt: updatedAt,
      attachment: attachment,
      name: name,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TypeStruct? updateTypeStruct(
  TypeStruct? type, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    type
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTypeStructData(
  Map<String, dynamic> firestoreData,
  TypeStruct? type,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (type == null) {
    return;
  }
  if (type.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && type.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final typeData = getTypeFirestoreData(type, forFieldValue);
  final nestedData = typeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = type.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTypeFirestoreData(
  TypeStruct? type, [
  bool forFieldValue = false,
]) {
  if (type == null) {
    return {};
  }
  final firestoreData = mapToFirestore(type.toMap());

  // Add any Firestore field values
  type.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTypeListFirestoreData(
  List<TypeStruct>? types,
) =>
    types?.map((e) => getTypeFirestoreData(e, true)).toList() ?? [];
