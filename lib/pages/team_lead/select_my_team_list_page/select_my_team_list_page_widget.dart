import 'package:flutter_svg/svg.dart';
import 'package:hr_chain/auth/custom_auth/auth_util.dart';
import '../../../backend/api_requests/api_calls.dart';
import '../../../backend/schema/structs/data_struct.dart';
import '../../../backend/schema/structs/employee_model_struct.dart';
import '../../../backend/schema/util/schema_util.dart';
import '../../../component/calendar_component/calendar_component_widget.dart';
import '../../../component/title_tool_bar/title_tool_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

import 'select_my_team_list_page_model.dart';

class SelectMyTeamListPageWidget extends StatefulWidget {
  const SelectMyTeamListPageWidget({super.key});

  @override
  State<SelectMyTeamListPageWidget> createState() =>
      _SelectMyTeamListPageWidgetState();
}

class _SelectMyTeamListPageWidgetState
    extends State<SelectMyTeamListPageWidget> {
  late SelectMyTeamListPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectMyTeamListPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.isLoading = true;
      });
      setState(() {
        _model.selectedDate = DateTime.now();
      });
      callApi();
    });
  }

  callApi() async {
    setState(() {
      _model.isLoading = true;
    });
    _model.leaveListApiCall = await HrGroupGroup.myTeamMembersVacationBulkApiCall
        .call(context: context, token: currentAuthenticationToken, date: dateTimeFormat('dd-MM-yyyy', _model.selectedDate, locale: 'en'));
    if ((_model.leaveListApiCall?.succeeded ?? true)) {
      _model.listOfLocalCategory = getStructList(
            getJsonField(
              (_model.leaveListApiCall?.jsonBody ?? ''),
              r'''$.data''',
            ),
           DataStruct.fromMap,
          ) ??
          [];
      setState(() {
        _model.isLoading = false;
        _model.fixd.addAll(_model.listOfLocalCategory);
        List<DataStruct> uniqueItems = [];
        Set<int> seenIds = {};
        for (var item in _model.listOfLocalCategory) {
          if (!seenIds.contains(item.employeeId)) {
            uniqueItems.add(item);
            seenIds.add(item.employeeId);
          }
        }
        _model.listOfLocalCategory = uniqueItems;
      });
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
            title: FFLocalizations.of(context).getVariableText(
              enText: 'My Team List',
              arText: 'قائمة الموظفين',
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
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(
                    0.0, 15.0, 0.0, 0.0),
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
                                            setState(() {
                                              _model.selectedDate = date;
                                            });
                                          },
                                          selectedDate:
                                          _model.selectedDate,
                                        ),
                                      ),
                                    );
                                  },
                                ).then((value) {
                                  callApi();
                                });
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
                                  FFLocalizations.of(context).getVariableText(
                                    enText: 'Date',
                                    arText: 'التاربخ',
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
              Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(
                      16.0, 65.0, 16.0, 24.0),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: _model.listOfLocalCategory.length,
                    itemBuilder: (context, index) {
                      final positionItem = _model.listOfLocalCategory[index];
                      return Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            child: InkWell(
                              onTap: () {
                               List<DataStruct> list = _model.fixd.where((test){
                                  return test.employeeId == positionItem.employeeId;
                                }).toList();
                                context.pop(list.asMap());
                              },
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                elevation: 4.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(16, 16, 16, 16),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(100.0),
                                        child: Image.network(
                                          positionItem.employee.personalPicFullPath ??
                                              '',
                                          width: 61.0,
                                          height: 61.0,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.fromLTRB(
                                                0, 0, 0, 10),
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                2,
                                            child: Text(
                                              positionItem.employee.name,
                                              maxLines: 1,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .color000000,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                          Text(
                                            positionItem.employee.name,
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
                                        ],
                                      ),
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: SvgPicture.asset(
                                          'assets/images/person2.svg',
                                          width: 16.0,
                                          height: 16.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  )),
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
}
