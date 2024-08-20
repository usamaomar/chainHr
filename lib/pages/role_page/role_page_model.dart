import 'package:hr_chain/backend/backend.dart';

import '../../backend/api_requests/api_manager.dart';
import '../../backend/schema/structs/info_cards_model.dart';
import '../../backend/schema/structs/leave_model_struct.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/status_component/status_component_widget.dart';
import 'role_page_widget.dart' show RolePageWidget;
import 'package:flutter/material.dart';

class RolePageModel extends FlutterFlowModel<RolePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for StatusComponent component.
  late StatusComponentModel statusComponentModel;
  ApiCallResponse? leaveListApiCall;
  bool? isLoading = false;
  late List<InfoCardsModel> absentList = [];

  List<LeaveModelStruct> listOfLocalCategory = [];
  void addToListOfLocalCategory(LeaveModelStruct item) =>
      listOfLocalCategory.add(item);
  void removeFromListOfLocalCategory(LeaveModelStruct item) =>
      listOfLocalCategory.remove(item);
  void removeAtIndexFromListOfLocalCategory(int index) =>
      listOfLocalCategory.removeAt(index);
  void insertAtIndexInListOfLocalCategory(
      int index, LeaveModelStruct item) =>
      listOfLocalCategory.insert(index, item);
  void updateListOfLocalCategoryAtIndex(
      int index, Function(LeaveModelStruct) updateFn) =>
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