import 'package:flutter/cupertino.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import '../../../flutter_flow/flutter_flow_widgets.dart';
import '../../../flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'calendar_component_model.dart';
export 'calendar_component_model.dart';

class CalendarComponentWidget extends StatefulWidget {
  final void Function(DateTime)? onDateTimeChanged;
  final DateTime? selectedDate;
  final DateTime? minimumDate;

  const CalendarComponentWidget(
      {super.key, this.onDateTimeChanged, this.selectedDate, this.minimumDate});

  @override
  State<CalendarComponentWidget> createState() =>
      _CalendarComponentWidgetState();
}

class _CalendarComponentWidgetState extends State<CalendarComponentWidget> {
  late CalendarComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalendarComponentModel());

    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.selectedDate = widget.selectedDate;
        _model.minimumDate = widget.minimumDate;
        if (_model.minimumDate
                ?.isAfter(_model.selectedDate ?? DateTime.now()) ==
            true) {
          _model.selectedDate = _model.minimumDate?.addOneMinute();
        }
      });
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(0.0),
                child: Icon(
                  Icons.calendar_month_rounded,
                  color: FlutterFlowTheme.of(context).color4E88F4,
                  size: 24.0,
                )),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
            child: Text(
              FFLocalizations.of(context).getVariableText(
                enText: 'Select Date',
                arText: 'اختر التاريخ',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Roboto',
                    color: FlutterFlowTheme.of(context).color000000,
                    fontSize: 18.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          SizedBox(
            height: 200,
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.date,
              minimumDate: _model.minimumDate,
              initialDateTime: _model.selectedDate,
              onDateTimeChanged: (DateTime newDateTime) {
                setState(() {
                  _model.onChanged = true;
                  _model.selectedDate = newDateTime;
                });
              },
            ),
          ),
          Flexible(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: FFButtonWidget(
                    onPressed: () async {
                      if (_model.onChanged == true) {
                        widget.onDateTimeChanged
                            ?.call(_model.selectedDate ?? DateTime.now());
                        Navigator.pop(context);
                      } else {
                        widget.onDateTimeChanged?.call(DateTime.now());
                        Navigator.pop(context);
                      }
                    },
                    text: FFLocalizations.of(context).getVariableText(
                      enText: 'SELECT',
                      arText: 'اختر',
                    ),
                    options: FFButtonOptions(
                      height: 48.0,
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          50.0, 14.0, 50.0, 14.0),
                      iconPadding: const EdgeInsetsDirectional.fromSTEB(
                          0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).color4E88F4,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Roboto',
                                color: FlutterFlowTheme.of(context).color000000,
                                letterSpacing: 0.0,
                              ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).color4E88F4,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
