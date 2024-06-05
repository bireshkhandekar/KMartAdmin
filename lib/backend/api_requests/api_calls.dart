import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start KMartApi Group Code

class KMartApiGroup {
  static String getBaseUrl() => 'http://api.rajastechnologies.com:5001';
  static Map<String, String> headers = {
    'Access-Control-Allow-Origin': '*,',
    'Access-Control-Allow-Methods': 'POST, GET, OPTIONS, PUT, DELETE, HEAD',
  };
  static GetItemsCall getItemsCall = GetItemsCall();
  static AddProductCall addProductCall = AddProductCall();
  static GetCountsCall getCountsCall = GetCountsCall();
  static GetAllUsersCall getAllUsersCall = GetAllUsersCall();
  static UserUpdateCall userUpdateCall = UserUpdateCall();
  static UserDisableByUserIdCall userDisableByUserIdCall =
      UserDisableByUserIdCall();
  static ItemDisableByItemIdCall itemDisableByItemIdCall =
      ItemDisableByItemIdCall();
  static AddCategoryCall addCategoryCall = AddCategoryCall();
  static GetCategoriesCall getCategoriesCall = GetCategoriesCall();
  static GetAllOrdersCall getAllOrdersCall = GetAllOrdersCall();
  static RecentOrdersCall recentOrdersCall = RecentOrdersCall();
  static GetOrdersByOneDayCall getOrdersByOneDayCall = GetOrdersByOneDayCall();
  static UpdateProductCall updateProductCall = UpdateProductCall();
  static GetOrdersByCustomDatesCall getOrdersByCustomDatesCall =
      GetOrdersByCustomDatesCall();
  static ReportSalesCall reportSalesCall = ReportSalesCall();
  static ReportProductCall reportProductCall = ReportProductCall();
  static ReportOrdersCall reportOrdersCall = ReportOrdersCall();
  static ReportSubscriptionCall reportSubscriptionCall =
      ReportSubscriptionCall();
  static GetOrderByOrderIdCall getOrderByOrderIdCall = GetOrderByOrderIdCall();
  static OrderUpdateCall orderUpdateCall = OrderUpdateCall();
}

