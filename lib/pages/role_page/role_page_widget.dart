import 'package:hr_chain/auth/custom_auth/auth_util.dart';
import 'package:hr_chain/backend/backend.dart';
import 'package:hr_chain/pages/role_page/profile_card_info_widget.dart';
import '../../backend/api_requests/api_calls.dart';
import '../../backend/schema/structs/info_cards_model.dart';
import '../../component/title_tool_bar/title_tool_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'role_page_model.dart';
export 'role_page_model.dart';

class RolePageWidget extends StatefulWidget {
  const RolePageWidget({super.key});

  @override
  State<RolePageWidget> createState() => _RolePageWidgetState();
}

class _RolePageWidgetState extends State<RolePageWidget> {
  late RolePageModel _model;
  static String vectorHrEnabled = "assets/images/vector-hr-enabled.svg";
  static String vectorAccountantEnabled =
      "assets/images/vector-accountant-enabled.svg";
  static String vectorTeamLeadEnabled =
      "assets/images/vector-teamlead-enabled.svg";
  static String vectorEmployeeEnabled =
      "assets/images/vector-employee-enabled.svg";
  static String vectorHrDisabled = "assets/images/vector-hr-disabled.svg";
  static String vectorAccountantDisabled =
      "assets/images/vector-accountant-disabled.svg";
  static String vectorTeamLeadDisabled =
      "assets/images/vector-teamlead-disabled.svg";
  static String vectorEmployeeDisabled =
      "assets/images/vector-employee-disabled.svg";
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RolePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  bool isHr() {
    UserModelStruct? userModel = FFAppState().UserModelState;
    bool state = false;
    if (userModel.team == HRtYPE && userModel.role == admin) {
      state = false;
    } else if ((userModel.has.length) > 0) {
      for (var element in userModel.has) {
        if (element.team == HRtYPE && element.role == HRtYPE) {
          state = true;
        }
      }
    }
    return state;
  }

  bool isHrVisible() {
    UserModelStruct? userModel = FFAppState().UserModelState;
    bool state = false;
    if (userModel.team == HRtYPE && userModel.role == admin) {
      state = true;
    } else if ((userModel.has.length ?? 0) > 0) {
      for (var element in userModel.has) {
        if (element.team == HRtYPE && element.role == admin) {
          state = true;
        }
      }
    }
    return state;
  }

  bool isTeamLead() {
    UserModelStruct? userModel = FFAppState().UserModelState;
    bool state = false;
    if (userModel.team == employee && userModel.role == admin) {
      state = false;
    } else if ((userModel.has.length ?? 0) > 0) {
      for (var element in userModel.has) {
        if (element.team == employee && element.role == admin) {
          state = true;
        }
      }
    }
    return state;
  }

  bool isTeamLeadVisible() {
    UserModelStruct? userModel = FFAppState().UserModelState;
    bool state = false;
    if (userModel.team == employee && userModel.role == admin) {
      state = true;
    } else if ((userModel.has.length ?? 0) > 0) {
      for (var element in userModel.has) {
        if (element.team == employee && element.role == admin) {
          state = true;
        }
      }
    }
    return state;
  }

  bool isEmployee() {
    UserModelStruct? userModel = FFAppState().UserModelState;
    bool state = false;
    if (userModel.team == employee && userModel.role == employee) {
      state = false;
    } else if ((userModel.has.length ?? 0) > 0) {
      userModel.has.forEach((element) {
        if (element.team == employee && element.role == employee) {
          state = true;
        }
      });
    }
    return state;
  }

  bool isEmployeeVisible() {
    UserModelStruct? userModel = FFAppState().UserModelState;
    bool state = false;
    if (userModel.team == employee && userModel.role == employee) {
      state = true;
    } else if ((userModel.has.length) > 0) {
      for (var element in userModel.has) {
        if (element.team == employee && element.role == employee) {
          state = true;
        }
      }
    }
    return state;
  }

  bool isAccountant() {
    UserModelStruct? userModel = FFAppState().UserModelState;
    bool state = false;
    if (userModel.team == accountant_role && userModel.role == employee) {
      state = false;
    } else if ((userModel.has.length ?? 0) > 0) {
      for (var element in userModel.has) {
        if (element.team == accountant_role && element.role == employee) {
          state = true;
        }
      }
    }
    return state;
  }

  bool isAccountantVisible() {
    UserModelStruct? userModel = FFAppState().UserModelState;
    bool state = false;
    if (userModel.team == accountant_role && userModel.role == employee) {
      state = true;
    } else if ((userModel.has.length ?? 0) > 0) {
      for (var element in userModel.has) {
        if (element.team == accountant_role && element.role == employee) {
          state = true;
        }
      }
    }
    return state;
  }

