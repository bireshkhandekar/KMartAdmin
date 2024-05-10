import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start KMartApi Group Code

class KMartApiGroup {
  static String baseUrl = 'http://api.rajastechnologies.com:5001';
  static Map<String, String> headers = {
    'accept': 'application/json',
    'Access-Control-Allow-Origin': '*',
    'Access-Control-Allow-Methods': 'POST, GET, OPTIONS, PUT, DELETE, HEAD',
    'Access-Control-Allow-Headers': 'Origin, Content-Type, X-Auth-Token',
  };
  static GetProductsCall getProductsCall = GetProductsCall();
  static GetItemsCall getItemsCall = GetItemsCall();
  static AddProductCall addProductCall = AddProductCall();
}

class GetProductsCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getProducts',
      apiUrl: '${KMartApiGroup.baseUrl}/items',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'Access-Control-Allow-Origin': '*',
        'Access-Control-Allow-Methods': 'POST, GET, OPTIONS, PUT, DELETE, HEAD',
        'Access-Control-Allow-Headers': 'Origin, Content-Type, X-Auth-Token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? allitems(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class GetItemsCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getItems',
      apiUrl: '${KMartApiGroup.baseUrl}/items',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'Access-Control-Allow-Origin': '*',
        'Access-Control-Allow-Methods': 'POST, GET, OPTIONS, PUT, DELETE, HEAD',
        'Access-Control-Allow-Headers': 'Origin, Content-Type, X-Auth-Token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? items(dynamic response) => getJsonField(
        response,
        r'''$[:]''',
        true,
      ) as List?;
}

class AddProductCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? description = '',
    String? weight = '',
    int? categoryId,
    double? discountAmount,
    double? mrp,
    String? image = '',
  }) async {
    final ffApiRequestBody = '''
{
  "name": "$name",
  "description": "$description",
  "weight": "$weight",
  "category_id": $categoryId,
  "discount_amount": $discountAmount,
  "image": "$image",
  "mrp": $mrp
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add Product',
      apiUrl: '${KMartApiGroup.baseUrl}/item',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'Access-Control-Allow-Origin': '*',
        'Access-Control-Allow-Methods': 'POST, GET, OPTIONS, PUT, DELETE, HEAD',
        'Access-Control-Allow-Headers': 'Origin, Content-Type, X-Auth-Token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End KMartApi Group Code

class UploadimgCall {
  static Future<ApiCallResponse> call({
    String? key = '',
    FFUploadedFile? image,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'uploadimg',
      apiUrl: 'https://api.imgbb.com/1/upload',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'key': key,
        'image': image,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ProductCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'product',
      apiUrl: 'http://api.rajastechnologies.com:5001/items',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? product(dynamic response) => getJsonField(
        response,
        r'''$[:]''',
        true,
      ) as List?;
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
