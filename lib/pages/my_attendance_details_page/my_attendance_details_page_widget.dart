import 'package:flutter_svg/svg.dart';
import 'package:hr_chain/backend/backend.dart';
import '../../backend/api_requests/api_calls.dart';
import '../../backend/schema/structs/attendance_model_struct.dart';
import '../../backend/schema/structs/leave_model_struct.dart';
import '../../backend/schema/util/schema_util.dart';
import '../../component/title_tool_bar/title_tool_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'my_attendance_details_page_model.dart';
export 'my_attendance_details_page_model.dart';

class MyAttendanceDetailsPageWidget extends StatefulWidget {
  final DayModelStruct? dayModelStruct;

  const MyAttendanceDetailsPageWidget({super.key, this.dayModelStruct});

  @override
  State<MyAttendanceDetailsPageWidget> createState() =>
      _MyAttendanceDetailsPageWidgetState();
}

class _MyAttendanceDetailsPageWidgetState
    extends State<MyAttendanceDetailsPageWidget> {
  late MyAttendanceDetailsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyAttendanceDetailsPageModel());
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.isLoading = true;
      });
      setState(() {
        _model.currentDate = DateTime.now();
      });
      callApi();
    });
  }

  callApi() async {
    setState(() {
      _model.isLoading = true;
    });
    _model.leaveListApiCall = await HrGroupGroup.attendanceDetails
        .call(context: context, date: widget.dayModelStruct?.date);
    if ((_model.leaveListApiCall?.succeeded ?? true)) {
      _model.attendanceModelStruct =
          AttendanceModelStruct.maybeFromMap(getJsonField(
        (_model.leaveListApiCall?.jsonBody ?? ''),
        r'''$''',
      ));
      setState(() {
        _model.isLoading = false;
      });
    } else {
      setState(() {
        _model.isLoading = false;
      });
      error(context, _model.unfocusNode, _model.leaveListApiCall?.bodyText);
    }
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).colorffffff,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: TitleToolBarWidget(
            title: FFLocalizations.of(context)
                .getVariableText(enText: 'My Attendance', arText: 'حضوري'),
            actionBack: () {
              Navigator.pop(context);
            },
            userImage: FFAppState().UserModelState.profilePhotoPath,
          ),
        ),
        body: const SafeArea(
          top: true,
          child: Stack(
            children: [

            ],
          ),
        ),
      ),
    );
  }
}
