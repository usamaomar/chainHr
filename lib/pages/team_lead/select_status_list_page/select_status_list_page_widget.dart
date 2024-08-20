import 'package:flutter_svg/svg.dart';
import 'package:hr_chain/backend/schema/structs/status_model.dart';
import '../../../component/title_tool_bar/title_tool_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'select_status_list_page_model.dart';

class SelectStatusListPageWidget extends StatefulWidget {
  const SelectStatusListPageWidget({super.key});

  @override
  State<SelectStatusListPageWidget> createState() =>
      _SelectStatusListPageWidget();
}

class _SelectStatusListPageWidget extends State<SelectStatusListPageWidget> {
  late SelectStatusListPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectStatusListPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.listOfLocalCategory.add(StatusModel(
            name: FFLocalizations.of(context).getVariableText(
              enText: 'Pending',
              arText: 'قيد الانتظار',
            ),
            id: 1,
            status: 'Pending'));
        _model.listOfLocalCategory.add(StatusModel(
            name: FFLocalizations.of(context).getVariableText(
              enText: 'Rejected',
              arText: 'مرفوض',
            ),
            id: 2,
            status: 'Rejected'));
        _model.listOfLocalCategory.add(StatusModel(
            name: FFLocalizations.of(context).getVariableText(
              enText: 'Approved',
              arText: 'مقبول',
            ),
            id: 3,
            status: 'Approved'));
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
              enText: 'Select Status',
              arText: 'اختر الحالة',
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
                        child: InkWell(
                          onTap: () {
                            context.pop(positionItem.toMap());
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
                                  const EdgeInsets.fromLTRB(16, 22, 16, 22),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        positionItem.name,
                                        maxLines: 1,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Inter',
                                              color: positionItem.id == 1
                                                  ? FlutterFlowTheme.of(
                                                          context)
                                                      .colorF69B11
                                                  : (positionItem.id == 2
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .colorE20D0D
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .color25AA22),
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    FFLocalizations.of(context).getVariableText(
                                        enText: 'Select', arText: 'ختر'),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .color4E88F4,
                                          letterSpacing: 0.0,
                                        ),
                                  )
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
        ),
      ),
    );
  }
}
