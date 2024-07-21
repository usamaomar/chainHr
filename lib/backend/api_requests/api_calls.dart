import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';
import 'interceptors.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start HrGroup Group Code

class HrGroupGroup {
  static String getBaseUrl({
    String? platform = '',
    String? buildNumber = '',
    String? token = '',
  }) =>
      'https://hrdev.completechaintech.com';
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
  static LeaveListApiCall leaveListApiCall = LeaveListApiCall();
  static CreateLeaveApiCall createLeaveApiCall = CreateLeaveApiCall();

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


class LeaveListApiCall {
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
