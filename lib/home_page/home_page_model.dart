import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  bool isBunchedIn = false;

  DashboardModelStruct? dashBoardModel;
  void updateDashBoardModelStruct(Function(DashboardModelStruct) updateFn) {
    updateFn(dashBoardModel ??= DashboardModelStruct());
  }

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (DashboardApiCall)] action in HomePage widget.
  ApiCallResponse? apiResult8rq;
  // Stores action output result for [Backend Call - API (CreatePunchApiApiCall)] action in Stack widget.
  ApiCallResponse? apiResultvogpun;
  // Stores action output result for [Backend Call - API (DashboardApiCall)] action in Stack widget.
  ApiCallResponse? apiResult7jp;
  // Stores action output result for [Backend Call - API (CreatePunchApiApiCall)] action in Stack widget.
  ApiCallResponse? apiResultvog;
  // Stores action output result for [Backend Call - API (DashboardApiCall)] action in Stack widget.
  ApiCallResponse? apiResult8rq0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
