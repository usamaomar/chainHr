// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class BalanceVacationStruct extends FFFirebaseStruct {
  BalanceVacationStruct({
    int? personal,
    int? sick,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _personal = personal,
        _sick = sick,
        super(firestoreUtilData);

  // "personal" field.
  int? _personal;
  int get personal => _personal ?? 0;
  set personal(int? val) => _personal = val;

  void incrementPersonal(int amount) => personal = personal + amount;

  bool hasPersonal() => _personal != null;

  // "sick" field.
  int? _sick;
  int get sick => _sick ?? 0;
  set sick(int? val) => _sick = val;

  void incrementSick(int amount) => sick = sick + amount;

  bool hasSick() => _sick != null;

  static BalanceVacationStruct fromMap(Map<String, dynamic> data) =>
      BalanceVacationStruct(
        personal: castToType<int>(data['personal']),
        sick: castToType<int>(data['sick']),
      );

  static BalanceVacationStruct? maybeFromMap(dynamic data) => data is Map
      ? BalanceVacationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'personal': _personal,
        'sick': _sick,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'personal': serializeParam(
          _personal,
          ParamType.int,
        ),
        'sick': serializeParam(
          _sick,
          ParamType.int,
        ),
      }.withoutNulls;

  static BalanceVacationStruct fromSerializableMap(Map<String, dynamic> data) =>
      BalanceVacationStruct(
        personal: deserializeParam(
          data['personal'],
          ParamType.int,
          false,
        ),
        sick: deserializeParam(
          data['sick'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'BalanceVacationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BalanceVacationStruct &&
        personal == other.personal &&
        sick == other.sick;
  }

  @override
  int get hashCode => const ListEquality().hash([personal, sick]);
}

BalanceVacationStruct createBalanceVacationStruct({
  int? personal,
  int? sick,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    BalanceVacationStruct(
      personal: personal,
      sick: sick,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

BalanceVacationStruct? updateBalanceVacationStruct(
  BalanceVacationStruct? balanceVacation, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    balanceVacation
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addBalanceVacationStructData(
  Map<String, dynamic> firestoreData,
  BalanceVacationStruct? balanceVacation,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (balanceVacation == null) {
    return;
  }
  if (balanceVacation.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && balanceVacation.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final balanceVacationData =
      getBalanceVacationFirestoreData(balanceVacation, forFieldValue);
  final nestedData =
      balanceVacationData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = balanceVacation.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getBalanceVacationFirestoreData(
  BalanceVacationStruct? balanceVacation, [
  bool forFieldValue = false,
]) {
  if (balanceVacation == null) {
    return {};
  }
  final firestoreData = mapToFirestore(balanceVacation.toMap());

  // Add any Firestore field values
  balanceVacation.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getBalanceVacationListFirestoreData(
  List<BalanceVacationStruct>? balanceVacations,
) =>
    balanceVacations
        ?.map((e) => getBalanceVacationFirestoreData(e, true))
        .toList() ??
    [];
