import '../../backend/api_requests/api_manager.dart';
import '../../backend/schema/structs/day_model_struct.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/status_attendance_component/status_attendance_component_widget.dart';
import 'my_attendance_page_widget.dart' show MyAttendancePageWidget;
import 'package:flutter/material.dart';

class MyAttendancePageModel extends FlutterFlowModel<MyAttendancePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for StatusAttendanceComponent component.
  late StatusAttendanceComponentModel statusAttendanceComponentModel;
  DateTime? currentDate;
  ApiCallResponse? monthAttendanceApiCall;
  bool? isLoading = false;


  List<DayModelStruct> listOfLocalCategory = [];
  void addToListOfLocalCategory(DayModelStruct item) =>
      listOfLocalCategory.add(item);
  void removeFromListOfLocalCategory(DayModelStruct item) =>
      listOfLocalCategory.remove(item);
  void removeAtIndexFromListOfLocalCategory(int index) =>
      listOfLocalCategory.removeAt(index);
  void insertAtIndexInListOfLocalCategory(
      int index, DayModelStruct item) =>
      listOfLocalCategory.insert(index, item);
  void updateListOfLocalCategoryAtIndex(
      int index, Function(DayModelStruct) updateFn) =>
      listOfLocalCategory[index] = updateFn(listOfLocalCategory[index]);


  @override
  void initState(BuildContext context) {
    statusAttendanceComponentModel =
        createModel(context, () => StatusAttendanceComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    statusAttendanceComponentModel.dispose();
  }
}
