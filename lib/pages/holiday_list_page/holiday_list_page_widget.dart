import 'package:flutter_svg/svg.dart';
import 'package:hr_chain/backend/backend.dart';

import '../../backend/api_requests/api_calls.dart';
import '../../backend/schema/structs/leave_model_struct.dart';
import '../../backend/schema/util/schema_util.dart';
import '../../component/calendar_component/calendar_component_widget.dart';
import '../../component/title_tool_bar/title_tool_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/status_component/status_component_widget.dart';
import 'package:flutter/material.dart';
import 'holiday_list_page_model.dart';
export 'holiday_list_page_model.dart';

class HolidayListPageWidget extends StatefulWidget {
  const HolidayListPageWidget({super.key});

  @override
  State<HolidayListPageWidget> createState() => _HolidayListPageWidgetState();
}

class _HolidayListPageWidgetState extends State<HolidayListPageWidget> {
  late HolidayListPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HolidayListPageModel());
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

  callApi() async{
    setState(() {
      _model.isLoading = true;
    });
    _model.leaveListApiCall = await HrGroupGroup.upcomingHolidayApiCall.call(
        context: context,
    );
    if ((_model.leaveListApiCall?.succeeded ?? true)) {
      _model.listOfLocalCategory = getStructList(
        getJsonField(
          (_model.leaveListApiCall?.jsonBody ?? ''),
          r'''$''',
        ),
        LeaveModelStruct.fromMap,
      ) ??
          [];
      setState(() {
        _model.isLoading = false;
      });
    }else {
      setState(() {
        _model.isLoading = false;
      });
      error(context, _model.unfocusNode,
          _model.leaveListApiCall?.bodyText);
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
            title: FFLocalizations.of(context).getText(
              'hfvag6ccdcz' /* Holiday List */,
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
                  padding:
                  const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
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
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Flexible(
                                        child: Card(
                                          clipBehavior: Clip.antiAliasWithSaveLayer,
                                          color:
                                          FlutterFlowTheme.of(context).secondaryBackground,
                                          elevation: 0.0,
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
                                                      positionItem.startDate.toFormattedDate('dd MMM yyyy'),
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
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  )),
              Visibility(
                visible: _model.listOfLocalCategory.isEmpty == true && _model.isLoading == false,
                child: Center(
                  child: Text(
                    FFLocalizations.of(context)
                        .getVariableText(
                      enText:
                      'No data is found !',
                      arText:
                      'لم يتم العثور على اي بيانات !',
                    ),
                    style:
                    FlutterFlowTheme.of(context)
                        .bodyMedium
                        .override(
                      fontFamily: 'Inter',
                      color:
                      FlutterFlowTheme.of(
                          context)
                          .color908888,
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
