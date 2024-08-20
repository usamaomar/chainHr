import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../flutter_flow/flutter_flow_theme.dart';

class TitleToolBarWidget extends StatelessWidget {

  final String? title;
  final String? userImage;
  final bool? isBackAllowed;
  final bool? isImageAllowed;
  final void Function()? actionBack;


  const TitleToolBarWidget(
      {super.key, this.title, this.actionBack, this.userImage, this.isBackAllowed, this.isImageAllowed});


  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: FlutterFlowTheme
          .of(context)
          .colorffffff,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Visibility(
            visible:  (isBackAllowed ?? true),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: actionBack,
              child: Icon(
                Icons.keyboard_backspace_rounded,
                color: FlutterFlowTheme
                    .of(context)
                    .color000000,
                size: 24.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
            child: Text(
              title ?? '',
              style: FlutterFlowTheme
                  .of(context)
                  .headlineMedium
                  .override(
                fontFamily: 'Inter',
                color: FlutterFlowTheme
                    .of(context)
                    .color000000,
                fontSize: 22.0,
                letterSpacing: 0.0,
              ),
            ),
          ),
          Visibility(
            visible: (isImageAllowed ?? true),
            child: Flexible(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: Image.network(
                      userImage ?? '',
                      width: 24.0,
                      height: 24.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      actions: const [],
      centerTitle: false,
      elevation: 0.0,
    );
  }


}