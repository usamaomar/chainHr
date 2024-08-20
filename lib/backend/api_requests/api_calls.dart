import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';
import 'interceptors.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start HrGroup Group Code
//ahmad@completechaintech.com
//password
class HrGroupGroup {
  static String getBaseUrl({
    String? platform = '',
    String? buildNumber = '',
    String? token = '',
  }) =>
      // 'https://hr.completechaintech.com' ;
      'https://hrdev.completechaintech.com';

  //
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Platform': '[platform]',
    'Build-Number': '[buildNumber]',
    'Authorization': 'Bearer [token]',
    'Accept': 'application/json',
  };
  static LoginApiCallCall loginApiCallCall = LoginApiCallCall();
  static CreatePunchApiApiCallCall createPunchApiApiCallCall =
      CreatePunchApiApiCallCall();
  static DashboardApiCallCall dashboardApiCallCall = DashboardApiCallCall();
  static EmploymentInfoApiCallCall employmentInfoApiCallCall =
      EmploymentInfoApiCallCall();
  static LeaveTypeApiCall leaveTypeApiCall = LeaveTypeApiCall();
  static VacationTypeApiCall vacationTypeApiCall = VacationTypeApiCall();
  static LeaveListApiCall leaveListApiCall = LeaveListApiCall();
  static VacationListApiCall vacationListApiCall = VacationListApiCall();
  static CreateLeaveApiCall createLeaveApiCall = CreateLeaveApiCall();
  static CreateVacationApiCall createVacationApiCall = CreateVacationApiCall();
  static MonthAttendanceApiCall monthAttendanceApiCall =
      MonthAttendanceApiCall();
  static MyTeamMembersApiCall myTeamMembersApiCall = MyTeamMembersApiCall();
  static MyTeamMembersVacationBulkApiCall myTeamMembersVacationBulkApiCall =
      MyTeamMembersVacationBulkApiCall();
  static UpcomingHolidayApiCall upcomingHolidayApiCall =
      UpcomingHolidayApiCall();
  static UpdateDetailsStateApiCall updateDetailsStateApiCall =
      UpdateDetailsStateApiCall();
  static ChangeTeamApiCall changeTeamApiCall = ChangeTeamApiCall();

  static final interceptors = [
    ChainInterceptor(),
  ];
}

class LeaveTypeApiCall {
  Future<ApiCallResponse> call({
    required BuildContext context,
    String? platform = '',
    String? buildNumber = '',
    String? token = '',
  }) async {
    final baseUrl = HrGroupGroup.getBaseUrl(
      platform: platform,
      buildNumber: buildNumber,
      token: token,
    );
    return FFApiInterceptor.makeApiCall(
        ApiCallOptions(
          callName: 'DashboardApiCall',
          apiUrl: '$baseUrl/api/leaveType',
          callType: ApiCallType.GET,
          headers: {
            'Content-Type': 'application/json',
            'Platform': ''.platformSpecific,
            'Build-Number': '$buildNumber',
            'Authorization': 'Bearer $token',
            'Accept': 'application/json',
          }.addUserHeaders(),
          params: const {},
          returnBody: true,
          encodeBodyUtf8: false,
          decodeUtf8: false,
          cache: false,
          isStreamingApi: false,
          alwaysAllowBody: false,
        ),
        HrGroupGroup.interceptors,
        context);
  }
}

class VacationTypeApiCall {
  Future<ApiCallResponse> call({
    required BuildContext context,
    String? platform = '',
    String? buildNumber = '',
    String? token = '',
  }) async {
    final baseUrl = HrGroupGroup.getBaseUrl(
      platform: platform,
      buildNumber: buildNumber,
      token: token,
    );
    return FFApiInterceptor.makeApiCall(
        ApiCallOptions(
          callName: 'VacationTypeApiCall',
          apiUrl: '$baseUrl/api/vacationTypes',
          callType: ApiCallType.GET,
          headers: {
            'Content-Type': 'application/json',
            'Platform': ''.platformSpecific,
            'Build-Number': '$buildNumber',
            'Authorization': 'Bearer $token',
            'Accept': 'application/json',
          }.addUserHeaders(),
          params: const {},
          returnBody: true,
          encodeBodyUtf8: false,
          decodeUtf8: false,
          cache: false,
          isStreamingApi: false,
          alwaysAllowBody: false,
        ),
        HrGroupGroup.interceptors,
        context);
  }
}

