import '/flutter_flow/flutter_flow_util.dart';
import 'my_profile_page_widget.dart' show MyProfilePageWidget;
import 'package:flutter/material.dart';

class MyProfilePageModel extends FlutterFlowModel<MyProfilePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
