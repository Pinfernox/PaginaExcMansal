import 'dart:convert';
import 'package:flutter/foundation.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start BF - emailNuevoCorreo Group Code

class BFEmailNuevoCorreoGroup {
  static String getBaseUrl() => 'https://api.backendflow.io/v1';
  static Map<String, String> headers = {};
  static EmailNuevoCorreoCall emailNuevoCorreoCall = EmailNuevoCorreoCall();
}

class EmailNuevoCorreoCall {
  Future<ApiCallResponse> call({
    String? to = '',
    String? subject = '',
    String? attachmentLink = '',
    String? attachmentName = '',
    String? senderName = '',
    String? contenido = '',
    String? senderEmail = '',
  }) async {
    final baseUrl = BFEmailNuevoCorreoGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "sk-bf-f17ef7cb-df43-4fcd-9b85-23370f51113d": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'emailNuevoCorreo',
      apiUrl:
          '$baseUrl/email?templateId=E82kg2aW53rTYWmdkvt7&to=$to&subject=$subject&attachmentLink=$attachmentLink&attachmentName=$attachmentName& sender_name =$senderName& contenido =$contenido& sender_email =$senderEmail',
      callType: ApiCallType.POST,
      headers: {},
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

/// End BF - emailNuevoCorreo Group Code

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