  Widget infoCards() {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight) / 2.5;
    final double itemWidth = size.width / 2;
    _model.absentList = [
      InfoCardsModel(
          team: HRtYPE,
          role: admin,
          isEnabled: isHr(),
          isVisible: isHrVisible(),
          title: FFLocalizations.of(context)
              .getVariableText(enText: 'HR', arText: 'اتش ار'),
          vectorImage: isHr() ? vectorHrEnabled : vectorHrDisabled),
      InfoCardsModel(
          team: accountant_role,
          role: employee,
          isEnabled: isAccountant(),
          title: FFLocalizations.of(context)
              .getVariableText(enText: 'Accounted', arText: 'محاسب'),
          vectorImage: isAccountant()
              ? vectorAccountantEnabled
              : vectorAccountantDisabled),
      InfoCardsModel(
          team: employee,
          role: admin,
          isEnabled: isTeamLead(),
          isVisible: isTeamLeadVisible(),
          title: FFLocalizations.of(context)
              .getVariableText(enText: 'TeamLead', arText: 'قائد فريق'),
          vectorImage:
              isTeamLead() ? vectorTeamLeadEnabled : vectorTeamLeadDisabled),
      InfoCardsModel(
          team: employee,
          role: employee,
          isVisible: isEmployeeVisible(),
          isEnabled: isEmployee(),
          title: FFLocalizations.of(context)
              .getVariableText(enText: 'Employee', arText: 'موظف'),
          vectorImage:
              isEmployee() ? vectorEmployeeEnabled : vectorEmployeeDisabled),
    ];
    _model.absentList.sort((a, b) {
      if (b.isVisible == true) {
        return 1;
      }
      return -1;
    });
    return Container(
        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
        child: GridView.count(
            crossAxisCount: 2,
            physics: ClampingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            childAspectRatio: (itemWidth / itemHeight),
            children: List.generate(_model.absentList.length, (index) {
              final InfoCardsModel item = _model.absentList[index];
              return infoCardsListWidgets(item, index);
            })));
  }

  Widget infoCardsListWidgets(InfoCardsModel infoCardsModel, int position) {
    return infoCardsModel.isVisible == true
        ? ProfileCardInfoWidget(
            index: position,
            isEnabled: infoCardsModel.isEnabled,
            onTabCard: onTabCard,
            title: infoCardsModel.title,
            vectorImage: infoCardsModel.vectorImage,
          )
        : Container();
  }

  void onTabCard(int position) {
    InfoCardsModel infoCardsModel = _model.absentList[position];
    if (infoCardsModel.isEnabled == true) {
      onItemClicked(infoCardsModel);
    }
  }

  void onItemClicked(InfoCardsModel infoCardsModel) async{
    setState(() {
      _model.isLoading = true;
    });
    _model.leaveListApiCall = await HrGroupGroup.changeTeamApiCall.call(
        context: context,
    team: infoCardsModel.team,
    role: infoCardsModel.role,
    token: currentAuthenticationToken
    );
    if ((_model.leaveListApiCall?.succeeded ?? true)) {
      FFAppState().UserModelState.userType = (_model.leaveListApiCall?.jsonBody["team"] == HRtYPE && _model.leaveListApiCall?.jsonBody["role"] ==  admin)
          ? HRtYPE
          : ((_model.leaveListApiCall?.jsonBody["team"] ==  employee  &&
          _model.leaveListApiCall?.jsonBody["role"] ==  admin)
          ?  teamLeader
          :  employee);
      FFAppState().UserModelState.team = _model.leaveListApiCall?.jsonBody['team'];
      FFAppState().UserModelState.role = _model.leaveListApiCall?.jsonBody['role'];
      FFAppState().UserModelState.has.add(HasStruct.fromMap(_model.leaveListApiCall?.jsonBody['has'][0]));
      setState(() {
        _model.isLoading = false;
      });
    } else {
      setState(() {
        _model.isLoading = false;
      });
      error(context, _model.unfocusNode, _model.leaveListApiCall?.bodyText);
    }
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
            title: FFLocalizations.of(context)
                .getVariableText(enText: 'Role', arText: 'الدور'),
            actionBack: () {
              Navigator.pop(context);
            },
            userImage: FFAppState().UserModelState.profilePhotoPath,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(
                  16.0, 0.0, 16.0, 0.0),
              child: infoCards()),
        ),
      ),
    );
  }
}