class MonthAttendanceApiCall {
  Future<ApiCallResponse> call({
    required BuildContext context,
    String? platform = '',
    String? buildNumber = '',
    String? token = '',
    String? date,
  }) async {
    final baseUrl = HrGroupGroup.getBaseUrl(
      platform: platform,
      buildNumber: buildNumber,
      token: token,
    );
    return FFApiInterceptor.makeApiCall(
        ApiCallOptions(
          callName: 'MonthAttendanceApiCall',
          apiUrl: '$baseUrl/api/employee/monthAttendanceSummary/$date',
          callType: ApiCallType.GET,
          headers: {
            'Content-Type': 'application/json',
            'Platform': ''.platformSpecific,
            'Build-Number': '$buildNumber',
            'Authorization': 'Bearer $token',
            'Accept': 'application/json',
          }.addUserHeaders(),
          params: const {},
          returnBody: true,
          encodeBodyUtf8: false,
          decodeUtf8: false,
          cache: false,
          isStreamingApi: false,
          alwaysAllowBody: false,
        ),
        HrGroupGroup.interceptors,
        context);
  }
}

class MyTeamMembersApiCall {
  Future<ApiCallResponse> call(
      {required BuildContext context,
      String? platform = '',
      String? buildNumber = '',
      String? token = '',
      int? page}) async {
    final baseUrl = HrGroupGroup.getBaseUrl(
      platform: platform,
      buildNumber: buildNumber,
      token: token,
    );
    return FFApiInterceptor.makeApiCall(
        ApiCallOptions(
          callName: 'MonthAttendanceApiCall',
          apiUrl: '$baseUrl/api/myTeamMembers',
          callType: ApiCallType.GET,
          headers: {
            'Content-Type': 'application/json',
            'Platform': ''.platformSpecific,
            'Build-Number': '$buildNumber',
            'Authorization': 'Bearer $token',
            'Accept': 'application/json',
            'page': '$page',
          }.addUserHeaders(),
          params: const {},
          returnBody: true,
          encodeBodyUtf8: false,
          decodeUtf8: false,
          cache: false,
          isStreamingApi: false,
          alwaysAllowBody: false,
        ),
        HrGroupGroup.interceptors,
        context);
  }
}

class MyTeamMembersVacationBulkApiCall {
  Future<ApiCallResponse> call(
      {required BuildContext context,
      String? platform = '',
      String? buildNumber = '',
      String? token = '',
      String? date}) async {
    final baseUrl = HrGroupGroup.getBaseUrl(
      platform: platform,
      buildNumber: buildNumber,
      token: token,
    );
    return FFApiInterceptor.makeApiCall(
        ApiCallOptions(
          callName: 'MonthAttendanceApiCall',
          apiUrl: '$baseUrl/api/employee/vacationBulk/team/$date',
          callType: ApiCallType.GET,
          headers: {
            'Content-Type': 'application/json',
            'Platform': ''.platformSpecific,
            'Build-Number': '$buildNumber',
            'Authorization': 'Bearer $token',
            'Accept': 'application/json'
          }.addUserHeaders(),
          params: const {},
          returnBody: true,
          encodeBodyUtf8: false,
          decodeUtf8: false,
          cache: false,
          isStreamingApi: false,
          alwaysAllowBody: false,
        ),
        HrGroupGroup.interceptors,
        context);
  }
}

class LeaveListApiCall {
  Future<ApiCallResponse> call({
    required BuildContext context,
    String? platform = '',
    String? buildNumber = '',
    String? token = '',
    String? date = '',
  }) async {
    final baseUrl = HrGroupGroup.getBaseUrl(
      platform: platform,
      buildNumber: buildNumber,
      token: token,
    );
    return FFApiInterceptor.makeApiCall(
        ApiCallOptions(
          callName: 'DashboardApiCall',
          apiUrl: '$baseUrl/api/employee/leave/all/$date',
          callType: ApiCallType.GET,
          headers: {
            'Content-Type': 'application/json',
            'Platform': ''.platformSpecific,
            'Build-Number': '$buildNumber',
            'Authorization': 'Bearer $token',
            'Accept': 'application/json',
          }.addUserHeaders(),
          params: const {},
          returnBody: true,
          encodeBodyUtf8: false,
          decodeUtf8: false,
          cache: false,
          isStreamingApi: false,
          alwaysAllowBody: false,
        ),
        HrGroupGroup.interceptors,
        context);
  }
}

