import '/flutter_flow/flutter_flow_util.dart';
import '/pages/status_attendance_component/status_attendance_component_widget.dart';
import 'my_attendance_page_widget.dart' show MyAttendancePageWidget;
import 'package:flutter/material.dart';

class MyAttendancePageModel extends FlutterFlowModel<MyAttendancePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for StatusAttendanceComponent component.
  late StatusAttendanceComponentModel statusAttendanceComponentModel;

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
