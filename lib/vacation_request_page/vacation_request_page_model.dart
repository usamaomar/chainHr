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
