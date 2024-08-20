import 'package:flutter_svg/svg.dart';
import 'package:hr_chain/auth/custom_auth/auth_util.dart';
import '../../../backend/api_requests/api_calls.dart';
import '../../../backend/schema/structs/employee_model_struct.dart';
import '../../../backend/schema/util/schema_util.dart';
import '../../../component/title_tool_bar/title_tool_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

import 'my_team_list_page_model.dart';

class MyTeamListPageWidget extends StatefulWidget {
  const MyTeamListPageWidget({super.key});

  @override
  State<MyTeamListPageWidget> createState() => _MyTeamListPageWidgetState();
}

class _MyTeamListPageWidgetState extends State<MyTeamListPageWidget> {
  late MyTeamListPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyTeamListPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.isLoading = true;
      });
      setState(() {
        _model.currentDate = DateTime.now();
      });
      callApi();
    });
  }

  callApi() async {
    setState(() {
      _model.isLoading = true;
    });
    _model.leaveListApiCall = await HrGroupGroup.myTeamMembersApiCall
        .call(context: context, token: currentAuthenticationToken, page: 1);
    if ((_model.leaveListApiCall?.succeeded ?? true)) {
      _model.listOfLocalCategory = getStructList(
            getJsonField(
              (_model.leaveListApiCall?.jsonBody ?? ''),
              r'''$.data''',
            ),
            EmployeeModelStruct.fromMap,
          ) ??
          [];
      setState(() {
        _model.isLoading = false;
      });
    }
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

//
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
                      16.0, 0.0, 16.0, 24.0),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: _model.listOfLocalCategory.length,
                    itemBuilder: (context, index) {
                      final positionItem = _model.listOfLocalCategory[index];
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
                                        positionItem.personalPicFullPath ?? '',
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
                                          margin : const EdgeInsets.fromLTRB(0, 0, 0, 10),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              2,
                                          child: Text(
                                            positionItem.name,
                                            maxLines: 1,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .color000000,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                        Text(
                                          positionItem.designation.name,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .color908888,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ],
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(0.0),
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