class UpcomingHolidayApiCall {
  Future<ApiCallResponse> call({
    required BuildContext context,
    String? platform = '',
    String? buildNumber = '',
    String? token = '',
  }) async {
    final baseUrl = HrGroupGroup.getBaseUrl(
      platform: platform,
      buildNumber: buildNumber,
      token: token,
    );
    return FFApiInterceptor.makeApiCall(
        ApiCallOptions(
          callName: 'DashboardApiCall',
          apiUrl: '$baseUrl/api/upcomingHolidays',
          callType: ApiCallType.GET,
          headers: {
            'Content-Type': 'application/json',
            'Platform': ''.platformSpecific,
            'Build-Number': '$buildNumber',
            'Authorization': 'Bearer $token',
            'Accept': 'application/json',
          }.addUserHeaders(),
          params: const {},
          returnBody: true,
          encodeBodyUtf8: false,
          decodeUtf8: false,
          cache: false,
          isStreamingApi: false,
          alwaysAllowBody: false,
        ),
        HrGroupGroup.interceptors,
        context);
  }
}

class UpdateDetailsStateApiCall {
  Future<ApiCallResponse> call({
    required BuildContext context,
    String? platform = '',
    String? buildNumber = '',
    String? token = '',
    String? id = '',
    String? status = '',
    String? action = '',
  }) async {
    final baseUrl = HrGroupGroup.getBaseUrl(
      platform: platform,
      buildNumber: buildNumber,
      token: token,
    );
//     final ffApiRequestBody = '''
// {
//   "action": "$action"
// }''';
    return FFApiInterceptor.makeApiCall(
        ApiCallOptions(
          callName: 'DashboardApiCall',
          apiUrl: '$baseUrl/api/employee/vacationBulk/$id',
          callType: ApiCallType.PUT,
          headers: {
            'Content-Type': 'application/json',
            'Platform': ''.platformSpecific,
            'Build-Number': '$buildNumber',
            'Authorization': 'Bearer $token',
            'Accept': 'application/json',
          }.addUserHeaders(),
          params: {"action": '$action'},
          returnBody: true,
          // body: ffApiRequestBody,
          encodeBodyUtf8: true,
          decodeUtf8: false,
          cache: false,
          isStreamingApi: false,
          alwaysAllowBody: false,
        ),
        HrGroupGroup.interceptors,
        context);
  }
}

class VacationListApiCall {
  Future<ApiCallResponse> call({
    required BuildContext context,
    String? platform = '',
    String? buildNumber = '',
    String? token = '',
    String? date = '',
  }) async {
    final baseUrl = HrGroupGroup.getBaseUrl(
      platform: platform,
      buildNumber: buildNumber,
      token: token,
    );
    return FFApiInterceptor.makeApiCall(
        ApiCallOptions(
          callName: 'DashboardApiCall',
          apiUrl: '$baseUrl/api/employee/vacationBulk/all/$date',
          callType: ApiCallType.GET,
          headers: {
            'Content-Type': 'application/json',
            'Platform': ''.platformSpecific,
            'Build-Number': '$buildNumber',
            'Authorization': 'Bearer $token',
            'Accept': 'application/json',
          }.addUserHeaders(),
          params: const {},
          returnBody: true,
          encodeBodyUtf8: false,
          decodeUtf8: false,
          cache: false,
          isStreamingApi: false,
          alwaysAllowBody: false,
        ),
        HrGroupGroup.interceptors,
        context);
  }
}

class LoginApiCallCall {
  Future<ApiCallResponse> call({
    required BuildContext context,
    String? email = '',
    String? password = '',
    String? lang = '',
    String? fcm = '',
    String? platform = '',
    String? buildNumber = '',
    String? token = '',
  }) async {
    final baseUrl = HrGroupGroup.getBaseUrl(
      platform: platform,
      buildNumber: buildNumber,
      token: token,
    );

    final ffApiRequestBody = '''
{
  "email": "$email",
  "password": "$password",
  "lang": "$lang",
  "fcm": "$fcm",
  "device_name": "$platform"
}''';
    return FFApiInterceptor.makeApiCall(
        ApiCallOptions(
          callName: 'LoginApiCall',
          apiUrl: '$baseUrl/api/token',
          callType: ApiCallType.POST,
          headers: {
            'Content-Type': 'application/json',
            'Platform': '$platform',
            'Build-Number': '$buildNumber',
            'Authorization': 'Bearer $token',
            'Accept': 'application/json',
          }.addUserHeaders(),
          params: const {},
          body: ffApiRequestBody,
          bodyType: BodyType.JSON,
          returnBody: true,
          encodeBodyUtf8: false,
          decodeUtf8: false,
          cache: false,
          isStreamingApi: false,
          alwaysAllowBody: false,
        ),
        HrGroupGroup.interceptors,
        context);
  }
}

