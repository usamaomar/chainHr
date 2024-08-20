// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class WorkingDaysStruct extends FFFirebaseStruct {
  WorkingDaysStruct({
    String? startTime,
    String? endTime,
    int? breakTime,
    int? flexibleTime,
    String? flexibleTimeCarbon,
    String? endTimeWithFlexible,
    int? smokeTime,
    String? breakStart,
    String? breakEnd,
    int? shiftId,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _startTime = startTime,
        _endTime = endTime,
        _breakTime = breakTime,
        _flexibleTime = flexibleTime,
        _flexibleTimeCarbon = flexibleTimeCarbon,
        _endTimeWithFlexible = endTimeWithFlexible,
        _smokeTime = smokeTime,
        _breakStart = breakStart,
        _breakEnd = breakEnd,
        _shiftId = shiftId,
        super(firestoreUtilData);

  // "start_time" field.
  String? _startTime;
  String get startTime => _startTime ?? '';
  set startTime(String? val) => _startTime = val;

  bool hasStartTime() => _startTime != null;

  // "end_time" field.
  String? _endTime;
  String get endTime => _endTime ?? '';
  set endTime(String? val) => _endTime = val;

  bool hasEndTime() => _endTime != null;

  // "break_time" field.
  int? _breakTime;
  int get breakTime => _breakTime ?? 0;
  set breakTime(int? val) => _breakTime = val;

  void incrementBreakTime(int amount) => breakTime = breakTime + amount;

  bool hasBreakTime() => _breakTime != null;

  // "flexible_time" field.
  int? _flexibleTime;
  int get flexibleTime => _flexibleTime ?? 0;
  set flexibleTime(int? val) => _flexibleTime = val;

  void incrementFlexibleTime(int amount) =>
      flexibleTime = flexibleTime + amount;

  bool hasFlexibleTime() => _flexibleTime != null;

  // "flexible_time_carbon" field.
  String? _flexibleTimeCarbon;
  String get flexibleTimeCarbon => _flexibleTimeCarbon ?? '';
  set flexibleTimeCarbon(String? val) => _flexibleTimeCarbon = val;

  bool hasFlexibleTimeCarbon() => _flexibleTimeCarbon != null;

  // "end_time_with_flexible" field.
  String? _endTimeWithFlexible;
  String get endTimeWithFlexible => _endTimeWithFlexible ?? '';
  set endTimeWithFlexible(String? val) => _endTimeWithFlexible = val;

  bool hasEndTimeWithFlexible() => _endTimeWithFlexible != null;

  // "smoke_time" field.
  int? _smokeTime;
  int get smokeTime => _smokeTime ?? 0;
  set smokeTime(int? val) => _smokeTime = val;

  void incrementSmokeTime(int amount) => smokeTime = smokeTime + amount;

  bool hasSmokeTime() => _smokeTime != null;

  // "break_start" field.
  String? _breakStart;
  String get breakStart => _breakStart ?? '';
  set breakStart(String? val) => _breakStart = val;

  bool hasBreakStart() => _breakStart != null;

  // "break_end" field.
  String? _breakEnd;
  String get breakEnd => _breakEnd ?? '';
  set breakEnd(String? val) => _breakEnd = val;

  bool hasBreakEnd() => _breakEnd != null;

  // "shift_id" field.
  int? _shiftId;
  int get shiftId => _shiftId ?? 0;
  set shiftId(int? val) => _shiftId = val;

  void incrementShiftId(int amount) => shiftId = shiftId + amount;

  bool hasShiftId() => _shiftId != null;

  static WorkingDaysStruct fromMap(Map<String, dynamic> data) =>
      WorkingDaysStruct(
        startTime: data['start_time'] as String?,
        endTime: data['end_time'] as String?,
        breakTime: castToType<int>(data['break_time']),
        flexibleTime: castToType<int>(data['flexible_time']),
        flexibleTimeCarbon: data['flexible_time_carbon'] as String?,
        endTimeWithFlexible: data['end_time_with_flexible'] as String?,
        smokeTime: castToType<int>(data['smoke_time']),
        breakStart: data['break_start'] as String?,
        breakEnd: data['break_end'] as String?,
        shiftId: castToType<int>(data['shift_id']),
      );

  static WorkingDaysStruct? maybeFromMap(dynamic data) => data is Map
      ? WorkingDaysStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'start_time': _startTime,
        'end_time': _endTime,
        'break_time': _breakTime,
        'flexible_time': _flexibleTime,
        'flexible_time_carbon': _flexibleTimeCarbon,
        'end_time_with_flexible': _endTimeWithFlexible,
        'smoke_time': _smokeTime,
        'break_start': _breakStart,
        'break_end': _breakEnd,
        'shift_id': _shiftId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'start_time': serializeParam(
          _startTime,
          ParamType.String,
        ),
        'end_time': serializeParam(
          _endTime,
          ParamType.String,
        ),
        'break_time': serializeParam(
          _breakTime,
          ParamType.int,
        ),
        'flexible_time': serializeParam(
          _flexibleTime,
          ParamType.int,
        ),
        'flexible_time_carbon': serializeParam(
          _flexibleTimeCarbon,
          ParamType.String,
        ),
        'end_time_with_flexible': serializeParam(
          _endTimeWithFlexible,
          ParamType.String,
        ),
        'smoke_time': serializeParam(
          _smokeTime,
          ParamType.int,
        ),
        'break_start': serializeParam(
          _breakStart,
          ParamType.String,
        ),
        'break_end': serializeParam(
          _breakEnd,
          ParamType.String,
        ),
        'shift_id': serializeParam(
          _shiftId,
          ParamType.int,
        ),
      }.withoutNulls;

  static WorkingDaysStruct fromSerializableMap(Map<String, dynamic> data) =>
      WorkingDaysStruct(
        startTime: deserializeParam(
          data['start_time'],
          ParamType.String,
          false,
        ),
        endTime: deserializeParam(
          data['end_time'],
          ParamType.String,
          false,
        ),
        breakTime: deserializeParam(
          data['break_time'],
          ParamType.int,
          false,
        ),
        flexibleTime: deserializeParam(
          data['flexible_time'],
          ParamType.int,
          false,
        ),
        flexibleTimeCarbon: deserializeParam(
          data['flexible_time_carbon'],
          ParamType.String,
          false,
        ),
        endTimeWithFlexible: deserializeParam(
          data['end_time_with_flexible'],
          ParamType.String,
          false,
        ),
        smokeTime: deserializeParam(
          data['smoke_time'],
          ParamType.int,
          false,
        ),
        breakStart: deserializeParam(
          data['break_start'],
          ParamType.String,
          false,
        ),
        breakEnd: deserializeParam(
          data['break_end'],
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
  String toString() => 'WorkingDaysStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WorkingDaysStruct &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        breakTime == other.breakTime &&
        flexibleTime == other.flexibleTime &&
        flexibleTimeCarbon == other.flexibleTimeCarbon &&
        endTimeWithFlexible == other.endTimeWithFlexible &&
        smokeTime == other.smokeTime &&
        breakStart == other.breakStart &&
        breakEnd == other.breakEnd &&
        shiftId == other.shiftId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        startTime,
        endTime,
        breakTime,
        flexibleTime,
        flexibleTimeCarbon,
        endTimeWithFlexible,
        smokeTime,
        breakStart,
        breakEnd,
        shiftId
      ]);
}

