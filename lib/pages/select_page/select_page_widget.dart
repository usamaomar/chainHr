import 'dart:io';

import 'package:flutter_svg/svg.dart';
import 'package:hr_chain/backend/schema/structs/leave_type_struct.dart';
import 'package:hr_chain/pages/select_page/select_page_model.dart';

import '../../backend/api_requests/api_calls.dart';
import '../../backend/schema/structs/dashboard_model_struct.dart';
import '../../backend/schema/util/schema_util.dart';
import '../../component/title_tool_bar/title_tool_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SelectPageWidget extends StatefulWidget {
  const SelectPageWidget({super.key});

  @override
  State<SelectPageWidget> createState() => _SelectPageWidgetState();
}

class _SelectPageWidgetState extends State<SelectPageWidget> {
  late SelectPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectPageModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      _model.leaveTypeApiCall = await HrGroupGroup.leaveTypeApiCall.call(
        context: context,
      );
      if ((_model.leaveTypeApiCall?.succeeded ?? true)) {
        _model.listOfLocalCategory = getStructList(
              getJsonField(
                (_model.leaveTypeApiCall?.jsonBody ?? ''),
                r'''$''',
              ),
              LeaveTypeStruct.fromMap,
            ) ??
            [];
        setState(() {});
      }
    });
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
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: TitleToolBarWidget(
            title: FFLocalizations.of(context).getVariableText(
              enText: 'Select Leave Type',
              arText: "قم بالاختيار",
            ),
            actionBack: () {
              Navigator.pop(context);
            },
            userImage: FFAppState().UserModelState.profilePhotoPath,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Expanded(
            child: Stack(
              children: [
                Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        0.0, 24.0, 0.0, 0.0),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: _model.listOfLocalCategory.length,
                      itemBuilder: (context, index) {
                        final positionItem = _model.listOfLocalCategory[index];
                        return InkWell(
                          onTap: () async {
                            setState(() {
                              for (var action in _model.listOfLocalCategory) {
                                action.isSelected = false;
                              }
                              _model.updateListOfLocalCategoryAtIndex(index,
                                  (updateFn) {
                                updateFn.isSelected = true;
                                return updateFn;
                              });
                            });
                            await Future.delayed(Duration(milliseconds: 300));
                            Navigator.of(context).pop(positionItem.toMap());
                          },
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 16.0, 16.0, 16.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    positionItem.name,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .color000000,
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Stack(
                                    children: [
                                      Visibility(
                                        visible:
                                            positionItem.isSelected == false,
                                        child: SvgPicture.asset(
                                          'assets/images/radio_default.svg',
                                          width: 20.0,
                                          height: 20.0,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Visibility(
                                        visible:
                                            positionItem.isSelected != false,
                                        child: SvgPicture.asset(
                                          'assets/images/radio_selected.svg',
                                          width: 20.0,
                                          height: 20.0,
                                          fit: BoxFit.contain,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    )),
                Visibility(
                  visible: _model.listOfLocalCategory.isEmpty,
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
      ),
    );
  }
}