class ChangeTeamApiCall {
  Future<ApiCallResponse> call({
    required BuildContext context,
    String? team,
    String? role,
    String? platform = '',
    String? buildNumber = '',
    String? token = '',
  }) async {
    final baseUrl = HrGroupGroup.getBaseUrl(
      platform: platform,
      buildNumber: buildNumber,
      token: token,
    );

    final ffApiRequestBody = '''
{
  "team": "$team",
  "role": "$role"
}''';
    return FFApiInterceptor.makeApiCall(
        ApiCallOptions(
          callName: 'ChangeTeamApiCall',
          apiUrl: '$baseUrl/api/changeTeam',
          callType: ApiCallType.POST,
          headers: {
            'Content-Type': 'application/json',
            'Platform': ''.platformSpecific,
            'Build-Number': '$buildNumber',
            'Authorization': 'Bearer $token',
            'Accept': 'application/json',
          }.addUserHeaders(),
          params: const {},
          body: ffApiRequestBody,
          bodyType: BodyType.JSON,
          returnBody: true,
          encodeBodyUtf8: false,
          decodeUtf8: false,
          cache: false,
          isStreamingApi: false,
          alwaysAllowBody: false,
        ),
        HrGroupGroup.interceptors,
        context);
  }
}

class CreatePunchApiApiCallCall {
  Future<ApiCallResponse> call({
    required BuildContext context,
    String? lat = '',
    String? lng = '',
    String? shiftId = '',
    String? platform = '',
    String? buildNumber = '',
    String? token = '',
  }) async {
    final baseUrl = HrGroupGroup.getBaseUrl(
      platform: platform,
      buildNumber: buildNumber,
      token: token,
    );

    final ffApiRequestBody = '''
{
  "lat": "$lat",
  "lng": "$lng",
  "shift_id": "$shiftId"
}''';
    return FFApiInterceptor.makeApiCall(
        ApiCallOptions(
          callName: 'CreatePunchApiApiCall',
          apiUrl: '$baseUrl/api/employee/create/punch',
          callType: ApiCallType.POST,
          headers: {
            'Content-Type': 'application/json',
            'Platform': '$platform',
            'Build-Number': '$buildNumber',
            'Authorization': 'Bearer $token',
            'Accept': 'application/json',
          }.addUserHeaders(),
          params: const {},
          body: ffApiRequestBody,
          bodyType: BodyType.JSON,
          returnBody: true,
          encodeBodyUtf8: false,
          decodeUtf8: false,
          cache: false,
          isStreamingApi: false,
          alwaysAllowBody: false,
        ),
        HrGroupGroup.interceptors,
        context);
  }
}

class CreateLeaveApiCall {
  Future<ApiCallResponse> call({
    required BuildContext context,
    String? startDate = '',
    String? endDate = '',
    String? description = '',
    String? reason = '',
    int? typeId,
    String? platform = '',
    String? buildNumber = '',
    String? token = '',
  }) async {
    final baseUrl = HrGroupGroup.getBaseUrl(
      platform: platform,
      buildNumber: buildNumber,
      token: token,
    );

    final ffApiRequestBody = '''
{
  "start_date": "$startDate",
  "end_date": "$endDate",
  "description": "$description",
  "reason": "$reason",
  "type_id": $typeId
}''';
    return FFApiInterceptor.makeApiCall(
        ApiCallOptions(
          callName: 'CreateLeaveApiCall',
          apiUrl: '$baseUrl/api/employee/leave',
          callType: ApiCallType.POST,
          headers: {
            'Content-Type': 'application/json',
            'Platform': '$platform',
            'Build-Number': '$buildNumber',
            'Authorization': 'Bearer $token',
            'Accept': 'application/json',
          }.addUserHeaders(),
          params: const {},
          body: ffApiRequestBody,
          bodyType: BodyType.JSON,
          returnBody: true,
          encodeBodyUtf8: false,
          decodeUtf8: false,
          cache: false,
          isStreamingApi: false,
          alwaysAllowBody: false,
        ),
        HrGroupGroup.interceptors,
        context);
  }
}

