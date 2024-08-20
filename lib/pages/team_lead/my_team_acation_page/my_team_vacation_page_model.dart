import 'package:hr_chain/backend/schema/structs/employee_model_struct.dart';

import '../../../backend/api_requests/api_manager.dart';
import '../../../backend/schema/structs/data_struct.dart';
import '../../../backend/schema/structs/employee_struct.dart';
import '../../../backend/schema/structs/status_model.dart';
import '../../../backend/schema/structs/vacations_struct.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/status_component/status_component_widget.dart';
import 'my_team_vacation_page_widget.dart';
import 'my_team_vacation_page_widget.dart' show MyTeamVacationPageWidget;
import 'package:flutter/material.dart';

class MyTeamVacationPageModel
    extends FlutterFlowModel<MyTeamVacationPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for StatusComponent component.
  late StatusComponentModel statusComponentModel;

  // Model for StatusComponent component.
  ApiCallResponse? leaveListApiCall;
  ApiCallResponse? updateDetailsStateApiCall;
  bool? isLoading = false;
  EmployeeStruct? selectedEmpolyeeModel;
  List<DataStruct>? selectedListDataStruct;
  List<VacationsStruct>? selectedListVacationsStruct = [];
  StatusModel? statusModel;

  // List<DataStruct> listOfLocalCategory = [];
  // void addToListOfLocalCategory(DataStruct item) =>
  //     listOfLocalCategory.add(item);
  // void removeFromListOfLocalCategory(DataStruct item) =>
  //     listOfLocalCategory.remove(item);
  // void removeAtIndexFromListOfLocalCategory(int index) =>
  //     listOfLocalCategory.removeAt(index);
  // void insertAtIndexInListOfLocalCategory(
  //     int index, DataStruct item) =>
  //     listOfLocalCategory.insert(index, item);
  // void updateListOfLocalCategoryAtIndex(
  //     int index, Function(DataStruct) updateFn) =>
  //     listOfLocalCategory[index] = updateFn(listOfLocalCategory[index]);


  @override
  void initState(BuildContext context) {
    statusComponentModel = createModel(context, () => StatusComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    statusComponentModel.dispose();
  }
}
