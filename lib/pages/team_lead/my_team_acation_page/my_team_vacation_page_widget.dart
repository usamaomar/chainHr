import 'package:collection/wrappers.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hr_chain/backend/backend.dart';
import 'package:hr_chain/backend/schema/structs/status_model.dart';
import '../../../auth/custom_auth/auth_util.dart';
import '../../../backend/api_requests/api_calls.dart';
import '../../../component/title_tool_bar/title_tool_bar_widget.dart';
import '../../../flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'my_team_vacation_page_model.dart';

class MyTeamVacationPageWidget extends StatefulWidget {
  const MyTeamVacationPageWidget({super.key});

  @override
  State<MyTeamVacationPageWidget> createState() =>
      _MyTeamVacationPageWidgetState();
}

class _MyTeamVacationPageWidgetState extends State<MyTeamVacationPageWidget> {
  late MyTeamVacationPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyTeamVacationPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.isLoading = true;
      });
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
            title: FFLocalizations.of(context).getVariableText(
                enText: 'My Team Vacation', arText: 'إجازة فريقي'),
            actionBack: () {
              Navigator.pop(context);
            },
            userImage: FFAppState().UserModelState.profilePhotoPath,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Padding(
              padding:
                  const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Flexible(
                        child: Padding(
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
                                          context
                                              .pushNamed(
                                                  'SelectMyTeamListPageWidget')
                                              .then((value) {
                                            if (value != null) {
                                              final list = value as Map;
                                              List<DataStruct?> main = [];
                                              list.entries.map((toElement) {
                                                main.add(toElement.value);
                                              }).toList();
                                              setState(() {
                                                _model.selectedListDataStruct
                                                    ?.clear();
                                                _model
                                                    .selectedListVacationsStruct
                                                    ?.clear();
                                                _model.selectedEmpolyeeModel =
                                                    null;
                                                _model.selectedListDataStruct =
                                                    main.cast<DataStruct>();
                                                _model.selectedListDataStruct
                                                    ?.map((toElement) {
                                                  toElement.vacations
                                                      .map((toEle) {
                                                    _model
                                                        .selectedListVacationsStruct
                                                        ?.add(toEle);
                                                  }).toList();
                                                }).toList();
                                                _model.selectedEmpolyeeModel =
                                                    main[0]?.employee;
                                              });
                                            }
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .colorD3D3D3,
                                              width: 1.0,
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Flexible(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          20.0, 0.0, 20.0, 0.0),
                                                  child: Text(
                                                    _model.selectedEmpolyeeModel ==
                                                            null
                                                        ? FFLocalizations.of(
                                                                context)
                                                            .getVariableText(
                                                                enText:
                                                                    'Select',
                                                                arText: 'اختر')
                                                        : _model.selectedEmpolyeeModel
                                                                ?.name ??
                                                            '',
                                                    maxLines: 1,
                                                    softWrap: true,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: _model
                                                                      .selectedEmpolyeeModel ==
                                                                  null
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
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
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                child: Icon(
                                                  Icons.arrow_forward_ios,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .color929090,
                                                  size: 16.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: const AlignmentDirectional(
                                            -0.9, -1.4),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .colorffffff,
                                          ),
                                          child: Text(
                                            FFLocalizations.of(context)
                                                .getVariableText(
                                                    enText: 'Employee Name',
                                                    arText: 'اسم الموظف'),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                      Visibility(
                        visible: _model.selectedEmpolyeeModel != null,
                        child: Flexible(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 25.0, 0.0, 0.0),
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
                                            context
                                                .pushNamed(
                                                    'SelectStatusListPageWidget')
                                                .then((value) {
                                              if (value != null) {
                                                StatusModel? dataStruct =
                                                    StatusModel.maybeFromMap(
                                                        value);
                                                setState(() {
                                                  _model
                                                      .selectedListVacationsStruct?.clear();
                                                  _model.selectedListDataStruct
                                                      ?.map((toElement) {
                                                    toElement.vacations
                                                        .map((toEle) {
                                                      _model
                                                          .selectedListVacationsStruct
                                                          ?.add(toEle);
                                                    }).toList();
                                                  }).toList();
                                                  _model.statusModel =
                                                      dataStruct;
                                                  _model
                                                      .selectedListVacationsStruct = filterVacationsByStatus( _model
                                                      .selectedListVacationsStruct,_model.statusModel?.status.toLowerCase() ?? '');
                                                });
                                              }
                                            });
                                          },
                                          child: Container(
                                            width: 344.0,
                                            height: 50.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .colorD3D3D3,
                                                width: 1.0,
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          20.0, 0.0, 20.0, 0.0),
                                                  child: Text(
                                                    _model.statusModel == null
                                                        ? FFLocalizations.of(
                                                                context)
                                                            .getVariableText(
                                                                enText:
                                                                    'Select',
                                                                arText: 'اختر')
                                                        : _model.statusModel
                                                                ?.name ??
                                                            '',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: _model
                                                                      .statusModel ==
                                                                  null
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
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
                                                  padding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          16.0, 0.0, 16.0, 0.0),
                                                  child: Icon(
                                                    Icons.arrow_forward_ios,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .color929090,
                                                    size: 16.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: const AlignmentDirectional(
                                              -0.9, -1.4),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .colorffffff,
                                            ),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getVariableText(
                                                      enText: 'Status',
                                                      arText: 'الحالة'),
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Visibility(
                    visible: _model.selectedListDataStruct != null,
                    child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 150.0, 0.0, 0.0),
                        child: ListView.builder(
                          shrinkWrap: false,
                          itemCount: _model.selectedListVacationsStruct?.length,
                          itemBuilder: (context, index) {
                            final positionItem =
                                _model.selectedListVacationsStruct?[index];
                            return Row(
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
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 16, 0, 16),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                24, 0, 24, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  _model.selectedEmpolyeeModel
                                                          ?.name ??
                                                      '',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .color000000,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Divider(
                                            thickness: 1.0,
                                            color: FlutterFlowTheme.of(context)
                                                .colorDDDDDD,
                                          ),
                                          statusButton(positionItem)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        )),
                  ),
                ],
              )),
        ),
      ),
    );
  }

  Widget statusButton(VacationsStruct? dataStruct) {
    if (dataStruct?.status == 'pending') {
      return approvedRejectButtons(dataStruct);
    } else {
      return approved(dataStruct);
    }
  }
  List<VacationsStruct>? filterVacationsByStatus(
      List<VacationsStruct>? selectedListVacationsStruct, String status) {
    // Check if the list is not null
    if (selectedListVacationsStruct != null) {
      // Filter the list based on the status
      return selectedListVacationsStruct
          .where((vacation) => vacation.status == status)
          .toList();
    }
    // Return an empty list or null if the original list is null
    return [];
  }

  Widget approvedRejectButtons(VacationsStruct? dataStruct) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 10, 24, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                FFLocalizations.of(context).getVariableText(
                    enText:
                        'From ${dataStruct?.startDate.toFormattedDate('dd MMM yyyy')} To ${dataStruct?.endDate.toFormattedDate('dd MMM yyyy')}',
                    arText:
                        ' من${dataStruct?.startDate.toFormattedDate('dd MMM yyyy')} الى ${dataStruct?.endDate.toFormattedDate('dd MMM yyyy')}'),
                maxLines: 1,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: FlutterFlowTheme.of(context).color908888,
                      letterSpacing: 0.0,
                    ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                child: Text(
                  dataStruct?.vacationType.name.toString().toUpperCase() ??
                      '' ??
                      '',
                  maxLines: 1,
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        fontFamily: 'Inter',
                        color: FlutterFlowTheme.of(context).color656565,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(14.0, 0.0, 14.0, 10.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: FFButtonWidget(
                  onPressed: () async {
                    setState(() {
                      dataStruct?.status = 'initial_accepted';
                    });
                    approvedApi(dataStruct);
                  },
                  text: FFLocalizations.of(context).getVariableText(
                    enText: 'Approved',
                    arText: "مقبول",
                  ),
                  options: FFButtonOptions(
                      height: 40.0,
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          24.0, 0.0, 24.0, 0.0),
                      iconPadding: const EdgeInsetsDirectional.fromSTEB(
                          0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).color25AA22,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
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
                      borderRadius: BorderRadius.circular(50.0),
                      disabledColor: FlutterFlowTheme.of(context).colorC2C1C1),
                ),
              ),
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
              ),
              Expanded(
                child: FFButtonWidget(
                  onPressed: () async {
                    setState(() {
                      dataStruct?.status = 'Rejected';
                    });
                    rejectApi(dataStruct);
                  },
                  text: FFLocalizations.of(context).getVariableText(
                    enText: 'Reject',
                    arText: "مرفوض",
                  ),
                  options: FFButtonOptions(
                      height: 40.0,
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          24.0, 0.0, 24.0, 0.0),
                      iconPadding: const EdgeInsetsDirectional.fromSTEB(
                          0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).color828282,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
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
                      borderRadius: BorderRadius.circular(50.0),
                      disabledColor: FlutterFlowTheme.of(context).colorC2C1C1),
                ),
              ),
            ],
          ),
        ),
        Divider(
          thickness: 1.0,
          color: FlutterFlowTheme.of(context).colorDDDDDD,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                dataStruct?.status.toString().toUpperCase() ?? '',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Inter',
                      color: FlutterFlowTheme.of(context).colorF69B11,
                      letterSpacing: 0.0,
                    ),
              ),
              Visibility(
                visible: (dataStruct?.attachmentFull.isNotEmpty ?? false),
                child: InkWell(
                  onTap: () {},
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: SvgPicture.asset(
                      'assets/images/attatch.svg',
                      width: 16.0,
                      height: 16.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget approved(VacationsStruct? dataStruct) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 10, 24, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                FFLocalizations.of(context).getVariableText(
                    enText:
                        'From ${dataStruct?.startDate.toFormattedDate('dd MMM yyyy')} To ${dataStruct?.endDate.toFormattedDate('dd MMM yyyy')}',
                    arText:
                        ' من${dataStruct?.startDate.toFormattedDate('dd MMM yyyy')} الى ${dataStruct?.endDate.toFormattedDate('dd MMM yyyy')}'),
                maxLines: 1,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: FlutterFlowTheme.of(context).color908888,
                      letterSpacing: 0.0,
                    ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Text(
                  dataStruct?.vacationType.name.toString().toUpperCase() ??
                      '' ??
                      '',
                  maxLines: 1,
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        fontFamily: 'Inter',
                        color: FlutterFlowTheme.of(context).color656565,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(22, 5, 22, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                dataStruct?.status.toString().toUpperCase() ?? '',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Inter',
                      color: FlutterFlowTheme.of(context).color25AA22,
                      letterSpacing: 0.0,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  approvedApi(VacationsStruct? dataStruct) async {
    _model.updateDetailsStateApiCall =
        await HrGroupGroup.updateDetailsStateApiCall.call(
            context: context,
            token: currentAuthenticationToken,
            id: dataStruct?.bulkId.toString(),
            status: 'accepted',
            action: 'acceptAll');
    if ((_model.updateDetailsStateApiCall?.succeeded ?? true)) {
      print('');
    } else {
      print('');
      error(context, _model.unfocusNode,
          _model.updateDetailsStateApiCall?.bodyText);
    }
  }

  rejectApi(VacationsStruct? dataStruct) async {
    _model.updateDetailsStateApiCall =
        await HrGroupGroup.updateDetailsStateApiCall.call(
            context: context,
            token: currentAuthenticationToken,
            id: dataStruct?.bulkId.toString(),
            status: 'rejected',
            action: 'rejectAll');
    if ((_model.updateDetailsStateApiCall?.succeeded ?? true)) {
      print('');
    } else {
      print('');
      error(context, _model.unfocusNode,
          _model.updateDetailsStateApiCall?.bodyText);
    }
  }
}
