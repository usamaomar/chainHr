import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'status_component_model.dart';
export 'status_component_model.dart';

class StatusComponentWidget extends StatefulWidget {
  const StatusComponentWidget({
    super.key,
    required this.status,
  });

  final int? status;

  @override
  State<StatusComponentWidget> createState() => _StatusComponentWidgetState();
}

class _StatusComponentWidgetState extends State<StatusComponentWidget> {
  late StatusComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StatusComponentModel());

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
            enText: 'Pending',
            arText: 'قيد الانتظار',
          );
        } else if (widget.status == 1) {
          return FFLocalizations.of(context).getVariableText(
            enText: 'Approved',
            arText: 'موافقة',
          );
        } else if (widget.status == 2) {
          return FFLocalizations.of(context).getVariableText(
            enText: 'Not Approved',
            arText: 'غير مقبول',
          );
        } else {
          return '-';
        }
      }(),
      style: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: 'Inter',
            color: () {
              if (widget.status == 0) {
                return FlutterFlowTheme.of(context).colorF69B11;
              } else if (widget.status == 1) {
                return FlutterFlowTheme.of(context).color25AA22;
              } else {
                return FlutterFlowTheme.of(context).colorE20D0D;
              }
            }(),
            letterSpacing: 0.0,
            fontWeight: FontWeight.bold,
          ),
    );
  }
}
