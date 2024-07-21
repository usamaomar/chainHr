import 'package:hr_chain/component/title_tool_bar/title_tool_bar_widget.dart';

import '../../backend/api_requests/api_calls.dart';
import '../../backend/schema/structs/dashboard_model_struct.dart';
import '../../backend/schema/structs/leave_type_struct.dart';
import '../../component/calendar_component/calendar_component_widget.dart';
import '../../component/time_component/time_component_widget.dart';
import '../free_dialog/free_dialog_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'apply_leave_page_model.dart';
export 'apply_leave_page_model.dart';

class ApplyLeavePageWidget extends StatefulWidget {
  final DashboardModelStruct? dashboardModelStruct;

  const ApplyLeavePageWidget({super.key, this.dashboardModelStruct});

  @override
  State<ApplyLeavePageWidget> createState() => _ApplyLeavePageWidgetState();
}

class _ApplyLeavePageWidgetState extends State<ApplyLeavePageWidget> {
  late ApplyLeavePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ApplyLeavePageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
          _model.localDashboardModelStruct = widget.dashboardModelStruct;
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
              'jfzo514y' /* Apply Leave */,
            ),
            actionBack: () {
              Navigator.pop(context);
            },
            userImage: FFAppState().UserModelState.profilePhotoPath,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Flexible(
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 4.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 20.0, 0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: SvgPicture.asset(
                                    'assets/images/Layer_1_(5).svg',
                                    width: 20.0,
                                    height: 20.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '9eyu5hpd' /* Personal vacation Balance */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            color: FlutterFlowTheme.of(context)
                                                .color2B2A4E,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 16.0),
                                    child: Text(
                                      '${minutesToDays(_model.localDashboardModelStruct?.balanceVacation.personal ?? 0).toStringAsFixed(2)} ${FFLocalizations.of(context).getVariableText(
                                        enText: 'Days',
                                        arText: "يوم",
                                      )} ${minutesToHours(_model.localDashboardModelStruct?.balanceVacation.personal ?? 0).toStringAsFixed(2)} ${FFLocalizations.of(context).getVariableText(
                                        enText: 'Hours',
                                        arText: "ساعه",
                                      )} ${minutesToMinutes(_model.localDashboardModelStruct?.balanceVacation.personal ?? 0).toStringAsFixed(2)} ${FFLocalizations.of(context).getVariableText(
                                        enText: 'Minutes',
                                        arText: "دقيقة",
                                      )} ',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            fontSize: 12,
                                            color: FlutterFlowTheme.of(context)
                                                .color908888,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        0.0, 20.0, 0.0, 0.0),
                    child: Row(
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
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0.0),
                                    child: SvgPicture.asset(
                                      'assets/images/Layer_1_(6).svg',
                                      width: 20.0,
                                      height: 20.0,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 16.0, 0.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          '6hqe7xp1' /* Sick vacation Balance */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .color2B2A4E,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 5.0, 0.0, 16.0),
                                      child: Text(
                                        '${minutesToDays(_model.localDashboardModelStruct?.balanceVacation.sick ?? 0).toStringAsFixed(2)} ${FFLocalizations.of(context).getVariableText(
                                          enText: 'Days',
                                          arText: "يوم",
                                        )} ${minutesToHours(_model.localDashboardModelStruct?.balanceVacation.sick ?? 0).toStringAsFixed(2)} ${FFLocalizations.of(context).getVariableText(
                                          enText: 'Hours',
                                          arText: "ساعه",
                                        )} ${minutesToMinutes(_model.localDashboardModelStruct?.balanceVacation.sick ?? 0).toStringAsFixed(2)} ${FFLocalizations.of(context).getVariableText(
                                          enText: 'Minutes',
                                          arText: "دقيقة",
                                        )} ',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 12,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .color908888,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          0.0, 43.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: SizedBox(
                              width: 344.0,
                              height: 55.0,
                              child: Stack(
                                children: [
                                  Container(
                                    width: 344.0,
                                    height: 50.0,
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
                                    child: InkWell(
                                      onTap: () {
                                        context
                                            .pushNamed(
                                          'SelectPageWidget',
                                        )
                                            .then((onValue) {
                                          if (onValue != null) {
                                            setState(() {
                                              _model.leaveTypeStruct =
                                                  LeaveTypeStruct.maybeFromMap(
                                                      onValue);
                                            });
                                          }
                                        });
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(20.0, 0.0, 20.0, 0.0),
                                            child: Text(
                                              _model.leaveTypeStruct?.name ==
                                                      null
                                                  ? FFLocalizations.of(context)
                                                      .getText(
                                                      'xf0hdci7' /* Sick Leave */,
                                                    )
                                                  : (_model.leaveTypeStruct
                                                          ?.name ??
                                                      ''),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color: _model
                                                                    .leaveTypeStruct ==
                                                                null
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .colorA6A6A6
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .color000000,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(16.0, 0.0, 16.0, 0.0),
                                            child: Icon(
                                              Icons.arrow_forward_ios,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .color929090,
                                              size: 16.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment:
                                        const AlignmentDirectional(-0.9, -1.4),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .colorffffff,
                                      ),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          '0uajt45r' /* Leave Type */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .color828282,
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
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
                          0.0, 43.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: SizedBox(
                              width: 344.0,
                              height: 55.0,
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: () async {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(10.0)),
                                        ),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .colorffffff,
                                        isDismissible: true,
                                        enableDrag: false,
                                        useSafeArea: true,
                                        context: context,
                                        builder: (context) {
                                          return GestureDetector(
                                            onTap: () => _model
                                                    .unfocusNode.canRequestFocus
                                                ? FocusScope.of(context)
                                                    .requestFocus(
                                                        _model.unfocusNode)
                                                : FocusScope.of(context)
                                                    .unfocus(),
                                            child: Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child: CalendarComponentWidget(
                                                onDateTimeChanged: (date) {
                                                  _model.selectedDate = date;
                                                },
                                                selectedDate:
                                                    _model.selectedDate,
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));
                                    },
                                    child: Container(
                                      width: 344.0,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
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
                                              _model.selectedDate == null
                                                  ? '--/--/----'
                                                  : dateTimeFormat('dd/MM/yyyy',
                                                      _model.selectedDate,
                                                      locale: 'en'),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    color: _model
                                                                .selectedDate ==
                                                            null
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .colorA6A6A6
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .color000000,
                                                    fontSize: 14.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(16.0, 0.0, 16.0, 0.0),
                                            child: Icon(
                                              Icons.calendar_month,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .color929090,
                                              size: 24.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment:
                                        const AlignmentDirectional(-0.9, -1.4),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .colorffffff,
                                      ),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'div1nif4' /* Date */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .color828282,
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
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
                          0.0, 43.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 5.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 7.0, 0.0),
                                      child: SizedBox(
                                        height: 55.0,
                                        child: Stack(
                                          children: [
                                            InkWell(
                                              onTap: () async {
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  shape:
                                                      const RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.vertical(
                                                            top:
                                                                Radius.circular(
                                                                    10.0)),
                                                  ),
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .colorffffff,
                                                  isDismissible: true,
                                                  enableDrag: false,
                                                  useSafeArea: true,
                                                  context: context,
                                                  builder: (context) {
                                                    return GestureDetector(
                                                      onTap: () => _model
                                                              .unfocusNode
                                                              .canRequestFocus
                                                          ? FocusScope.of(
                                                                  context)
                                                              .requestFocus(_model
                                                                  .unfocusNode)
                                                          : FocusScope.of(
                                                                  context)
                                                              .unfocus(),
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            TimeComponentWidget(
                                                          onDateTimeChanged:
                                                              (date) {
                                                            _model.fromTime =
                                                                date;
                                                          },
                                                          selectedDate:
                                                              _model.toTime,
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));
                                              },
                                              child: Container(
                                                height: 50.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .colorD3D3D3,
                                                    width: 1.0,
                                                  ),
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(20.0,
                                                              0.0, 20.0, 0.0),
                                                      child: Text(
                                                        _model.fromTime == null
                                                            ? '00:00:00'
                                                            : dateTimeFormat(
                                                                'HH:mm',
                                                                _model.fromTime,
                                                                locale: FFAppState()
                                                                    .getSelectedLanguge),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Inter',
                                                              color: _model
                                                                          .fromTime ==
                                                                      null
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .colorA6A6A6
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .color000000,
                                                              fontSize: 14.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                            ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(16.0,
                                                              0.0, 16.0, 0.0),
                                                      child: Icon(
                                                        Icons.access_time,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .color929090,
                                                        size: 24.0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment:
                                                  const AlignmentDirectional(
                                                      -0.8, -1.4),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .colorffffff,
                                                ),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'sds6hrvu' /* From */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .color828282,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              7.0, 0.0, 0.0, 0.0),
                                      child: SizedBox(
                                        height: 55.0,
                                        child: Stack(
                                          children: [
                                            InkWell(
                                              onTap: () async {
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  shape:
                                                      const RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.vertical(
                                                            top:
                                                                Radius.circular(
                                                                    10.0)),
                                                  ),
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .colorffffff,
                                                  isDismissible: true,
                                                  enableDrag: false,
                                                  useSafeArea: true,
                                                  context: context,
                                                  builder: (context) {
                                                    return GestureDetector(
                                                      onTap: () => _model
                                                              .unfocusNode
                                                              .canRequestFocus
                                                          ? FocusScope.of(
                                                                  context)
                                                              .requestFocus(_model
                                                                  .unfocusNode)
                                                          : FocusScope.of(
                                                                  context)
                                                              .unfocus(),
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            TimeComponentWidget(
                                                          onDateTimeChanged:
                                                              (date) {
                                                            _model.toTime =
                                                                date;
                                                          },
                                                          selectedDate:
                                                              _model.toTime,
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));
                                              },
                                              child: Container(
                                                height: 50.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .colorD3D3D3,
                                                    width: 1.0,
                                                  ),
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(20.0,
                                                              0.0, 20.0, 0.0),
                                                      child: Text(
                                                        _model.toTime == null
                                                            ? '00:00:00'
                                                            : dateTimeFormat(
                                                                'HH:mm',
                                                                _model.toTime,
                                                                locale: FFAppState()
                                                                    .getSelectedLanguge),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Inter',
                                                              color: _model
                                                                          .toTime ==
                                                                      null
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .colorA6A6A6
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .color000000,
                                                              fontSize: 14.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                            ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(16.0,
                                                              0.0, 16.0, 0.0),
                                                      child: Icon(
                                                        Icons.access_time,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .color929090,
                                                        size: 24.0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment:
                                                  const AlignmentDirectional(
                                                      -0.8, -1.4),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .colorffffff,
                                                ),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'q7n1boaf' /* To */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .color828282,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
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
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        0.0, 40.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: FFButtonWidget(
                            onPressed: isValid() == true
                                ? () async {
                                    _model.applyLeaveApiCall =
                                        await HrGroupGroup.createLeaveApiCall
                                            .call(
                                      startDate: dateTimeFormat(
                                          'yyyy-MM-dd HH:mm',
                                          combineDateAndTime(
                                              _model.selectedDate,
                                              _model.fromTime),
                                          locale: 'en'),
                                      endDate: dateTimeFormat(
                                          'yyyy-MM-dd HH:mm',
                                          combineDateAndTime(
                                              _model.selectedDate,
                                              _model.toTime),
                                          locale: 'en'),
                                      typeId: _model.leaveTypeStruct?.id,
                                      platform: ''.platformSpecific,
                                      context: context,
                                    );
                                    if ((_model.applyLeaveApiCall?.succeeded ??
                                        true)) {
                                      await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          enableDrag: false,
                                          isDismissible: false,
                                          context: context,
                                          builder: (context) {
                                            return GestureDetector(
                                                onTap: () =>
                                                    FocusScope.of(context)
                                                        .unfocus(),
                                                child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child: FreeDialogWidget(
                                                        iconImage:
                                                            'assets/images/Layer_1_(2).svg',
                                                        title: FFLocalizations
                                                                .of(context)
                                                            .getVariableText(
                                                          enText: 'Success',
                                                          arText: "بنجاح",
                                                        ),
                                                        data: FFLocalizations
                                                                .of(context)
                                                            .getVariableText(
                                                          enText:
                                                              'Leave is applied successfully',
                                                          arText:
                                                              "تم تطبيق الإجازة بنجاح",
                                                        ),
                                                        buttonText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getVariableText(
                                                          enText: 'Ok',
                                                          arText: "حسنا",
                                                        ))));
                                          }).then((onValue) {
                                        if (onValue != null) {
                                          context.pop();
                                        }
                                      });
                                      setState(() {});
                                    } else {
                                      error(context, _model.unfocusNode,
                                          _model.applyLeaveApiCall?.bodyText);
                                    }
                                  }
                                : null,
                            text: FFLocalizations.of(context).getVariableText(
                              enText: 'Apply',
                              arText: "تنفيذ",
                            ),
                            options: FFButtonOptions(
                                height: 40.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding:
                                    const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).color4E88F4,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Inter',
                                      color: Colors.white,
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                elevation: 3.0,
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                                disabledColor:
                                    FlutterFlowTheme.of(context).colorC2C1C1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ].addToEnd(const SizedBox(height: 20.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool isValid() {
    if (_model.leaveTypeStruct == null) {
      return false;
    } else if (_model.selectedDate == null) {
      return false;
    } else if (_model.fromTime == null) {
      return false;
    } else if (_model.toTime == null) {
      return false;
    } else {
      return true;
    }
  }
}
