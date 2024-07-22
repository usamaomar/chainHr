import 'package:hr_chain/auth/custom_auth/auth_util.dart';
import 'package:hr_chain/backend/schema/structs/vacation_model_struct.dart';

import '../backend/api_requests/api_calls.dart';
import '../backend/schema/util/schema_util.dart';
import '../component/title_tool_bar/title_tool_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/status_component/status_component_widget.dart';
import 'package:flutter/material.dart';
import 'vacation_request_page_model.dart';
export 'vacation_request_page_model.dart';

class VacationRequestPageWidget extends StatefulWidget {
  const VacationRequestPageWidget({super.key});

  @override
  State<VacationRequestPageWidget> createState() =>
      _VacationRequestPageWidgetState();
}

class _VacationRequestPageWidgetState extends State<VacationRequestPageWidget> {
  late VacationRequestPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VacationRequestPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.isLoading = true;
      });
      _model.leaveListApiCall = await HrGroupGroup.vacationListApiCall.call(
          context: context,
          token: currentAuthenticationToken,
          date: dateTimeFormat('dd-MM-yyyy', DateTime.now(), locale: 'en'));
      if ((_model.leaveListApiCall?.succeeded ?? true)) {
        _model.listOfLocalCategory = getStructList(
          getJsonField(
            (_model.leaveListApiCall?.jsonBody ?? ''),
            r'''$.data''',
          ),
          VacationModelStruct.fromMap,
        ) ??
            [];
        setState(() {});
        setState(() {
          _model.isLoading = false;
        });
      }
    });
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
            title: FFLocalizations.of(context).getText(
              'zqnvwswn' /* Vacation Request */,
            ),
            actionBack: () {
              Navigator.pop(context);
            },
            userImage: FFAppState().UserModelState.profilePhotoPath,
          ),
        ),
        body:   SafeArea(
          top: true,
          child: Stack(
            children: [
              Padding(
                  padding:
                  const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 24.0),
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
                              color: FlutterFlowTheme.of(context).secondaryBackground,
                              elevation: 4.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        23.0, 0.0, 23.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 12.0, 0.0, 5.0),
                                              child: wrapWithModel(
                                                model: _model.statusComponentModel,
                                                updateCallback: () => setState(() {}),
                                                child:   StatusComponentWidget(
                                                  status: positionItem.status.toLowerCase() == 'pending' ? 0 : (positionItem.status.toLowerCase() == 'approved' ? 1 : 2),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 16.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getVariableText(
                                                  enText:
                                                  'From ${positionItem.startDate.toFormattedDate('dd MMM yyyy')} To ${positionItem.endDate.toFormattedDate('dd MMM yyyy')}',
                                                  arText:
                                                  'من ${positionItem.startDate.toFormattedDate('dd MMM yyyy')} الى ${positionItem.endDate.toFormattedDate('dd MMM yyyy')}',
                                                ),
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
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    height: 1.0,
                                    thickness: 1.0,
                                    color: FlutterFlowTheme.of(context).colorDDDDDD,
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            23.0, 10.0, 23.0, 10.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '4wi4agg4' /* Sick Leave */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                            fontFamily: 'Inter',
                                            color: FlutterFlowTheme.of(context)
                                                .color656565,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
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
                      );
                    },
                  )),
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
