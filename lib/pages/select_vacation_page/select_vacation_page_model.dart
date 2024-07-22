
import '../../../backend/api_requests/api_calls.dart';
import '../../../backend/api_requests/api_manager.dart';
import '../../backend/schema/structs/leave_type_struct.dart';
import '../../component/simpole_toolbar_component/simpole_toolbar_component_model.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'select_vacation_page_widget.dart' show SelectVacationPageWidget;
import 'package:flutter/material.dart';

class SelectVacationPageModel extends FlutterFlowModel<SelectVacationPageWidget> {
  ///  Local state fields for this page.

  List<LeaveTypeStruct> listOfLocalCategory = [];
  void addToListOfLocalCategory(LeaveTypeStruct item) =>
      listOfLocalCategory.add(item);
  void removeFromListOfLocalCategory(LeaveTypeStruct item) =>
      listOfLocalCategory.remove(item);
  void removeAtIndexFromListOfLocalCategory(int index) =>
      listOfLocalCategory.removeAt(index);
  void insertAtIndexInListOfLocalCategory(
          int index, LeaveTypeStruct item) =>
      listOfLocalCategory.insert(index, item);
  void updateListOfLocalCategoryAtIndex(
          int index, Function(LeaveTypeStruct) updateFn) =>
      listOfLocalCategory[index] = updateFn(listOfLocalCategory[index]);
  ApiCallResponse? apiCallResponseGetCats;
  ApiCallResponse? leaveTypeApiCall;


  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for simpoleToolbarComponent component.
  late SimpoleToolbarComponentModel simpoleToolbarComponentModel;


  @override
  void initState(BuildContext context) {
    simpoleToolbarComponentModel =
        createModel(context, () => SimpoleToolbarComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    simpoleToolbarComponentModel.dispose();
  }
}