// params["start_date"] = '${selectedFromDateValue}';
// params["end_date"] = '${selectedToDateValue}';
// params["type_id"] =
// selectedModel == null ? list[0].id : selectedModel?.id;
// params["bulk"] = "1";
// params["employee_id"] = "";

class CreateVacationApiCall {
  Future<ApiCallResponse> call({
    required BuildContext context,
    FFUploadedFile? file,
    String? startDate = '',
    String? endDate = '',
    int? typeId,
    String? platform = '',
    String? buildNumber = '',
    String? token = '',
  }) async {
    final baseUrl = HrGroupGroup.getBaseUrl(
      platform: platform,
      buildNumber: buildNumber,
      token: token,
    );

    final ffApiRequestBody = '''
{
  "start_date": "$startDate",
  "end_date": "$endDate",
  "bulk": "1",
  "employee_id": "",
  "type_id": $typeId
}''';
    return FFApiInterceptor.makeApiCall(
        ApiCallOptions(
          callName: 'UploudImageApi',
          apiUrl: '$baseUrl/api/employee/vacationBulk',
          callType: ApiCallType.POST,
          headers: {
            'Content-Type': 'application/json',
            'Platform': '$platform',
            'Build-Number': '$buildNumber',
            'Authorization': 'Bearer $token',
            'Accept': 'application/json',
          },
          params: {
            'attachment': file,
            "start_date": "$startDate",
            "end_date": "$endDate",
            "bulk": "1",
            "employee_id": "",
            "type_id": '$typeId'
          },
          bodyType: BodyType.MULTIPART,
          body: ffApiRequestBody,
          returnBody: true,
          encodeBodyUtf8: false,
          decodeUtf8: false,
          cache: false,
          alwaysAllowBody: false,
        ),
        HrGroupGroup.interceptors,
        context);
  }
}

class DashboardApiCallCall {
  Future<ApiCallResponse> call({
    required BuildContext context,
    String? email = '',
    String? password = '',
    String? lang = '',
    String? fcm = '',
    String? platform = '',
    String? buildNumber = '',
    String? token = '',
  }) async {
    final baseUrl = HrGroupGroup.getBaseUrl(
      platform: platform,
      buildNumber: buildNumber,
      token: token,
    );

    return FFApiInterceptor.makeApiCall(
        ApiCallOptions(
          callName: 'DashboardApiCall',
          apiUrl: '$baseUrl/api/employee/dashboard',
          callType: ApiCallType.GET,
          headers: {
            'Content-Type': 'application/json',
            'Platform': '$platform',
            'Build-Number': '$buildNumber',
            'Authorization': 'Bearer $token',
            'Accept': 'application/json',
          }.addUserHeaders(),
          params: const {},
          returnBody: true,
          encodeBodyUtf8: false,
          decodeUtf8: false,
          cache: false,
          isStreamingApi: false,
          alwaysAllowBody: false,
        ),
        HrGroupGroup.interceptors,
        context);
  }
}

class EmploymentInfoApiCallCall {
  Future<ApiCallResponse> call({
    required BuildContext context,
    String? platform = '',
    String? buildNumber = '',
    String? token = '',
  }) async {
    final baseUrl = HrGroupGroup.getBaseUrl(
      platform: platform,
      buildNumber: buildNumber,
      token: token,
    );

    return FFApiInterceptor.makeApiCall(
        ApiCallOptions(
          callName: 'EmploymentInfoApiCall',
          apiUrl: '$baseUrl/api/employee/employmentInfo',
          callType: ApiCallType.GET,
          headers: {
            'Content-Type': 'application/json',
            'Platform': '$platform',
            'Build-Number': '$buildNumber',
            'Authorization': 'Bearer $token',
            'Accept': 'application/json',
          }.addUserHeaders(),
          params: const {},
          returnBody: true,
          encodeBodyUtf8: false,
          decodeUtf8: false,
          cache: false,
          isStreamingApi: false,
          alwaysAllowBody: false,
        ),
        HrGroupGroup.interceptors,
        context);
  }
}

/// End HrGroup Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