class GetItemsCall {
  Future<ApiCallResponse> call({
    int? limit,
    int? pageno,
  }) async {
    final baseUrl = KMartApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getItems',
      apiUrl: '$baseUrl/items?limit=$limit&page=$pageno',
      callType: ApiCallType.GET,
      headers: {
        'Access-Control-Allow-Origin': '*,',
        'Access-Control-Allow-Methods': 'POST, GET, OPTIONS, PUT, DELETE, HEAD',
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
        r'''$.data''',
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
    String? token = '',
  }) async {
    final baseUrl = KMartApiGroup.getBaseUrl();

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
      apiUrl: '$baseUrl/item/create',
      callType: ApiCallType.POST,
      headers: {
        'Access-Control-Allow-Origin': '*,',
        'Access-Control-Allow-Methods': 'POST, GET, OPTIONS, PUT, DELETE, HEAD',
        'Authorization': 'Bearer $token',
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

class GetCountsCall {
  Future<ApiCallResponse> call({
    String? type = '',
  }) async {
    final baseUrl = KMartApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get counts',
      apiUrl: '$baseUrl/count/records?count=$type',
      callType: ApiCallType.GET,
      headers: {
        'Access-Control-Allow-Origin': '*,',
        'Access-Control-Allow-Methods': 'POST, GET, OPTIONS, PUT, DELETE, HEAD',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllUsersCall {
  Future<ApiCallResponse> call({
    int? limit,
    int? pageno,
  }) async {
    final baseUrl = KMartApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get All Users',
      apiUrl: '$baseUrl/user/all?limit=$limit&page=$pageno',
      callType: ApiCallType.GET,
      headers: {
        'Access-Control-Allow-Origin': '*,',
        'Access-Control-Allow-Methods': 'POST, GET, OPTIONS, PUT, DELETE, HEAD',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? users(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class UserUpdateCall {
  Future<ApiCallResponse> call({
    int? userId,
    String? name = '',
    String? moblieNumber = '',
    String? houseno = '',
    String? landmark = '',
    String? lineno = '',
    String? city = '',
    int? pincode,
    String? state = '',
    String? status = '',
  }) async {
    final baseUrl = KMartApiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "username": "$name",
  "address": {
    "houseno": "$houseno",
    "lineno": "$lineno",
    "landmark": "$landmark"
  },
  "city": "$city",
  "state": "$state",
  "pincode": $pincode,
  "status": "$status"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'user Update ',
      apiUrl: '$baseUrl/user/update/$userId',
      callType: ApiCallType.PUT,
      headers: {
        'Access-Control-Allow-Origin': '*,',
        'Access-Control-Allow-Methods': 'POST, GET, OPTIONS, PUT, DELETE, HEAD',
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

class UserDisableByUserIdCall {
  Future<ApiCallResponse> call({
    int? userId,
    String? token = '',
  }) async {
    final baseUrl = KMartApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'user disable by user id',
      apiUrl: '$baseUrl/user/disable/$userId',
      callType: ApiCallType.PATCH,
      headers: {
        'Access-Control-Allow-Origin': '*,',
        'Access-Control-Allow-Methods': 'POST, GET, OPTIONS, PUT, DELETE, HEAD',
        'Authorization': 'Bearer $token',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ItemDisableByItemIdCall {
  Future<ApiCallResponse> call({
    int? itemId,
  }) async {
    final baseUrl = KMartApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'item disable by item id',
      apiUrl: '$baseUrl/item_disable/$itemId',
      callType: ApiCallType.PUT,
      headers: {
        'Access-Control-Allow-Origin': '*,',
        'Access-Control-Allow-Methods': 'POST, GET, OPTIONS, PUT, DELETE, HEAD',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class AddCategoryCall {
  Future<ApiCallResponse> call({
    String? name = '',
  }) async {
    final baseUrl = KMartApiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": "$name"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'add category',
      apiUrl: '$baseUrl/category',
      callType: ApiCallType.POST,
      headers: {
        'Access-Control-Allow-Origin': '*,',
        'Access-Control-Allow-Methods': 'POST, GET, OPTIONS, PUT, DELETE, HEAD',
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

class GetCategoriesCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = KMartApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get categories',
      apiUrl: '$baseUrl/categories',
      callType: ApiCallType.GET,
      headers: {
        'Access-Control-Allow-Origin': '*,',
        'Access-Control-Allow-Methods': 'POST, GET, OPTIONS, PUT, DELETE, HEAD',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? categories(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class GetAllOrdersCall {
  Future<ApiCallResponse> call({
    String? startDate = '',
    String? endDate = '',
    String? orderType = '',
    String? orderStatus = 'pending',
    int? pageNo,
    int? pagrLimit,
  }) async {
    final baseUrl = KMartApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get all orders',
      apiUrl:
          '$baseUrl/orders?page=$pageNo&limit=$pagrLimit&start_date=$startDate&end_date=$endDate&status=$orderStatus',
      callType: ApiCallType.GET,
      headers: {
        'Access-Control-Allow-Origin': '*,',
        'Access-Control-Allow-Methods': 'POST, GET, OPTIONS, PUT, DELETE, HEAD',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? orders(dynamic response) => getJsonField(
        response,
        r'''$.orders''',
        true,
      ) as List?;
}

class RecentOrdersCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = KMartApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'recent Orders ',
      apiUrl: '$baseUrl/admin/orders',
      callType: ApiCallType.GET,
      headers: {
        'Access-Control-Allow-Origin': '*,',
        'Access-Control-Allow-Methods': 'POST, GET, OPTIONS, PUT, DELETE, HEAD',
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetOrdersByOneDayCall {
  Future<ApiCallResponse> call({
    String? date = '',
  }) async {
    final baseUrl = KMartApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get orders by one day',
      apiUrl: '$baseUrl/order/today?date=$date',
      callType: ApiCallType.GET,
      headers: {
        'Access-Control-Allow-Origin': '*,',
        'Access-Control-Allow-Methods': 'POST, GET, OPTIONS, PUT, DELETE, HEAD',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? orders(dynamic response) => getJsonField(
        response,
        r'''$.orders''',
        true,
      ) as List?;
}

class UpdateProductCall {
  Future<ApiCallResponse> call({
    String? itemName = '',
    String? description = '',
    String? weight = '',
    double? mrp,
    double? discountAmount,
    int? categoryId,
    String? isActive = '',
    String? image = '',
    int? itemId,
  }) async {
    final baseUrl = KMartApiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "category_id": $categoryId,
  "description": "$description",
  "discount_amount": $discountAmount,
  "image": "$image",
  "is_active": "$isActive",
  "mrp": $mrp,
  "name": "$itemName",
  "weight": "$weight"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'update Product',
      apiUrl: '$baseUrl/item/$itemId',
      callType: ApiCallType.PUT,
      headers: {
        'Access-Control-Allow-Origin': '*,',
        'Access-Control-Allow-Methods': 'POST, GET, OPTIONS, PUT, DELETE, HEAD',
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

class GetOrdersByCustomDatesCall {
  Future<ApiCallResponse> call({
    String? startDate = '',
    String? endDate = '',
  }) async {
    final baseUrl = KMartApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get orders by custom dates',
      apiUrl:
          '$baseUrl/orders_by_dates?start_date=$startDate&end_date=$endDate',
      callType: ApiCallType.GET,
      headers: {
        'Access-Control-Allow-Origin': '*,',
        'Access-Control-Allow-Methods': 'POST, GET, OPTIONS, PUT, DELETE, HEAD',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? orders(dynamic response) => getJsonField(
        response,
        r'''$.orders''',
        true,
      ) as List?;
}

class ReportSalesCall {
  Future<ApiCallResponse> call({
    String? startDate = '',
    String? endDate = '',
    int? pageNo,
    int? limit,
  }) async {
    final baseUrl = KMartApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'report sales',
      apiUrl:
          '$baseUrl/reports/sales?limit=$limit&page=$pageNo&start_date=$startDate&end_date=$endDate',
      callType: ApiCallType.GET,
      headers: {
        'Access-Control-Allow-Origin': '*,',
        'Access-Control-Allow-Methods': 'POST, GET, OPTIONS, PUT, DELETE, HEAD',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class ReportProductCall {
  Future<ApiCallResponse> call({
    int? limit,
    int? pageNo,
  }) async {
    final baseUrl = KMartApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'report product',
      apiUrl: '$baseUrl/reports/products?limit=$limit&page=$pageNo',
      callType: ApiCallType.GET,
      headers: {
        'Access-Control-Allow-Origin': '*,',
        'Access-Control-Allow-Methods': 'POST, GET, OPTIONS, PUT, DELETE, HEAD',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? product(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class ReportOrdersCall {
  Future<ApiCallResponse> call({
    int? limit,
    int? pageNo,
    String? startDate = '',
    String? endDate = '',
  }) async {
    final baseUrl = KMartApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'report Orders',
      apiUrl:
          '$baseUrl/orders?limit=$limit&page=$pageNo&start_date=$startDate&end_date=$endDate',
      callType: ApiCallType.GET,
      headers: {
        'Access-Control-Allow-Origin': '*,',
        'Access-Control-Allow-Methods': 'POST, GET, OPTIONS, PUT, DELETE, HEAD',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? orders(dynamic response) => getJsonField(
        response,
        r'''$.orders''',
        true,
      ) as List?;
}

class ReportSubscriptionCall {
  Future<ApiCallResponse> call({
    int? limit,
    int? pageNo,
    String? startDate = '',
    String? endDate = '',
  }) async {
    final baseUrl = KMartApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'report Subscription',
      apiUrl:
          '$baseUrl/reports/subscriptions?limit=$limit&page=$pageNo&start_date=$startDate&end_date=$endDate',
      callType: ApiCallType.GET,
      headers: {
        'Access-Control-Allow-Origin': '*,',
        'Access-Control-Allow-Methods': 'POST, GET, OPTIONS, PUT, DELETE, HEAD',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? sub(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<String>? startDate(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].start_date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetOrderByOrderIdCall {
  Future<ApiCallResponse> call({
    String? orderId = '',
  }) async {
    final baseUrl = KMartApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get order by orderId',
      apiUrl: '$baseUrl/order/$orderId',
      callType: ApiCallType.GET,
      headers: {
        'Access-Control-Allow-Origin': '*,',
        'Access-Control-Allow-Methods': 'POST, GET, OPTIONS, PUT, DELETE, HEAD',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class OrderUpdateCall {
  Future<ApiCallResponse> call({
    String? orderid = '',
    String? orderStatus = '',
    String? paymentStatus = '',
  }) async {
    final baseUrl = KMartApiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "order_status": "$orderStatus",
  "payment_status": "$paymentStatus"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'order Update',
      apiUrl: '$baseUrl/order/$orderid',
      callType: ApiCallType.PUT,
      headers: {
        'Access-Control-Allow-Origin': '*,',
        'Access-Control-Allow-Methods': 'POST, GET, OPTIONS, PUT, DELETE, HEAD',
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
