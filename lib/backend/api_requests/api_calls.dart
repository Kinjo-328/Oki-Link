import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class CreateCheckoutCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    int? price,
    String? productName = '',
    String? userId = '',
    String? packageId = '',
    String? authToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "price": ${price},
  "productName": "${escapeStringForJson(productName)}",
  "user_id": "${escapeStringForJson(userId)}",
  "package_id": "${escapeStringForJson(packageId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreateCheckout',
      apiUrl:
          'https://isjpuicrcanvsyzgfqgm.functions.supabase.co/create-checkout',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.url''',
      ));
}

class DeleteUSerCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? authUserUid = '',
  }) async {
    final ffApiRequestBody = '''
{
  "user_id": "${escapeStringForJson(authUserUid)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'DeleteUSer',
      apiUrl: 'https://isjpuicrcanvsyzgfqgm.functions.supabase.co/delete-user',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer {authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

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

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
