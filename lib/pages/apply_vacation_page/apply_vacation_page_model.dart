import '../../backend/api_requests/api_manager.dart';
import '../../backend/schema/structs/dashboard_model_struct.dart';
import '../../backend/schema/structs/leave_type_struct.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'apply_vacation_page_widget.dart' show ApplyVacationPageWidget;
import 'package:flutter/material.dart';

class ApplyVacationPageModel extends FlutterFlowModel<ApplyVacationPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  DashboardModelStruct? localDashboardModelStruct;
  LeaveTypeStruct? leaveTypeStruct;
  DateTime? selectedDate;
  DateTime? endDate;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
  FFUploadedFile(bytes: Uint8List.fromList([]));
  ApiCallResponse? applyLeaveApiCall;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
