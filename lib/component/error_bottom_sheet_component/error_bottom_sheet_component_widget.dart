import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'error_bottom_sheet_component_model.dart';
export 'error_bottom_sheet_component_model.dart';

class ErrorBottomSheetComponentWidget extends StatefulWidget {
  final String? error;

  const ErrorBottomSheetComponentWidget({super.key, this.error});

  @override
  State<ErrorBottomSheetComponentWidget> createState() =>
      _ErrorBottomSheetComponentWidgetState();
}

class _ErrorBottomSheetComponentWidgetState
    extends State<ErrorBottomSheetComponentWidget> {
  late ErrorBottomSheetComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ErrorBottomSheetComponentModel());
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
              child: SvgPicture.asset(
                'assets/images/not_allowed.svg',
                width: 32.0,
                height: 32.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
            child: Text(
              FFLocalizations.of(context).getVariableText(
                enText: 'Something went wrong !',
                arText: "حدث خطاء ما",
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
          Flexible(
            child: Padding(
              padding:
              const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
              child: Text(
                widget.error ?? '',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Roboto',
                  color: FlutterFlowTheme.of(context).color000000,
                  fontSize: 14.0,
                  letterSpacing: 0.14,
                  fontWeight: FontWeight.w500,
                  lineHeight: 1.8,
                ),
              ),
            ),
          ),
          Flexible(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: FFButtonWidget(
                    onPressed: () async {
                      Navigator.pop(context);
                    },
                    text: FFLocalizations.of(context).getVariableText(
                      enText: 'Done',
                      arText: "حسنا",
                    ),
                    options: FFButtonOptions(
                      height: 48.0,
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          50.0, 14.0, 50.0, 14.0),
                      iconPadding: const EdgeInsetsDirectional.fromSTEB(
                          0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).colorE20D0D,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Roboto',
                                color: FlutterFlowTheme.of(context).colorffffff,
                                letterSpacing: 0.0,
                              ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).colorE20D0D,
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
