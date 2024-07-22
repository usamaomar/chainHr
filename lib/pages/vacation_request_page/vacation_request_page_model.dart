import '../../backend/api_requests/api_manager.dart';
import '../../backend/schema/structs/data_struct.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/status_component/status_component_widget.dart';
import 'vacation_request_page_widget.dart' show VacationRequestPageWidget;
import 'package:flutter/material.dart';

class VacationRequestPageModel
    extends FlutterFlowModel<VacationRequestPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for StatusComponent component.
  late StatusComponentModel statusComponentModel;

  // Model for StatusComponent component.
  ApiCallResponse? leaveListApiCall;
  bool? isLoading = false;

  List<DataStruct> listOfLocalCategory = [];
  void addToListOfLocalCategory(DataStruct item) =>
      listOfLocalCategory.add(item);
  void removeFromListOfLocalCategory(DataStruct item) =>
      listOfLocalCategory.remove(item);
  void removeAtIndexFromListOfLocalCategory(int index) =>
      listOfLocalCategory.removeAt(index);
  void insertAtIndexInListOfLocalCategory(
      int index, DataStruct item) =>
      listOfLocalCategory.insert(index, item);
  void updateListOfLocalCategoryAtIndex(
      int index, Function(DataStruct) updateFn) =>
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