WorkingDaysStruct createWorkingDaysStruct({
  String? startTime,
  String? endTime,
  int? breakTime,
  int? flexibleTime,
  String? flexibleTimeCarbon,
  String? endTimeWithFlexible,
  int? smokeTime,
  String? breakStart,
  String? breakEnd,
  int? shiftId,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    WorkingDaysStruct(
      startTime: startTime,
      endTime: endTime,
      breakTime: breakTime,
      flexibleTime: flexibleTime,
      flexibleTimeCarbon: flexibleTimeCarbon,
      endTimeWithFlexible: endTimeWithFlexible,
      smokeTime: smokeTime,
      breakStart: breakStart,
      breakEnd: breakEnd,
      shiftId: shiftId,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

WorkingDaysStruct? updateWorkingDaysStruct(
  WorkingDaysStruct? workingDays, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    workingDays
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addWorkingDaysStructData(
  Map<String, dynamic> firestoreData,
  WorkingDaysStruct? workingDays,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (workingDays == null) {
    return;
  }
  if (workingDays.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && workingDays.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final workingDaysData =
      getWorkingDaysFirestoreData(workingDays, forFieldValue);
  final nestedData =
      workingDaysData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = workingDays.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getWorkingDaysFirestoreData(
  WorkingDaysStruct? workingDays, [
  bool forFieldValue = false,
]) {
  if (workingDays == null) {
    return {};
  }
  final firestoreData = mapToFirestore(workingDays.toMap());

  // Add any Firestore field values
  workingDays.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getWorkingDaysListFirestoreData(
  List<WorkingDaysStruct>? workingDayss,
) =>
    workingDayss?.map((e) => getWorkingDaysFirestoreData(e, true)).toList() ??
    [];
