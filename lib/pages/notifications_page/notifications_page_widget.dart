import '../../component/title_tool_bar/title_tool_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'notifications_page_model.dart';
export 'notifications_page_model.dart';

class NotificationsPageWidget extends StatefulWidget {
  const NotificationsPageWidget({super.key});

  @override
  State<NotificationsPageWidget> createState() =>
      _NotificationsPageWidgetState();
}

class _NotificationsPageWidgetState extends State<NotificationsPageWidget> {
  late NotificationsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificationsPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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
              '60x9h6bx' /* Notifications */,
            ),
            isBackAllowed: false,
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
              // ListView(
              //   padding: const EdgeInsets.fromLTRB(
              //     0,
              //     0.0,
              //     0,
              //     50.0,
              //   ),
              //   scrollDirection: Axis.vertical,
              //   children: [
              //     Padding(
              //       padding:
              //           const EdgeInsetsDirectional.fromSTEB(21.0, 0.0, 21.0, 15.0),
              //       child: Column(
              //         mainAxisSize: MainAxisSize.max,
              //         children: [
              //           Row(
              //             mainAxisSize: MainAxisSize.max,
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Padding(
              //                 padding: const EdgeInsetsDirectional.fromSTEB(
              //                     0.0, 5.0, 15.0, 0.0),
              //                 child: Container(
              //                   width: 10.0,
              //                   height: 10.0,
              //                   decoration: BoxDecoration(
              //                     color: FlutterFlowTheme.of(context).color4E88F4,
              //                     borderRadius: BorderRadius.circular(100.0),
              //                   ),
              //                 ),
              //               ),
              //               Flexible(
              //                 child: Text(
              //                   FFLocalizations.of(context).getText(
              //                     'olq5wz2a' /* Lorem ipsum dolor sit amet, co... */,
              //                   ),
              //                   textAlign: TextAlign.start,
              //                   style: FlutterFlowTheme.of(context)
              //                       .bodyMedium
              //                       .override(
              //                         fontFamily: 'Inter',
              //                         color:
              //                             FlutterFlowTheme.of(context).color656565,
              //                         letterSpacing: 0.0,
              //                         fontWeight: FontWeight.bold,
              //                       ),
              //                 ),
              //               ),
              //             ],
              //           ),
              //           Row(
              //             mainAxisSize: MainAxisSize.max,
              //             children: [
              //               Padding(
              //                 padding: const EdgeInsetsDirectional.fromSTEB(
              //                     25.0, 10.0, 25.0, 10.0),
              //                 child: Text(
              //                   FFLocalizations.of(context).getText(
              //                     'cg87w1xl' /* 2 hours */,
              //                   ),
              //                   style: FlutterFlowTheme.of(context)
              //                       .bodyMedium
              //                       .override(
              //                         fontFamily: 'Inter',
              //                         color:
              //                             FlutterFlowTheme.of(context).color908888,
              //                         letterSpacing: 0.0,
              //                       ),
              //                 ),
              //               ),
              //             ],
              //           ),
              //           Divider(
              //             thickness: 1.0,
              //             color: FlutterFlowTheme.of(context).colorDDDDDD,
              //           ),
              //         ],
              //       ),
              //     ),
              //   ],
              // ),
              Center(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
