import '/flutter_flow/flutter_flow_util.dart';
import '/pages/status_component/status_component_widget.dart';
import 'leave_request_page_widget.dart' show LeaveRequestPageWidget;
import 'package:flutter/material.dart';

class LeaveRequestPageModel extends FlutterFlowModel<LeaveRequestPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for StatusComponent component.
  late StatusComponentModel statusComponentModel;

  @override
  void initState(BuildContext context) {
    statusComponentModel = createModel(context, () => StatusComponentModel());
  }

  @override
  void dispose() {
    statusComponentModel.dispose();
  }
}
