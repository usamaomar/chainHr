import '../../auth/custom_auth/auth_util.dart';
import '../free_dialog/free_dialog_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'my_profile_page_model.dart';
export 'my_profile_page_model.dart';

class MyProfilePageWidget extends StatefulWidget {
  const MyProfilePageWidget({super.key});

  @override
  State<MyProfilePageWidget> createState() => _MyProfilePageWidgetState();
}

class _MyProfilePageWidgetState extends State<MyProfilePageWidget> {
  late MyProfilePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyProfilePageModel());
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
          _model.name = FFAppState().UserModelState.name;
          _model.image = FFAppState().UserModelState.profilePhotoPath;
          _model.email = FFAppState().UserModelState.email;
        }));
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
        body: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(0.0),
              child: SvgPicture.asset(
                'assets/images/Ellipse_8.svg',
                height: MediaQuery.of(context).size.width / 1.70,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          16.0, 30.0, 16.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'g3u7b8dj' /* My Profile */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color: FlutterFlowTheme.of(context)
                                        .colorffffff,
                                    fontSize: 22.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ],
                      )),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(138.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(138.0),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).color4E88F4,
                          width: 2.0,
                        ),
                      ),
                      child: Container(
                        width: 138.0,
                        height: 138.0,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: CachedNetworkImage(
                          fadeInDuration: const Duration(milliseconds: 200),
                          fadeOutDuration: const Duration(milliseconds: 200),
                          imageUrl: _model.image ?? '',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  FlutterFlowIconButton(
                    borderColor: FlutterFlowTheme.of(context).colorffffff,
                    borderRadius: 20.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    fillColor: FlutterFlowTheme.of(context).colorffffff,
                    icon: Icon(
                      Icons.edit_square,
                      color: FlutterFlowTheme.of(context).colorffffff,
                      size: 0.0,
                    ),
                    onPressed: () async {
                      // final selectedMedia = await selectMedia(
                      //     mediaSource: MediaSource.photoGallery,
                      //     multiImage: false,
                      //     maxHeight: 300,
                      //     maxWidth: 300);
                      // if (selectedMedia != null &&
                      //     selectedMedia.every((m) =>
                      //         validateFileFormat(
                      //             m.storagePath, context))) {
                      //   setState(() =>
                      //   _model.isDataUploading = true);
                      //   var selectedUploadedFiles =
                      //   <FFUploadedFile>[];
                      //   try {
                      //     selectedUploadedFiles = selectedMedia
                      //         .map((m) => FFUploadedFile(
                      //       name: m.storagePath
                      //           .split('/')
                      //           .last,
                      //       bytes: m.bytes,
                      //       height:
                      //       m.dimensions?.height,
                      //       width: m.dimensions?.width,
                      //       blurHash: m.blurHash,
                      //     ))
                      //         .toList();
                      //   } finally {
                      //     _model.isDataUploading = false;
                      //   }
                      //   if (selectedUploadedFiles.length ==
                      //       selectedMedia.length) {
                      //     setState(() {
                      //       _model.uploadedLocalFile =
                      //           selectedUploadedFiles.first;
                      //     });
                      //   } else {
                      //     setState(() {});
                      //     return;
                      //   }
                      // }
                    },
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            _model.name ?? '',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color:
                                      FlutterFlowTheme.of(context).color000000,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 5.0, 0.0, 30.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              _model.email ?? '',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color: FlutterFlowTheme.of(context)
                                        .color908888,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 2.0,
                        indent: 82.0,
                        endIndent: 82.0,
                        color: FlutterFlowTheme.of(context).color000000,
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 0.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  26.0, 24.0, 26.0, 0.0),
                              child: InkWell(
                                onTap: () {
                                  context.pushNamedAuth(
                                      'RolePageWidget', mounted);
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.man,
                                      color: FlutterFlowTheme.of(context)
                                          .color000000,
                                      size: 24.0,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              17.0, 0.0, 17.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context)
                                            .getVariableText(
                                                enText: 'Role',
                                                arText: 'الاعداد'),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .color2B2A4E,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ),
                                    Flexible(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Icon(
                                            Icons.arrow_forward_ios_sharp,
                                            color: FlutterFlowTheme.of(context)
                                                .color929090,
                                            size: 16.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  26.0, 26.0, 26.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.lock_sharp,
                                    color: FlutterFlowTheme.of(context)
                                        .color000000,
                                    size: 24.0,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            17.0, 0.0, 17.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'ih6togq3' /* Change Password */,
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
                                  Flexible(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Icon(
                                          Icons.arrow_forward_ios_sharp,
                                          color: FlutterFlowTheme.of(context)
                                              .color929090,
                                          size: 16.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  26.0, 26.0, 26.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.help_outline,
                                    color: FlutterFlowTheme.of(context)
                                        .color000000,
                                    size: 24.0,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            17.0, 0.0, 17.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'io2ltlhi' /* Help & Support */,
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
                                  Flexible(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Icon(
                                          Icons.arrow_forward_ios_sharp,
                                          color: FlutterFlowTheme.of(context)
                                              .color929090,
                                          size: 16.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  26.0, 26.0, 26.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.report_gmailerrorred_sharp,
                                    color: FlutterFlowTheme.of(context)
                                        .color000000,
                                    size: 24.0,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            17.0, 0.0, 17.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'vskps8sg' /* About Apps */,
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
                                  Flexible(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Icon(
                                          Icons.arrow_forward_ios_sharp,
                                          color: FlutterFlowTheme.of(context)
                                              .color929090,
                                          size: 16.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  26.0, 26.0, 26.0, 0.0),
                              child: InkWell(
                                onTap: () async {
                                  await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      enableDrag: false,
                                      isDismissible: true,
                                      context: context,
                                      builder: (context) {
                                        return GestureDetector(
                                            onTap: () => FocusScope.of(context)
                                                .unfocus(),
                                            child: Padding(
                                                padding:
                                                    MediaQuery.viewInsetsOf(
                                                        context),
                                                child: FreeDialogWidget(
                                                    iconImage:
                                                        'assets/images/Layer_1_(2).svg',
                                                    title: FFLocalizations.of(
                                                            context)
                                                        .getVariableText(
                                                      enText: 'Logout',
                                                      arText: "تسجيل خروج",
                                                    ),
                                                    data: FFLocalizations.of(
                                                            context)
                                                        .getVariableText(
                                                      enText:
                                                          'Are you sure you want to log out',
                                                      arText:
                                                          "هل انت متاكد من انك تود تسجيل الخروج",
                                                    ),
                                                    buttonText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getVariableText(
                                                      enText: 'Logout',
                                                      arText: "تسجيل خروج",
                                                    ))));
                                      }).then((onValue) async {
                                    if (onValue != null) {
                                      GoRouter.of(context).prepareAuthEvent();
                                      await authManager.signOut();
                                      GoRouter.of(context)
                                          .clearRedirectLocation();
                                      context.goNamedAuth(
                                          'LoginPage', context.mounted);
                                    }
                                  });
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.logout_sharp,
                                      color: FlutterFlowTheme.of(context)
                                          .color000000,
                                      size: 24.0,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              17.0, 0.0, 17.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'e7hfuhsu' /* Logout */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .color2B2A4E,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ),
                                    Flexible(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Icon(
                                            Icons.arrow_forward_ios_sharp,
                                            color: FlutterFlowTheme.of(context)
                                                .color929090,
                                            size: 16.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
