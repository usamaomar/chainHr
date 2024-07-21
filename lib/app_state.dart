import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      if (prefs.containsKey('ff_UserModelState')) {
        try {
          final serializedData = prefs.getString('ff_UserModelState') ?? '{}';
          _UserModelState =
              UserModelStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_EmploymentInfoState')) {
        try {
          final serializedData =
              prefs.getString('ff_EmploymentInfoState') ?? '{}';
          _EmploymentInfoState = EmploymentInfoModelStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _selectedLangugeAppState = prefs.getInt('ff_selectedLangugeAppState') ??
          _selectedLangugeAppState;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  UserModelStruct _UserModelState = UserModelStruct();
  UserModelStruct get UserModelState => _UserModelState;
  set UserModelState(UserModelStruct value) {
    _UserModelState = value;
    prefs.setString('ff_UserModelState', value.serialize());
  }

  void updateUserModelStateStruct(Function(UserModelStruct) updateFn) {
    updateFn(_UserModelState);
    prefs.setString('ff_UserModelState', _UserModelState.serialize());
  }

  EmploymentInfoModelStruct _EmploymentInfoState = EmploymentInfoModelStruct();
  EmploymentInfoModelStruct get EmploymentInfoState => _EmploymentInfoState;
  set EmploymentInfoState(EmploymentInfoModelStruct value) {
    _EmploymentInfoState = value;
    prefs.setString('ff_EmploymentInfoState', value.serialize());
  }

  void updateEmploymentInfoStateStruct(
      Function(EmploymentInfoModelStruct) updateFn) {
    updateFn(_EmploymentInfoState);
    prefs.setString('ff_EmploymentInfoState', _EmploymentInfoState.serialize());
  }

  int _selectedLangugeAppState = 1;
  int get selectedLangugeAppState => _selectedLangugeAppState;
  set selectedLangugeAppState(int value) {
    _selectedLangugeAppState = value;
    prefs.setInt('ff_selectedLangugeAppState', value);
  }

  String get getSelectedLanguge{
    return _selectedLangugeAppState == 1 ? 'en' : 'ar';
  }

}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
