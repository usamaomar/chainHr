import '../../backend/api_requests/api_calls.dart';
import '../../backend/schema/util/schema_util.dart';
import '../../component/title_tool_bar/title_tool_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/status_attendance_component/status_attendance_component_widget.dart';
import 'package:flutter/material.dart';
import 'my_attendance_page_model.dart';
export 'my_attendance_page_model.dart';

class MyAttendancePageWidget extends StatefulWidget {
  const MyAttendancePageWidget({super.key});

  @override
  State<MyAttendancePageWidget> createState() => _MyAttendancePageWidgetState();
}

class _MyAttendancePageWidgetState extends State<MyAttendancePageWidget> {
  late MyAttendancePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyAttendancePageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
          _model.currentDate = DateTime.now();
        }));
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
            title: FFLocalizations.of(context).getText(
              'nxo36ihz' /* My Attendance */,
            ),
            actionBack: () {
              Navigator.pop(context);
            },
            userImage: FFAppState().UserModelState.profilePhotoPath,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding:
                    const EdgeInsetsDirectional.fromSTEB(0.0, 18.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () async{
                        setState(() {
                          _model.currentDate = DateTime(
                            _model.currentDate?.year ?? 2024,
                            (_model.currentDate?.month ?? 1) - 1,
                            (_model.currentDate?.day ?? 1),
                          );
                        });
                        await callApi();
                      },
                      child: Icon(
                        Icons.arrow_left,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 27.0,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.5,
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            31.0, 0.0, 31.0, 0.0),
                        child: Text(
                          dateTimeFormat(
                              'MMMM yyyy', _model.currentDate ?? DateTime.now(),
                              locale: FFAppState().getSelectedLanguge),
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Inter',
                                color: FlutterFlowTheme.of(context).color4E88F4,
                                fontSize: 20.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () async{
                        setState(() {
                          _model.currentDate = DateTime(
                            _model.currentDate?.year ?? 2024,
                            (_model.currentDate?.month ?? 1) + 1,
                            (_model.currentDate?.day ?? 1),
                          );
                        });
                       await callApi();
                      },
                      child: Icon(
                        Icons.arrow_right,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 27.0,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsetsDirectional.fromSTEB(15.0, 25.0, 15.0, 0.0),
                child: ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Flexible(
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            elevation: 4.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              20.0, 0.0, 20.0, 0.0),
                                      child: Container(
                                        width: 50.0,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'g92g608v' /* 31 */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .color828282,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'jxnegqrj' /* June */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .color828282,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '6xno3nqm' /* 2024 */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .color828282,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 100.0,
                                      child: VerticalDivider(
                                        thickness: 1.0,
                                        color: FlutterFlowTheme.of(context)
                                            .colorDDDDDD,
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(0.0, 12.0, 0.0, 0.0),
                                          child: wrapWithModel(
                                            model: _model
                                                .statusAttendanceComponentModel,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child:
                                                const StatusAttendanceComponentWidget(
                                              status: 1,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(0.0, 12.0, 0.0, 16.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'i56izuww' /* From 12 : 30 PM  To  01 : 30 P... */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .color908888,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

    callApi() async{
    _model.monthAttendanceApiCall = await HrGroupGroup.monthAttendanceApiCall.call(
        context: context,
        date: dateTimeFormat('dd-MM-yyyy', _model.currentDate, locale: 'en'));
    if ((_model.monthAttendanceApiCall?.succeeded ?? true)) {
      // _model.monthAttendanceApiCall = getStructList(
      //   getJsonField(
      //     (_model.leaveListApiCall?.jsonBody ?? ''),
      //     r'''$''',
      //   ),
      //   LeaveModelStruct.fromMap,
      // ) ??
      //     [];
      // setState(() {});
      // setState(() {
      //   _model.isLoading = false;
      // });
    }
  }

}
