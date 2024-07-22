// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VacationModelStruct extends FFFirebaseStruct {
  VacationModelStruct({
    List<DataStruct>? data,
    int? total,
    int? currentPage,
    int? lastPage,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _data = data,
        _total = total,
        _currentPage = currentPage,
        _lastPage = lastPage,
        super(firestoreUtilData);

  // "data" field.
  List<DataStruct>? _data;
  List<DataStruct> get data => _data ?? const [];
  set data(List<DataStruct>? val) => _data = val;

  void updateData(Function(List<DataStruct>) updateFn) {
    updateFn(_data ??= []);
  }

  bool hasData() => _data != null;

  // "total" field.
  int? _total;
  int get total => _total ?? 0;
  set total(int? val) => _total = val;

  void incrementTotal(int amount) => total = total + amount;

  bool hasTotal() => _total != null;

  // "current_page" field.
  int? _currentPage;
  int get currentPage => _currentPage ?? 0;
  set currentPage(int? val) => _currentPage = val;

  void incrementCurrentPage(int amount) => currentPage = currentPage + amount;

  bool hasCurrentPage() => _currentPage != null;

  // "last_page" field.
  int? _lastPage;
  int get lastPage => _lastPage ?? 0;
  set lastPage(int? val) => _lastPage = val;

  void incrementLastPage(int amount) => lastPage = lastPage + amount;

  bool hasLastPage() => _lastPage != null;

  static VacationModelStruct fromMap(Map<String, dynamic> data) =>
      VacationModelStruct(
        data: getStructList(
          data['data'],
          DataStruct.fromMap,
        ),
        total: castToType<int>(data['total']),
        currentPage: castToType<int>(data['current_page']),
        lastPage: castToType<int>(data['last_page']),
      );

  static VacationModelStruct? maybeFromMap(dynamic data) => data is Map
      ? VacationModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'data': _data?.map((e) => e.toMap()).toList(),
        'total': _total,
        'current_page': _currentPage,
        'last_page': _lastPage,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'data': serializeParam(
          _data,
          ParamType.DataStruct,
          isList: true,
        ),
        'total': serializeParam(
          _total,
          ParamType.int,
        ),
        'current_page': serializeParam(
          _currentPage,
          ParamType.int,
        ),
        'last_page': serializeParam(
          _lastPage,
          ParamType.int,
        ),
      }.withoutNulls;

  static VacationModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      VacationModelStruct(
        data: deserializeStructParam<DataStruct>(
          data['data'],
          ParamType.DataStruct,
          true,
          structBuilder: DataStruct.fromSerializableMap,
        ),
        total: deserializeParam(
          data['total'],
          ParamType.int,
          false,
        ),
        currentPage: deserializeParam(
          data['current_page'],
          ParamType.int,
          false,
        ),
        lastPage: deserializeParam(
          data['last_page'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'VacationModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is VacationModelStruct &&
        listEquality.equals(data, other.data) &&
        total == other.total &&
        currentPage == other.currentPage &&
        lastPage == other.lastPage;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([data, total, currentPage, lastPage]);
}

VacationModelStruct createVacationModelStruct({
  int? total,
  int? currentPage,
  int? lastPage,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    VacationModelStruct(
      total: total,
      currentPage: currentPage,
      lastPage: lastPage,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

VacationModelStruct? updateVacationModelStruct(
  VacationModelStruct? vacationModel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    vacationModel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addVacationModelStructData(
  Map<String, dynamic> firestoreData,
  VacationModelStruct? vacationModel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (vacationModel == null) {
    return;
  }
  if (vacationModel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && vacationModel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final vacationModelData =
      getVacationModelFirestoreData(vacationModel, forFieldValue);
  final nestedData =
      vacationModelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = vacationModel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getVacationModelFirestoreData(
  VacationModelStruct? vacationModel, [
  bool forFieldValue = false,
]) {
  if (vacationModel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(vacationModel.toMap());

  // Add any Firestore field values
  vacationModel.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getVacationModelListFirestoreData(
  List<VacationModelStruct>? vacationModels,
) =>
    vacationModels
        ?.map((e) => getVacationModelFirestoreData(e, true))
        .toList() ??
    [];
