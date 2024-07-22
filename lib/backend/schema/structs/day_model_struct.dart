// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class DayModelStruct extends FFFirebaseStruct {
  DayModelStruct({
    int? dayNumber,
    bool? status,
    String? date,
    int? progress,
    String? vacation,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _dayNumber = dayNumber,
        _status = status,
        _date = date,
        _progress = progress,
        _vacation = vacation,
        super(firestoreUtilData);

  // "dayNumber" field.
  int? _dayNumber;
  int get dayNumber => _dayNumber ?? 0;
  set dayNumber(int? val) => _dayNumber = val;

  void incrementDayNumber(int amount) => dayNumber = dayNumber + amount;

  bool hasDayNumber() => _dayNumber != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  set status(bool? val) => _status = val;

  bool hasStatus() => _status != null;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  set date(String? val) => _date = val;

  bool hasDate() => _date != null;

  // "progress" field.
  int? _progress;
  int get progress => _progress ?? 0;
  set progress(int? val) => _progress = val;

  void incrementProgress(int amount) => progress = progress + amount;

  bool hasProgress() => _progress != null;

  // "vacation" field.
  String? _vacation;
  String get vacation => _vacation ?? '';
  set vacation(String? val) => _vacation = val;

  bool hasVacation() => _vacation != null;

  static DayModelStruct fromMap(Map<String, dynamic> data) => DayModelStruct(
        dayNumber: castToType<int>(data['dayNumber']),
        status: data['status'] as bool?,
        date: data['date'] as String?,
        progress: castToType<int>(data['progress']),
        vacation: data['vacation'] as String?,
      );

  static DayModelStruct? maybeFromMap(dynamic data) =>
      data is Map ? DayModelStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'dayNumber': _dayNumber,
        'status': _status,
        'date': _date,
        'progress': _progress,
        'vacation': _vacation,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'dayNumber': serializeParam(
          _dayNumber,
          ParamType.int,
        ),
        'status': serializeParam(
          _status,
          ParamType.bool,
        ),
        'date': serializeParam(
          _date,
          ParamType.String,
        ),
        'progress': serializeParam(
          _progress,
          ParamType.int,
        ),
        'vacation': serializeParam(
          _vacation,
          ParamType.String,
        ),
      }.withoutNulls;

  static DayModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      DayModelStruct(
        dayNumber: deserializeParam(
          data['dayNumber'],
          ParamType.int,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.bool,
          false,
        ),
        date: deserializeParam(
          data['date'],
          ParamType.String,
          false,
        ),
        progress: deserializeParam(
          data['progress'],
          ParamType.int,
          false,
        ),
        vacation: deserializeParam(
          data['vacation'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DayModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DayModelStruct &&
        dayNumber == other.dayNumber &&
        status == other.status &&
        date == other.date &&
        progress == other.progress &&
        vacation == other.vacation;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([dayNumber, status, date, progress, vacation]);
}

DayModelStruct createDayModelStruct({
  int? dayNumber,
  bool? status,
  String? date,
  int? progress,
  String? vacation,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DayModelStruct(
      dayNumber: dayNumber,
      status: status,
      date: date,
      progress: progress,
      vacation: vacation,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DayModelStruct? updateDayModelStruct(
  DayModelStruct? dayModel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dayModel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDayModelStructData(
  Map<String, dynamic> firestoreData,
  DayModelStruct? dayModel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dayModel == null) {
    return;
  }
  if (dayModel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dayModel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dayModelData = getDayModelFirestoreData(dayModel, forFieldValue);
  final nestedData = dayModelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = dayModel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDayModelFirestoreData(
  DayModelStruct? dayModel, [
  bool forFieldValue = false,
]) {
  if (dayModel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dayModel.toMap());

  // Add any Firestore field values
  dayModel.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDayModelListFirestoreData(
  List<DayModelStruct>? dayModels,
) =>
    dayModels?.map((e) => getDayModelFirestoreData(e, true)).toList() ?? [];
