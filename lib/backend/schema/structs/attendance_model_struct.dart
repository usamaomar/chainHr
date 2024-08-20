// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hr_chain/backend/schema/structs/punches_struct.dart';
import 'package:hr_chain/backend/schema/structs/working_days_struct.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AttendanceModelStruct extends FFFirebaseStruct {
  AttendanceModelStruct({
    String? pin,
    String? pout,
    String? cdate,
    int? shortage,
    int? overtime,
    int? leave,
    String? start,
    int? daysInMonth,
    List<String>? days,
    int? progress,
    bool? status,
    List<AttendancePeriodsStruct>? attendancePeriods,
    WorkingDaysStruct? workingDays,
    String? vacation,
    List<PunchesStruct>? punches,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _pin = pin,
        _pout = pout,
        _cdate = cdate,
        _shortage = shortage,
        _overtime = overtime,
        _leave = leave,
        _start = start,
        _daysInMonth = daysInMonth,
        _days = days,
        _progress = progress,
        _status = status,
        _attendancePeriods = attendancePeriods,
        _workingDays = workingDays,
        _vacation = vacation,
        _punches = punches,
        super(firestoreUtilData);

  // "pin" field.
  String? _pin;
  String get pin => _pin ?? '';
  set pin(String? val) => _pin = val;

  bool hasPin() => _pin != null;

  // "pout" field.
  String? _pout;
  String get pout => _pout ?? '';
  set pout(String? val) => _pout = val;

  bool hasPout() => _pout != null;

  // "cdate" field.
  String? _cdate;
  String get cdate => _cdate ?? '';
  set cdate(String? val) => _cdate = val;

  bool hasCdate() => _cdate != null;

  // "shortage" field.
  int? _shortage;
  int get shortage => _shortage ?? 0;
  set shortage(int? val) => _shortage = val;

  void incrementShortage(int amount) => shortage = shortage + amount;

  bool hasShortage() => _shortage != null;

  // "overtime" field.
  int? _overtime;
  int get overtime => _overtime ?? 0;
  set overtime(int? val) => _overtime = val;

  void incrementOvertime(int amount) => overtime = overtime + amount;

  bool hasOvertime() => _overtime != null;

  // "leave" field.
  int? _leave;
  int get leave => _leave ?? 0;
  set leave(int? val) => _leave = val;

  void incrementLeave(int amount) => leave = leave + amount;

  bool hasLeave() => _leave != null;

  // "start" field.
  String? _start;
  String get start => _start ?? '';
  set start(String? val) => _start = val;

  bool hasStart() => _start != null;

  // "daysInMonth" field.
  int? _daysInMonth;
  int get daysInMonth => _daysInMonth ?? 0;
  set daysInMonth(int? val) => _daysInMonth = val;

  void incrementDaysInMonth(int amount) => daysInMonth = daysInMonth + amount;

  bool hasDaysInMonth() => _daysInMonth != null;

  // "days" field.
  List<String>? _days;
  List<String> get days => _days ?? const [];
  set days(List<String>? val) => _days = val;

  void updateDays(Function(List<String>) updateFn) {
    updateFn(_days ??= []);
  }

  bool hasDays() => _days != null;

  // "progress" field.
  int? _progress;
  int get progress => _progress ?? 0;
  set progress(int? val) => _progress = val;

  void incrementProgress(int amount) => progress = progress + amount;

  bool hasProgress() => _progress != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  set status(bool? val) => _status = val;

  bool hasStatus() => _status != null;

  // "attendancePeriods" field.
  List<AttendancePeriodsStruct>? _attendancePeriods;
  List<AttendancePeriodsStruct> get attendancePeriods =>
      _attendancePeriods ?? const [];
  set attendancePeriods(List<AttendancePeriodsStruct>? val) =>
      _attendancePeriods = val;

  void updateAttendancePeriods(
      Function(List<AttendancePeriodsStruct>) updateFn) {
    updateFn(_attendancePeriods ??= []);
  }

  bool hasAttendancePeriods() => _attendancePeriods != null;

  // "workingDays" field.
  WorkingDaysStruct? _workingDays;
  WorkingDaysStruct get workingDays => _workingDays ?? WorkingDaysStruct();
  set workingDays(WorkingDaysStruct? val) => _workingDays = val;

  void updateWorkingDays(Function(WorkingDaysStruct) updateFn) {
    updateFn(_workingDays ??= WorkingDaysStruct());
  }

  bool hasWorkingDays() => _workingDays != null;

  // "vacation" field.
  String? _vacation;
  String get vacation => _vacation ?? '';
  set vacation(String? val) => _vacation = val;

  bool hasVacation() => _vacation != null;

  // "punches" field.
  List<PunchesStruct>? _punches;
  List<PunchesStruct> get punches => _punches ?? const [];
  set punches(List<PunchesStruct>? val) => _punches = val;

  void updatePunches(Function(List<PunchesStruct>) updateFn) {
    updateFn(_punches ??= []);
  }

  bool hasPunches() => _punches != null;

  static AttendanceModelStruct fromMap(Map<String, dynamic> data) =>
      AttendanceModelStruct(
        pin: data['pin'] as String?,
        pout: data['pout'] as String?,
        cdate: data['cdate'] as String?,
        shortage: castToType<int>(data['shortage']),
        overtime: castToType<int>(data['overtime']),
        leave: castToType<int>(data['leave']),
        start: data['start'] as String?,
        daysInMonth: castToType<int>(data['daysInMonth']),
        days: getDataList(data['days']),
        progress: castToType<int>(data['progress']),
        status: data['status'] as bool?,
        attendancePeriods: getStructList(
          data['attendancePeriods'],
          AttendancePeriodsStruct.fromMap,
        ),
        workingDays: WorkingDaysStruct.maybeFromMap(data['workingDays']),
        vacation: data['vacation'] as String?,
        punches: getStructList(
          data['punches'],
          PunchesStruct.fromMap,
        ),
      );

  static AttendanceModelStruct? maybeFromMap(dynamic data) => data is Map
      ? AttendanceModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'pin': _pin,
        'pout': _pout,
        'cdate': _cdate,
        'shortage': _shortage,
        'overtime': _overtime,
        'leave': _leave,
        'start': _start,
        'daysInMonth': _daysInMonth,
        'days': _days,
        'progress': _progress,
        'status': _status,
        'attendancePeriods': _attendancePeriods?.map((e) => e.toMap()).toList(),
        'workingDays': _workingDays?.toMap(),
        'vacation': _vacation,
        'punches': _punches?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'pin': serializeParam(
          _pin,
          ParamType.String,
        ),
        'pout': serializeParam(
          _pout,
          ParamType.String,
        ),
        'cdate': serializeParam(
          _cdate,
          ParamType.String,
        ),
        'shortage': serializeParam(
          _shortage,
          ParamType.int,
        ),
        'overtime': serializeParam(
          _overtime,
          ParamType.int,
        ),
        'leave': serializeParam(
          _leave,
          ParamType.int,
        ),
        'start': serializeParam(
          _start,
          ParamType.String,
        ),
        'daysInMonth': serializeParam(
          _daysInMonth,
          ParamType.int,
        ),
        'days': serializeParam(
          _days,
          ParamType.String,
          isList: true,
        ),
        'progress': serializeParam(
          _progress,
          ParamType.int,
        ),
        'status': serializeParam(
          _status,
          ParamType.bool,
        ),
        'attendancePeriods': serializeParam(
          _attendancePeriods,
          ParamType.DataStruct,
          isList: true,
        ),
        'workingDays': serializeParam(
          _workingDays,
          ParamType.DataStruct,
        ),
        'vacation': serializeParam(
          _vacation,
          ParamType.String,
        ),
        'punches': serializeParam(
          _punches,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static AttendanceModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      AttendanceModelStruct(
        pin: deserializeParam(
          data['pin'],
          ParamType.String,
          false,
        ),
        pout: deserializeParam(
          data['pout'],
          ParamType.String,
          false,
        ),
        cdate: deserializeParam(
          data['cdate'],
          ParamType.String,
          false,
        ),
        shortage: deserializeParam(
          data['shortage'],
          ParamType.int,
          false,
        ),
        overtime: deserializeParam(
          data['overtime'],
          ParamType.int,
          false,
        ),
        leave: deserializeParam(
          data['leave'],
          ParamType.int,
          false,
        ),
        start: deserializeParam(
          data['start'],
          ParamType.String,
          false,
        ),
        daysInMonth: deserializeParam(
          data['daysInMonth'],
          ParamType.int,
          false,
        ),
        days: deserializeParam<String>(
          data['days'],
          ParamType.String,
          true,
        ),
        progress: deserializeParam(
          data['progress'],
          ParamType.int,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.bool,
          false,
        ),
        attendancePeriods: deserializeStructParam<AttendancePeriodsStruct>(
          data['attendancePeriods'],
          ParamType.DataStruct,
          true,
          structBuilder: AttendancePeriodsStruct.fromSerializableMap,
        ),
        workingDays: deserializeStructParam(
          data['workingDays'],
          ParamType.DataStruct,
          false,
          structBuilder: WorkingDaysStruct.fromSerializableMap,
        ),
        vacation: deserializeParam(
          data['vacation'],
          ParamType.String,
          false,
        ),
        punches: deserializeStructParam<PunchesStruct>(
          data['punches'],
          ParamType.DataStruct,
          true,
          structBuilder: PunchesStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'AttendanceModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AttendanceModelStruct &&
        pin == other.pin &&
        pout == other.pout &&
        cdate == other.cdate &&
        shortage == other.shortage &&
        overtime == other.overtime &&
        leave == other.leave &&
        start == other.start &&
        daysInMonth == other.daysInMonth &&
        listEquality.equals(days, other.days) &&
        progress == other.progress &&
        status == other.status &&
        listEquality.equals(attendancePeriods, other.attendancePeriods) &&
        workingDays == other.workingDays &&
        vacation == other.vacation &&
        listEquality.equals(punches, other.punches);
  }

  @override
  int get hashCode => const ListEquality().hash([
        pin,
        pout,
        cdate,
        shortage,
        overtime,
        leave,
        start,
        daysInMonth,
        days,
        progress,
        status,
        attendancePeriods,
        workingDays,
        vacation,
        punches
      ]);
}

AttendanceModelStruct createAttendanceModelStruct({
  String? pin,
  String? pout,
  String? cdate,
  int? shortage,
  int? overtime,
  int? leave,
  String? start,
  int? daysInMonth,
  int? progress,
  bool? status,
  WorkingDaysStruct? workingDays,
  String? vacation,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AttendanceModelStruct(
      pin: pin,
      pout: pout,
      cdate: cdate,
      shortage: shortage,
      overtime: overtime,
      leave: leave,
      start: start,
      daysInMonth: daysInMonth,
      progress: progress,
      status: status,
      workingDays:
          workingDays ?? (clearUnsetFields ? WorkingDaysStruct() : null),
      vacation: vacation,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AttendanceModelStruct? updateAttendanceModelStruct(
  AttendanceModelStruct? attendanceModel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    attendanceModel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAttendanceModelStructData(
  Map<String, dynamic> firestoreData,
  AttendanceModelStruct? attendanceModel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (attendanceModel == null) {
    return;
  }
  if (attendanceModel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && attendanceModel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final attendanceModelData =
      getAttendanceModelFirestoreData(attendanceModel, forFieldValue);
  final nestedData =
      attendanceModelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = attendanceModel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAttendanceModelFirestoreData(
  AttendanceModelStruct? attendanceModel, [
  bool forFieldValue = false,
]) {
  if (attendanceModel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(attendanceModel.toMap());

  // Handle nested data for "workingDays" field.
  addWorkingDaysStructData(
    firestoreData,
    attendanceModel.hasWorkingDays() ? attendanceModel.workingDays : null,
    'workingDays',
    forFieldValue,
  );

  // Add any Firestore field values
  attendanceModel.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAttendanceModelListFirestoreData(
  List<AttendanceModelStruct>? attendanceModels,
) =>
    attendanceModels
        ?.map((e) => getAttendanceModelFirestoreData(e, true))
        .toList() ??
    [];
