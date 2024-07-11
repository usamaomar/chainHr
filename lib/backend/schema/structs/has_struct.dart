// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class HasStruct extends FFFirebaseStruct {
  HasStruct({
    String? team,
    String? role,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _team = team,
        _role = role,
        super(firestoreUtilData);

  // "team" field.
  String? _team;
  String get team => _team ?? '';
  set team(String? val) => _team = val;

  bool hasTeam() => _team != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  set role(String? val) => _role = val;

  bool hasRole() => _role != null;

  static HasStruct fromMap(Map<String, dynamic> data) => HasStruct(
        team: data['team'] as String?,
        role: data['role'] as String?,
      );

  static HasStruct? maybeFromMap(dynamic data) =>
      data is Map ? HasStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'team': _team,
        'role': _role,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'team': serializeParam(
          _team,
          ParamType.String,
        ),
        'role': serializeParam(
          _role,
          ParamType.String,
        ),
      }.withoutNulls;

  static HasStruct fromSerializableMap(Map<String, dynamic> data) => HasStruct(
        team: deserializeParam(
          data['team'],
          ParamType.String,
          false,
        ),
        role: deserializeParam(
          data['role'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'HasStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is HasStruct && team == other.team && role == other.role;
  }

  @override
  int get hashCode => const ListEquality().hash([team, role]);
}

HasStruct createHasStruct({
  String? team,
  String? role,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    HasStruct(
      team: team,
      role: role,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

HasStruct? updateHasStruct(
  HasStruct? has, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    has
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addHasStructData(
  Map<String, dynamic> firestoreData,
  HasStruct? has,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (has == null) {
    return;
  }
  if (has.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && has.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final hasData = getHasFirestoreData(has, forFieldValue);
  final nestedData = hasData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = has.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getHasFirestoreData(
  HasStruct? has, [
  bool forFieldValue = false,
]) {
  if (has == null) {
    return {};
  }
  final firestoreData = mapToFirestore(has.toMap());

  // Add any Firestore field values
  has.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getHasListFirestoreData(
  List<HasStruct>? hass,
) =>
    hass?.map((e) => getHasFirestoreData(e, true)).toList() ?? [];
