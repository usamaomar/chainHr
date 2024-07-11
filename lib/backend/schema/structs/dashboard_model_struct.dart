// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DashboardModelStruct extends FFFirebaseStruct {
  DashboardModelStruct({
    String? pin,
    String? pout,
    String? date,
    int? perc,
    String? status,
    int? breakTime,
    int? overtime,
    int? shortage,
    List<AttendancePeriodsStruct>? attendancePeriods,
    BalanceVacationStruct? balanceVacation,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _pin = pin,
        _pout = pout,
        _date = date,
        _perc = perc,
        _status = status,
        _breakTime = breakTime,
        _overtime = overtime,
        _shortage = shortage,
        _attendancePeriods = attendancePeriods,
        _balanceVacation = balanceVacation,
        super(firestoreUtilData);

  // "PIN" field.
  String? _pin;
  String get pin => _pin ?? '';
  set pin(String? val) => _pin = val;

  bool hasPin() => _pin != null;

  // "POUT" field.
  String? _pout;
  String get pout => _pout ?? '';
  set pout(String? val) => _pout = val;

  bool hasPout() => _pout != null;

  // "Date" field.
  String? _date;
  String get date => _date ?? '';
  set date(String? val) => _date = val;

  bool hasDate() => _date != null;

  // "perc" field.
  int? _perc;
  int get perc => _perc ?? 0;
  set perc(int? val) => _perc = val;

  void incrementPerc(int amount) => perc = perc + amount;

  bool hasPerc() => _perc != null;

  // "STATUS" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "break_time" field.
  int? _breakTime;
  int get breakTime => _breakTime ?? 0;
  set breakTime(int? val) => _breakTime = val;

  void incrementBreakTime(int amount) => breakTime = breakTime + amount;

  bool hasBreakTime() => _breakTime != null;

  // "overtime" field.
  int? _overtime;
  int get overtime => _overtime ?? 0;
  set overtime(int? val) => _overtime = val;

  void incrementOvertime(int amount) => overtime = overtime + amount;

  bool hasOvertime() => _overtime != null;

  // "shortage" field.
  int? _shortage;
  int get shortage => _shortage ?? 0;
  set shortage(int? val) => _shortage = val;

  void incrementShortage(int amount) => shortage = shortage + amount;

  bool hasShortage() => _shortage != null;

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

  // "balanceVacation" field.
  BalanceVacationStruct? _balanceVacation;
  BalanceVacationStruct get balanceVacation =>
      _balanceVacation ?? BalanceVacationStruct();
  set balanceVacation(BalanceVacationStruct? val) => _balanceVacation = val;

  void updateBalanceVacation(Function(BalanceVacationStruct) updateFn) {
    updateFn(_balanceVacation ??= BalanceVacationStruct());
  }

  bool hasBalanceVacation() => _balanceVacation != null;

  static DashboardModelStruct fromMap(Map<String, dynamic> data) =>
      DashboardModelStruct(
        pin: data['PIN'] as String?,
        pout: data['POUT'] as String?,
        date: data['Date'] as String?,
        perc: castToType<int>(data['perc']),
        status: data['STATUS'] as String?,
        breakTime: castToType<int>(data['break_time']),
        overtime: castToType<int>(data['overtime']),
        shortage: castToType<int>(data['shortage']),
        attendancePeriods: getStructList(
          data['attendancePeriods'],
          AttendancePeriodsStruct.fromMap,
        ),
        balanceVacation:
            BalanceVacationStruct.maybeFromMap(data['balanceVacation']),
      );

  static DashboardModelStruct? maybeFromMap(dynamic data) => data is Map
      ? DashboardModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'PIN': _pin,
        'POUT': _pout,
        'Date': _date,
        'perc': _perc,
        'STATUS': _status,
        'break_time': _breakTime,
        'overtime': _overtime,
        'shortage': _shortage,
        'attendancePeriods': _attendancePeriods?.map((e) => e.toMap()).toList(),
        'balanceVacation': _balanceVacation?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'PIN': serializeParam(
          _pin,
          ParamType.String,
        ),
        'POUT': serializeParam(
          _pout,
          ParamType.String,
        ),
        'Date': serializeParam(
          _date,
          ParamType.String,
        ),
        'perc': serializeParam(
          _perc,
          ParamType.int,
        ),
        'STATUS': serializeParam(
          _status,
          ParamType.String,
        ),
        'break_time': serializeParam(
          _breakTime,
          ParamType.int,
        ),
        'overtime': serializeParam(
          _overtime,
          ParamType.int,
        ),
        'shortage': serializeParam(
          _shortage,
          ParamType.int,
        ),
        'attendancePeriods': serializeParam(
          _attendancePeriods,
          ParamType.DataStruct,
          isList: true,
        ),
        'balanceVacation': serializeParam(
          _balanceVacation,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static DashboardModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      DashboardModelStruct(
        pin: deserializeParam(
          data['PIN'],
          ParamType.String,
          false,
        ),
        pout: deserializeParam(
          data['POUT'],
          ParamType.String,
          false,
        ),
        date: deserializeParam(
          data['Date'],
          ParamType.String,
          false,
        ),
        perc: deserializeParam(
          data['perc'],
          ParamType.int,
          false,
        ),
        status: deserializeParam(
          data['STATUS'],
          ParamType.String,
          false,
        ),
        breakTime: deserializeParam(
          data['break_time'],
          ParamType.int,
          false,
        ),
        overtime: deserializeParam(
          data['overtime'],
          ParamType.int,
          false,
        ),
        shortage: deserializeParam(
          data['shortage'],
          ParamType.int,
          false,
        ),
        attendancePeriods: deserializeStructParam<AttendancePeriodsStruct>(
          data['attendancePeriods'],
          ParamType.DataStruct,
          true,
          structBuilder: AttendancePeriodsStruct.fromSerializableMap,
        ),
        balanceVacation: deserializeStructParam(
          data['balanceVacation'],
          ParamType.DataStruct,
          false,
          structBuilder: BalanceVacationStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'DashboardModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DashboardModelStruct &&
        pin == other.pin &&
        pout == other.pout &&
        date == other.date &&
        perc == other.perc &&
        status == other.status &&
        breakTime == other.breakTime &&
        overtime == other.overtime &&
        shortage == other.shortage &&
        listEquality.equals(attendancePeriods, other.attendancePeriods) &&
        balanceVacation == other.balanceVacation;
  }

  @override
  int get hashCode => const ListEquality().hash([
        pin,
        pout,
        date,
        perc,
        status,
        breakTime,
        overtime,
        shortage,
        attendancePeriods,
        balanceVacation
      ]);
}

DashboardModelStruct createDashboardModelStruct({
  String? pin,
  String? pout,
  String? date,
  int? perc,
  String? status,
  int? breakTime,
  int? overtime,
  int? shortage,
  BalanceVacationStruct? balanceVacation,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DashboardModelStruct(
      pin: pin,
      pout: pout,
      date: date,
      perc: perc,
      status: status,
      breakTime: breakTime,
      overtime: overtime,
      shortage: shortage,
      balanceVacation: balanceVacation ??
          (clearUnsetFields ? BalanceVacationStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DashboardModelStruct? updateDashboardModelStruct(
  DashboardModelStruct? dashboardModel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dashboardModel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDashboardModelStructData(
  Map<String, dynamic> firestoreData,
  DashboardModelStruct? dashboardModel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dashboardModel == null) {
    return;
  }
  if (dashboardModel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dashboardModel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dashboardModelData =
      getDashboardModelFirestoreData(dashboardModel, forFieldValue);
  final nestedData =
      dashboardModelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = dashboardModel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDashboardModelFirestoreData(
  DashboardModelStruct? dashboardModel, [
  bool forFieldValue = false,
]) {
  if (dashboardModel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dashboardModel.toMap());

  // Handle nested data for "balanceVacation" field.
  addBalanceVacationStructData(
    firestoreData,
    dashboardModel.hasBalanceVacation() ? dashboardModel.balanceVacation : null,
    'balanceVacation',
    forFieldValue,
  );

  // Add any Firestore field values
  dashboardModel.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDashboardModelListFirestoreData(
  List<DashboardModelStruct>? dashboardModels,
) =>
    dashboardModels
        ?.map((e) => getDashboardModelFirestoreData(e, true))
        .toList() ??
    [];
