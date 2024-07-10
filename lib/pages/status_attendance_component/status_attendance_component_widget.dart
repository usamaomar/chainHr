import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'status_attendance_component_model.dart';
export 'status_attendance_component_model.dart';

class StatusAttendanceComponentWidget extends StatefulWidget {
  const StatusAttendanceComponentWidget({
    super.key,
    required this.status,
  });

  final int? status;

  @override
  State<StatusAttendanceComponentWidget> createState() =>
      _StatusAttendanceComponentWidgetState();
}

class _StatusAttendanceComponentWidgetState
    extends State<StatusAttendanceComponentWidget> {
  late StatusAttendanceComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StatusAttendanceComponentModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.status = widget.status;
      setState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      () {
        if (widget.status == 0) {
          return FFLocalizations.of(context).getVariableText(
            enText: 'Present',
            arText: 'حاضر',
          );
        } else if (widget.status == 1) {
          return FFLocalizations.of(context).getVariableText(
            enText: 'Absent',
            arText: 'غير حاضر',
          );
        } else if (widget.status == 2) {
          return FFLocalizations.of(context).getVariableText(
            enText: 'Leave Applies',
            arText: 'تنطبق الإجازة',
          );
        } else {
          return FFLocalizations.of(context).getVariableText(
            enText: 'Half Day',
            arText: 'نصف يوم',
          );
        }
      }(),
      style: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: 'Inter',
            color: () {
              if (widget.status == 0) {
                return FlutterFlowTheme.of(context).color25AA22;
              } else if (widget.status == 1) {
                return FlutterFlowTheme.of(context).colorE20D0D;
              } else if (widget.status == 2) {
                return FlutterFlowTheme.of(context).color4E88F4;
              } else {
                return FlutterFlowTheme.of(context).color25AA22;
              }
            }(),
            letterSpacing: 0.0,
            fontWeight: FontWeight.bold,
          ),
    );
  }
}
