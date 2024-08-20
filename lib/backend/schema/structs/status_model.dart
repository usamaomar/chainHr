import '../../../flutter_flow/flutter_flow_util.dart';
import '../util/firestore_util.dart';

class StatusModel extends FFFirebaseStruct {
  StatusModel({
    int? id,
    String? name,
    String? status,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _name = name,
        _status = status,
        super(firestoreUtilData);

  static StatusModel fromMap(Map<String, dynamic> data) => StatusModel(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        status: data['status'] as String?,
      );

  // "id" field.
  int? _id;

  int get id => _id ?? 0;

  set id(int? val) => _id = val;

  // "name" field.
  String? _name;

  String get name => _name ?? '';

  set name(String? val) => _name = val;

  // "name" field.
  String? _status;

  String get status => _status ?? '';

  set status(String? val) => _status = val;

  Map<String, dynamic> toMap() =>
      {'id': _id, 'name': _name, 'status': _status}.withoutNulls;

  static StatusModel? maybeFromMap(dynamic data) =>
      data is Map ? StatusModel.fromMap(data.cast<String, dynamic>()) : null;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        )
      }.withoutNulls;
}
