import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResult8rq =
          await HrGroupGroup.dashboardApiCallCall.call(context: context);

      if ((_model.apiResult8rq?.succeeded ?? true)) {
        _model.dashBoardModel = DashboardModelStruct.maybeFromMap(getJsonField(
          (_model.apiResult8rq?.jsonBody ?? ''),
          r'''$''',
        ));

        if (_model.dashBoardModel?.status == 'OUT' ? true : false) {
          _model.isBunchedIn = false;
          setState(() {});
        } else {
          _model.isBunchedIn = true;
          setState(() {});
        }
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).colorffffff,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).colorffffff,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  FFLocalizations.of(context).getVariableText(
                    enText: 'Morning ,${FFAppState().UserModelState.name}',
                    arText: 'مرحبا ,${FFAppState().UserModelState.name}',
                  ),
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Inter',
                        color: FlutterFlowTheme.of(context).color000000,
                        fontSize: 22.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.network(
                  FFAppState().UserModelState.profilePhotoPath,
                  width: 24.0,
                  height: 24.0,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        0.0, 18.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: SizedBox(
                            width: 344.0,
                            height: 177.0,
                            child: Stack(
                              children: [
                                Container(
                                  width: 344.0,
                                  height: 170.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .colorD3D3D3,
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(20.0, 0.0, 20.0, 0.0),
                                        child: Text(
                                          (_model.dashBoardModel?.pin ??
                                                  _model
                                                      .dashBoardModel?.pout) ??
                                              '',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                fontSize: 24.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(28.0, 0.0, 28.0, 0.0),
                                        child: Container(
                                          width: 100.0,
                                          height: 100.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: Stack(
                                            children: [
                                              Visibility(
                                                visible:
                                                    _model.isBunchedIn == true,
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    currentUserLocationValue =
                                                        await getCurrentUserLocation(
                                                            defaultLocation:
                                                                const LatLng(
                                                                    0.0, 0.0));
                                                    _model.apiResultvogpun =
                                                        await HrGroupGroup
                                                            .createPunchApiApiCallCall
                                                            .call(
                                                      context: context,
                                                      lat:
                                                          currentUserLocationValue?.latitude
                                                              .toString(),
                                                      lng:
                                                          currentUserLocationValue?.longitude
                                                              .toString(),
                                                      shiftId: FFAppState()
                                                          .EmploymentInfoState
                                                          .shiftId
                                                          .toString(),
                                                    );
                                                    if ((_model.apiResultvogpun
                                                            ?.succeeded ??
                                                        true)) {
                                                      _model.apiResult7jp =
                                                          await HrGroupGroup
                                                              .dashboardApiCallCall
                                                              .call(
                                                                  context:
                                                                      context);

                                                      if ((_model.apiResult7jp
                                                              ?.succeeded ??
                                                          true)) {
                                                        _model.dashBoardModel =
                                                            DashboardModelStruct
                                                                .maybeFromMap(
                                                                    getJsonField(
                                                          (_model.apiResult7jp
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$''',
                                                        ));
                                                        setState(() {
                                                          _model.isBunchedIn =
                                                              _model.dashBoardModel
                                                                          ?.status ==
                                                                      'OUT'
                                                                  ? false
                                                                  : true;
                                                        });
                                                      } else {
                                                        error(
                                                            context,
                                                            _model.unfocusNode,
                                                            _model.apiResult7jp
                                                                ?.bodyText);
                                                      }
                                                    } else {
                                                      error(
                                                          context,
                                                          _model.unfocusNode,
                                                          _model.apiResultvogpun
                                                              ?.bodyText);
                                                    }
                                                    setState(() {});
                                                  },
                                                  child: Stack(
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0.0),
                                                        child: SvgPicture.asset(
                                                          'assets/images/Ellipse_1.svg',
                                                          fit: BoxFit.contain,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'srxba1pj' /* Tap to */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Inter',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .colorffffff,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getVariableText(
                                                                enText: 'In',
                                                                arText: "دخول",
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Inter',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .colorffffff,
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Visibility(
                                                visible:
                                                    _model.isBunchedIn == false,
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    currentUserLocationValue =
                                                        await getCurrentUserLocation(
                                                            defaultLocation:
                                                                const LatLng(
                                                                    0.0, 0.0));
                                                    _model.apiResultvog =
                                                        await HrGroupGroup
                                                            .createPunchApiApiCallCall
                                                            .call(
                                                      context: context,
                                                      lat:
                                                          currentUserLocationValue?.latitude
                                                              .toString(),
                                                      lng:
                                                          currentUserLocationValue?.longitude
                                                              .toString(),
                                                      shiftId: FFAppState()
                                                          .EmploymentInfoState
                                                          .shiftId
                                                          .toString(),
                                                    );

                                                    if ((_model.apiResultvog
                                                            ?.succeeded ??
                                                        true)) {
                                                      _model.apiResult8rq0 =
                                                          await HrGroupGroup
                                                              .dashboardApiCallCall
                                                              .call(
                                                        context: context,
                                                      );

                                                      if ((_model.apiResult8rq0
                                                              ?.succeeded ??
                                                          true)) {
                                                        _model.dashBoardModel =
                                                            DashboardModelStruct
                                                                .maybeFromMap(
                                                                    getJsonField(
                                                          (_model.apiResult8rq0
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$''',
                                                        ));
                                                        setState(() {
                                                          _model.isBunchedIn =
                                                              _model.dashBoardModel
                                                                          ?.status ==
                                                                      'OUT'
                                                                  ? false
                                                                  : true;
                                                        });
                                                      }
                                                    }
                                                  },
                                                  child: Stack(
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0.0),
                                                        child: SvgPicture.asset(
                                                          'assets/images/Ellipse_22.svg',
                                                          fit: BoxFit.contain,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'pqe8v9eq' /* Tap to */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Inter',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .colorffffff,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getVariableText(
                                                                enText: 'Out',
                                                                arText: "خروج",
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Inter',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .colorffffff,
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment:
                                      const AlignmentDirectional(0.0, 1.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .colorffffff,
                                    ),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'auz6u03z' /* 9 : 41 AM */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            color: FlutterFlowTheme.of(context)
                                                .color2B2A4E,
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        0.0, 34.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            child: checkIF()),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget checkIF() {
    if (FFAppState().UserModelState.userType == employee) {
      return employeeMethod();
    } else {
      return teamLead();
    }
  }

  Widget employeeMethod() {
    return GridView(
      padding: const EdgeInsets.fromLTRB(
        0,
        0,
        0,
        20.0,
      ),
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20.0,
        mainAxisSpacing: 20.0,
        childAspectRatio: 1.4,
      ),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: [
        applayLeave(),
        leaveRequsets(),
        applayVacation(),
        vacationRequest(),
        myAttenduce(),
        holidayList(),
      ],
    );
  }

  Widget teamLead() {
    return GridView(
      padding: const EdgeInsets.fromLTRB(
        0,
        0,
        0,
        20.0,
      ),
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20.0,
        mainAxisSpacing: 20.0,
        childAspectRatio: 1.4,
      ),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: [
        myTeam(),
        myTeamVacation(),
        myTeamLeave(),
        applayLeave(),
        leaveRequsets(),
        applayVacation(),
        vacationRequest(),
        myAttenduce(),
        holidayList(),
      ],
    );
  }

  /// employee
  Widget applayLeave() {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        context.pushNamed('ApplyLeavePage', queryParameters: {
          'leaveModel':
              serializeParam(_model.dashBoardModel?.toMap(), ParamType.JSON)
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).colorDEDEDE,
            width: 1.0,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(0.0),
              child: SvgPicture.asset(
                'assets/images/Layer_1.svg',
                width: 37.0,
                height: 37.0,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  '4or8y847' /* Apply Leave */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: FlutterFlowTheme.of(context).color67676B,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget leaveRequsets() {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        context.pushNamed('LeaveRequestPage');
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).colorDEDEDE,
            width: 1.0,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(0.0),
              child: SvgPicture.asset(
                'assets/images/Layer_1_(1).svg',
                width: 37.0,
                height: 37.0,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  '0oi3twtc' /* Leave Request */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: FlutterFlowTheme.of(context).color67676B,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget applayVacation() {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        //HolidayListPage
        context.pushNamed('ApplyVacationPage', queryParameters: {
          'leaveModel':
              serializeParam(_model.dashBoardModel?.toMap(), ParamType.JSON)
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).colorDEDEDE,
            width: 1.0,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(0.0),
              child: SvgPicture.asset(
                'assets/images/Layer_1_(2).svg',
                width: 37.0,
                height: 37.0,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'ol7i67li' /* Apply Vacation */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: FlutterFlowTheme.of(context).color67676B,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget vacationRequest() {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        context.pushNamed('VacationRequestPage');
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).colorDEDEDE,
            width: 1.0,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(0.0),
              child: SvgPicture.asset(
                'assets/images/Layer_1_(3).svg',
                width: 37.0,
                height: 37.0,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  '2phlxskw' /* Vacation Request */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: FlutterFlowTheme.of(context).color67676B,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget myAttenduce() {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        context.pushNamed('MyAttendancePage');
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).colorDEDEDE,
            width: 1.0,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(0.0),
              child: SvgPicture.asset(
                'assets/images/Layer_1_(4).svg',
                width: 37.0,
                height: 37.0,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  '5m50xncd' /* My Attendance */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: FlutterFlowTheme.of(context).color67676B,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget holidayList() {
    return InkWell(
      onTap: () {
        context.pushNamed('HolidayListPage');
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).colorDEDEDE,
            width: 1.0,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(0.0),
              child: SvgPicture.asset(
                'assets/images/Layer_1_(5).svg',
                width: 37.0,
                height: 37.0,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'kotydpsu' /* Holiday List */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: FlutterFlowTheme.of(context).color67676B,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // team lead
  Widget myTeam() {
    return InkWell(
      onTap: () {
        context.pushNamed('MyTeamListPageWidget');//MyTeamVacationPageWidget
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).colorDEDEDE,
            width: 1.0,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(0.0),
              child: SvgPicture.asset(
                'assets/images/Layer_1 (7).svg',
                width: 37.0,
                height: 37.0,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
              child: Text(
                FFLocalizations.of(context)
                    .getVariableText(enText: 'My Team', arText: 'فريقي'),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: FlutterFlowTheme.of(context).color67676B,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget myTeamVacation() {
    return InkWell(
      onTap: () {
        context.pushNamed('MyTeamVacationPageWidget');
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).colorDEDEDE,
            width: 1.0,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(0.0),
              child: SvgPicture.asset(
                'assets/images/Layer_1_(3).svg',
                width: 37.0,
                height: 37.0,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
              child: Text(
                FFLocalizations.of(context).getVariableText(
                    enText: 'My Team Vacation', arText: 'اجازات فريقي'),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: FlutterFlowTheme.of(context).color67676B,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget myTeamLeave() {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).colorDEDEDE,
            width: 1.0,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(0.0),
              child: SvgPicture.asset(
                'assets/images/Layer_1_(1).svg',
                width: 37.0,
                height: 37.0,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
              child: Text(
                FFLocalizations.of(context).getVariableText(
                    enText: 'My Team Leave', arText: 'مغادرات فريقي'),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: FlutterFlowTheme.of(context).color67676B,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
