import '../../../backend/api_requests/api_manager.dart';
 import '../../../backend/schema/structs/data_struct.dart';
import '../../../backend/schema/structs/employee_model_struct.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/status_component/status_component_widget.dart';
import 'my_team_list_page_widget.dart' show MyTeamListPageWidget;
import 'package:flutter/material.dart';

class MyTeamListPageModel
    extends FlutterFlowModel<MyTeamListPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for StatusComponent component.
  late StatusComponentModel statusComponentModel;

  // Model for StatusComponent component.
  ApiCallResponse? leaveListApiCall;
  bool? isLoading = false;
  DateTime? currentDate;

  List<EmployeeModelStruct> listOfLocalCategory = [];
  void addToListOfLocalCategory(EmployeeModelStruct item) =>
      listOfLocalCategory.add(item);
  void removeFromListOfLocalCategory(EmployeeModelStruct item) =>
      listOfLocalCategory.remove(item);
  void removeAtIndexFromListOfLocalCategory(int index) =>
      listOfLocalCategory.removeAt(index);
  void insertAtIndexInListOfLocalCategory(
      int index, EmployeeModelStruct item) =>
      listOfLocalCategory.insert(index, item);
  void updateListOfLocalCategoryAtIndex(
      int index, Function(EmployeeModelStruct) updateFn) =>
      listOfLocalCategory[index] = updateFn(listOfLocalCategory[index]);


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
