import 'package:linear_progress_bar/linear_progress_bar.dart';

import '../../backend/api_requests/api_calls.dart';
import '../../backend/schema/structs/day_model_struct.dart';
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

    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _model.currentDate = DateTime.now();
      });
      callApi();
    });
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
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          0.0, 18.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () async {
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
                                dateTimeFormat('MMMM yyyy',
                                    _model.currentDate ?? DateTime.now(),
                                    locale: FFAppState().getSelectedLanguge),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      color: FlutterFlowTheme.of(context)
                                          .color4E88F4,
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
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
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 24.0, 0.0, 0.0),
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: _model.listOfLocalCategory.length,
                          itemBuilder: (context, index) {
                            final positionItem =
                                _model.listOfLocalCategory[index];
                            return Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Flexible(
                                  child: InkWell(
                                    onTap: () {
                                      context.pushNamed('MyAttendanceDetailsPageWidget', queryParameters: {
                                        'DayModelStruct':
                                        serializeParam(positionItem.toMap(), ParamType.JSON)
                                      });
                                    },
                                    child: Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      elevation: 4.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        20.0, 0.0, 20.0, 0.0),
                                                child: Container(
                                                  width: 50.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        positionItem.date
                                                            .toFormattedDate(
                                                                'dd'),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .color828282,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                      ),
                                                      Text(
                                                        positionItem.date
                                                            .toFormattedDate(
                                                                'MMM'),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .color828282,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                      Text(
                                                        positionItem.date
                                                            .toFormattedDate(
                                                                'yyyy'),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .color828282,
                                                                  letterSpacing:
                                                                      0.0,
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .colorDDDDDD,
                                                ),
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 12.0,
                                                            0.0, 0.0),
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .statusAttendanceComponentModel,
                                                      updateCallback: () =>
                                                          setState(() {}),
                                                      child:
                                                          StatusAttendanceComponentWidget(
                                                        status: (positionItem
                                                                    .progress <
                                                                50)
                                                            ? 1
                                                            : ((positionItem.progress >=
                                                                        50 &&
                                                                    positionItem
                                                                            .progress <=
                                                                        70)
                                                                ? 3
                                                                : 0),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 12.0,
                                                            0.0, 16.0),
                                                    child: Text(
                                                      '${positionItem.progress}%',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: positionItem
                                                                .progress
                                                                .toColor,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width /
                                                            1.5,
                                                    child: LinearProgressBar(
                                                      maxSteps: 100,
                                                      progressType:
                                                          LinearProgressBar
                                                              .progressTypeLinear,
                                                      // Use Linear progress
                                                      currentStep:
                                                          positionItem.progress,
                                                      progressColor:
                                                          positionItem
                                                              .progress.toColor,
                                                      backgroundColor:
                                                          Colors.grey,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10), //  NEW
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
                                ),
                              ],
                            );
                          },
                        )),
                  ],
                ),
              ),
              Visibility(
                visible: _model.listOfLocalCategory.isEmpty == true &&
                    _model.isLoading == false,
                child: Center(
                  child: Text(
                    FFLocalizations.of(context).getVariableText(
                      enText: 'No data is found !',
                      arText: 'لم يتم العثور على اي بيانات !',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).color908888,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              Visibility(
                visible: _model.isLoading == true,
                child: Center(
                  child: CircularProgressIndicator(
                    color: FlutterFlowTheme.of(context).color4E88F4,
                    strokeWidth: 4,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  callApi() async {
    setState(() {
      _model.isLoading = true;
      _model.listOfLocalCategory.clear();
    });
    _model.monthAttendanceApiCall = await HrGroupGroup.monthAttendanceApiCall
        .call(
            context: context,
            date:
                dateTimeFormat('dd-MM-yyyy', _model.currentDate, locale: 'en'));
    if ((_model.monthAttendanceApiCall?.succeeded ?? true)) {
      setState(() {
        _model.listOfLocalCategory.clear();
        _model.listOfLocalCategory.addAll(getStructList(
              getJsonField(
                (_model.monthAttendanceApiCall?.jsonBody ?? ''),
                r'''$.days''',
              ),
              DayModelStruct.fromMap,
            ) ??
            []);
      });
    }
    _model.isLoading = false;
  }
}
