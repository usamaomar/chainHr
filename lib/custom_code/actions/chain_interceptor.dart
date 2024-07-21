// Automatic FlutterFlow imports
import 'package:hr_chain/pages/free_dialog/free_dialog_widget.dart';

import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';

// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/backend/api_requests/api_interceptor.dart';

class ChainInterceptor extends FFApiInterceptor {
  @override
  Future<ApiCallOptions> onRequest({
    required ApiCallOptions options,
  }) async {
    return options;
  }

  @override
  Future<ApiCallResponse> onResponse({
    required ApiCallResponse response,
    required BuildContext context,
    required Future<ApiCallResponse> Function() retryFn,
  }) async {
    if (getJsonField((response.jsonBody), r'''$.message''',) != null) {
      if (getJsonField((response.jsonBody), r'''$.message''',) == 'Not authenticated') {
        WidgetsBinding.instance.addPostFrameCallback((_) async{
          await showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            enableDrag: false,
            isDismissible: false,
            context: context,
            builder: (context) {
              return GestureDetector(
                onTap: () =>  FocusScope.of(context)
                    .unfocus(),
                child: Padding(
                  padding: MediaQuery.viewInsetsOf(
                      context),
                  child:   FreeDialogWidget(
                    iconImage: 'assets/images/Layer_1_(2).svg',
                    title: FFLocalizations.of(context).getVariableText(
                      enText: 'Error',
                      arText: "حدثت مشكلة ما",
                    ),
                    data: FFLocalizations.of(context).getVariableText(
                      enText: 'You are logged in from other device so you must Log Out',
                      arText: "لقد قمت بتسجيل الدخول من جهاز آخر لذا يجب عليك تسجيل الخروج",
                    ),
                    buttonText: FFLocalizations.of(context).getVariableText(
                      enText: 'Log Out',
                      arText: "تسجيل الخروج",
                    ),
                  ),
                ),
              );
            },
          ).then((value) {
            context.pushReplacementNamed('LoginPage');
          });
        });
        return response;
      } else {
        return response;
      }
    } else {
      return response;
    }
  }
}
