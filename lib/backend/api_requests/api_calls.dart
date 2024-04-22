import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Authen Group Code

class AuthenGroup {
  static String baseUrl = 'https://symphony-api.pexnic.com';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  static LoginCall loginCall = LoginCall();
  static RefreshTokenCall refreshTokenCall = RefreshTokenCall();
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: '${AuthenGroup.baseUrl}/auth/login',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
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

class RefreshTokenCall {
  Future<ApiCallResponse> call({
    String? refreshToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "refresh_token": "$refreshToken",
  "mode": "json"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'RefreshToken',
      apiUrl: '${AuthenGroup.baseUrl}/auth/refresh',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
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

/// End Authen Group Code

/// Start GroupTemplate Group Code

class GroupTemplateGroup {
  static String baseUrl = 'https://symphony-api.pexnic.com';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
}

/// End GroupTemplate Group Code

/// Start CustomerOrder Group Code

class CustomerOrderGroup {
  static String baseUrl = 'https://symphony-api.pexnic.com';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer [accessToken]',
  };
  static CustomerOrderCreateDraftCall customerOrderCreateDraftCall =
      CustomerOrderCreateDraftCall();
  static CustomerOrderCreatePublishedCall customerOrderCreatePublishedCall =
      CustomerOrderCreatePublishedCall();
  static UpdatePublishedCustomerOrderCall updatePublishedCustomerOrderCall =
      UpdatePublishedCustomerOrderCall();
  static CustomerOrderUpdateCall customerOrderUpdateCall =
      CustomerOrderUpdateCall();
}

class CustomerOrderCreateDraftCall {
  Future<ApiCallResponse> call({
    dynamic requestDataJson,
    String? accessToken = '',
  }) async {
    final requestData = _serializeJson(requestDataJson);
    final ffApiRequestBody = requestData;
    return ApiManager.instance.makeApiCall(
      callName: 'CustomerOrderCreateDraft',
      apiUrl:
          '${CustomerOrderGroup.baseUrl}/flows/trigger/7e26a0c7-b134-434a-b9f2-28c1fcb8c62f',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
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

class CustomerOrderCreatePublishedCall {
  Future<ApiCallResponse> call({
    dynamic requestDataJson,
    String? accessToken = '',
  }) async {
    final requestData = _serializeJson(requestDataJson);
    final ffApiRequestBody = requestData;
    return ApiManager.instance.makeApiCall(
      callName: 'CustomerOrderCreatePublished',
      apiUrl:
          '${CustomerOrderGroup.baseUrl}/flows/trigger/b04119ea-229b-4660-9f0d-f77e530004a8',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
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

class UpdatePublishedCustomerOrderCall {
  Future<ApiCallResponse> call({
    String? customerOrderId = '',
    String? accessToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "status": "published",
  "customer_order_id": "$customerOrderId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UpdatePublishedCustomerOrder',
      apiUrl:
          '${CustomerOrderGroup.baseUrl}/flows/trigger/0c825f98-d20e-42b3-9f54-81b07123f01e',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
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

class CustomerOrderUpdateCall {
  Future<ApiCallResponse> call({
    dynamic requestDataJson,
    String? accessToken = '',
  }) async {
    final requestData = _serializeJson(requestDataJson);
    final ffApiRequestBody = requestData;
    return ApiManager.instance.makeApiCall(
      callName: 'CustomerOrderUpdate',
      apiUrl:
          '${CustomerOrderGroup.baseUrl}/flows/trigger/560749c4-4057-4f24-a56f-825c605420ab',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
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

/// End CustomerOrder Group Code

/// Start Purchase Group Code

class PurchaseGroup {
  static String baseUrl = 'https://symphony-api.pexnic.com';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer [accessToken]',
  };
  static VoucherListCall voucherListCall = VoucherListCall();
  static PurchaseListCall purchaseListCall = PurchaseListCall();
  static PurchaseListDetailCall purchaseListDetailCall =
      PurchaseListDetailCall();
}

class VoucherListCall {
  Future<ApiCallResponse> call({
    String? filter = '',
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'VoucherList',
      apiUrl: '${PurchaseGroup.baseUrl}/items/statistic_vouchers',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
      params: {
        'filter': filter,
        'fields[]':
            "id,date_end,voucher_template_id.id, voucher_template_id.title, agent_id.id, agent_id.name, total_voucher, total_ordered, total_remain, total_price, avg_price, total_final_price, avg_final_price,voucher_template_id.avatar,voucher_template_id.code,voucher_template_id.status,provider_id.id, provider_id.name,voucher_template_id.date_end,voucher_template_id.price,voucher_template_id.description,voucher_template_id.note",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PurchaseListCall {
  Future<ApiCallResponse> call({
    String? filter = '',
    int? limit,
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'PurchaseList',
      apiUrl: '${PurchaseGroup.baseUrl}/items/agent_orders',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
      params: {
        'filter': filter,
        'limit': limit,
        'meta': "total_count,filter_count",
        'fields':
            "id,status,code,total_voucher,total_order_detail,description,note,user_created.first_name,user_created.id,provider_id.id, provider_id.name,agent_id.id, agent_id.name,date_created,price,discount_money,tax_money,final_price",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PurchaseListDetailCall {
  Future<ApiCallResponse> call({
    String? orderId = '',
    String? headQuery =
        '{\"_and\":[{\"_and\":[{\"status\": {\"_neq\":\"archived\"}}, {\"agent_order_id\":{\"_eq\":',
    String? footerQuery = '}}]},{\"status\":{\"_neq\":\"archived\"}}]}',
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'PurchaseListDetail',
      apiUrl: '${PurchaseGroup.baseUrl}/items/agent_order_details',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
      params: {
        'filter': "$headQuery\"$orderId\"$footerQuery",
        'fields':
            "id, user_created.id,user_created.first_name, voucher_template_id.id,voucher_template_id.title,voucher_template_id.avatar,voucher_template_id.code,voucher_template_id.description,total_voucher, note, price, date_created,voucher_template_id.price,discount_money,discount_value,discount_type",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Purchase Group Code

/// Start Voucher Group Code

class VoucherGroup {
  static String baseUrl = 'https://symphony-api.pexnic.com';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer [accessToken]',
  };
  static GetItemCall getItemCall = GetItemCall();
  static GetListCall getListCall = GetListCall();
  static ConsumeVoucherCall consumeVoucherCall = ConsumeVoucherCall();
  static VoucherAgentPricesCall voucherAgentPricesCall =
      VoucherAgentPricesCall();
  static VoucherRetailPriceCall voucherRetailPriceCall =
      VoucherRetailPriceCall();
  static UpdatePirceRetailCall updatePirceRetailCall = UpdatePirceRetailCall();
}

class GetItemCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetItem',
      apiUrl: '${VoucherGroup.baseUrl}/items/vouchers/$id',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
      params: {
        'fields':
            "id,status,sort,date_created,date_updated,date_start,date_end,date_checkin,code,price,title,qr_code_image_url,description,note,user_created.id,user_created.first_name,user_updated.id,user_updated.first_name,agent_id.id,agent_id.name,provider_id.id,provider_id.name,customer_id.id,customer_id.name,customer_id.phone,customer_order_detail_id.id,agent_order_id.id,agent_order_id.code,customer_order_id.id,customer_order_id.code,voucher_template_id.id,voucher_template_id.title,voucher_template_id.code,voucher_template_id.date_start,voucher_template_id.date_end,voucher_template_id.note,version",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetListCall {
  Future<ApiCallResponse> call({
    String? filter = '{}',
    String? limit = '',
    String? offset = '',
    String? sort = '-date_created',
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetList',
      apiUrl: '${VoucherGroup.baseUrl}/items/vouchers',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
      params: {
        'filter': filter,
        'fields':
            "id,status,sort,date_created,date_updated,date_start,date_end,date_checkin,code,price,title,qr_code_image_url,description,note,user_created.id,user_created.first_name,user_updated.id,user_updated.first_name,agent_id.id,agent_id.name,provider_id.id,provider_id.name,customer_id.id,customer_id.name,customer_id.phone,customer_order_detail_id.id,agent_order_id.id,agent_order_id.code,customer_order_id.id,customer_order_id.code,voucher_template_id.id,voucher_template_id.title,voucher_template_id.code,voucher_template_id.date_start,voucher_template_id.date_end,voucher_template_id.note,version",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ConsumeVoucherCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? accessToken = '',
  }) async {
    const ffApiRequestBody = '''
{
  "status": "checkin"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ConsumeVoucher',
      apiUrl: '${VoucherGroup.baseUrl}/items/vouchers/$id',
      callType: ApiCallType.PATCH,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
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

class VoucherAgentPricesCall {
  Future<ApiCallResponse> call({
    String? filter = '',
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'VoucherAgentPrices',
      apiUrl: '${VoucherGroup.baseUrl}/items/voucher_agent_prices',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
      params: {
        'fields':
            "id,status,date_created,date_updated,user_created.id,user_created.first_name,user_updated.id,user_updated.first_name,voucher_template_id.id,voucher_template_id.title,agent_id.id,agent_id.name,retail_price,voucher_template_id.code,voucher_template_id.avatar,voucher_template_id.retail_price",
        'filter': filter,
        'meta': "total_count,filter_count",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class VoucherRetailPriceCall {
  Future<ApiCallResponse> call({
    String? voucherId = '',
    String? agentId = '',
    int? retailPrice,
    String? accessToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "status": "published",
  "agent_id": "$agentId",
  "voucher_template_id": "$voucherId",
  "retail_price": $retailPrice
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'VoucherRetailPrice',
      apiUrl: '${VoucherGroup.baseUrl}/items/voucher_agent_prices',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
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

class UpdatePirceRetailCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? retailPrice = '',
    String? accessToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "status": "published",
  "retail_price": "$retailPrice"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UpdatePirceRetail',
      apiUrl: '${VoucherGroup.baseUrl}/items/voucher_agent_prices/$id',
      callType: ApiCallType.PATCH,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
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

/// End Voucher Group Code

/// Start Files Group Code

class FilesGroup {
  static String baseUrl = 'https://symphony-api.pexnic.com';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer [accessToken]',
  };
  static UploadFileCall uploadFileCall = UploadFileCall();
}

class UploadFileCall {
  Future<ApiCallResponse> call({
    FFUploadedFile? file,
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'UploadFile',
      apiUrl: '${FilesGroup.baseUrl}/files',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
      params: {
        'file': file,
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

/// End Files Group Code

/// Start User Group Code

class UserGroup {
  static String baseUrl = 'https://symphony-api.pexnic.com';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer [accessToken]',
  };
  static UserMeCall userMeCall = UserMeCall();
  static ChangePasswordCall changePasswordCall = ChangePasswordCall();
}

class UserMeCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'UserMe',
      apiUrl: '${UserGroup.baseUrl}/users/me',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
      params: {
        'fields':
            "id,first_name,last_name,email,title,description,avatar,role.id,role.id,role.name,provider_id.id,provider_id.name,agent_id.id,agent_id.name,role.id,role.name",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ChangePasswordCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? oldPassword = '',
    String? password = '',
    String? accessToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email",
  "old_password": "$oldPassword",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ChangePassword',
      apiUrl:
          '${UserGroup.baseUrl}/flows/trigger/8c3c317e-ca3c-4cb7-8920-a3d64d219bd9',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
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

/// End User Group Code

/// Start Customers Group Code

class CustomersGroup {
  static String baseUrl = 'https://symphony-api.pexnic.com';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer [accessToken]',
  };
  static CustomersListCall customersListCall = CustomersListCall();
  static CustomersUpdateCall customersUpdateCall = CustomersUpdateCall();
  static CustomersCreateCall customersCreateCall = CustomersCreateCall();
  static CustomersDetailCall customersDetailCall = CustomersDetailCall();
  static CustomerOrdersListCall customerOrdersListCall =
      CustomerOrdersListCall();
  static CustomerOrderDetailsCall customerOrderDetailsCall =
      CustomerOrderDetailsCall();
  static CreateCustomerOrderCall createCustomerOrderCall =
      CreateCustomerOrderCall();
  static CreateCustomerOrderDetailsCall createCustomerOrderDetailsCall =
      CreateCustomerOrderDetailsCall();
  static CustomerOrderDetailCall customerOrderDetailCall =
      CustomerOrderDetailCall();
  static UpdateStatusCustomerOrderCall updateStatusCustomerOrderCall =
      UpdateStatusCustomerOrderCall();
  static UpdateCustomerOrderCall updateCustomerOrderCall =
      UpdateCustomerOrderCall();
  static UpdateCustomerOrderDetailsCall updateCustomerOrderDetailsCall =
      UpdateCustomerOrderDetailsCall();
  static UpdateStatusOrderDetailsCall updateStatusOrderDetailsCall =
      UpdateStatusOrderDetailsCall();
}

class CustomersListCall {
  Future<ApiCallResponse> call({
    String? filter = '',
    int? page,
    int? limit,
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'CustomersList',
      apiUrl: '${CustomersGroup.baseUrl}/items/customers',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
      params: {
        'filter': filter,
        'meta': "total_count,filter_count",
        'page': page,
        'limit': limit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CustomersUpdateCall {
  Future<ApiCallResponse> call({
    String? customerId = '',
    dynamic requestDataJson,
    String? accessToken = '',
  }) async {
    final requestData = _serializeJson(requestDataJson);
    final ffApiRequestBody = requestData;
    return ApiManager.instance.makeApiCall(
      callName: 'CustomersUpdate',
      apiUrl: '${CustomersGroup.baseUrl}/items/customers/$customerId',
      callType: ApiCallType.PATCH,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
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

class CustomersCreateCall {
  Future<ApiCallResponse> call({
    dynamic requestDataJson,
    String? accessToken = '',
  }) async {
    final requestData = _serializeJson(requestDataJson);
    final ffApiRequestBody = requestData;
    return ApiManager.instance.makeApiCall(
      callName: 'CustomersCreate',
      apiUrl: '${CustomersGroup.baseUrl}/items/customers',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
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

class CustomersDetailCall {
  Future<ApiCallResponse> call({
    String? customerId = '',
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'CustomersDetail',
      apiUrl: '${CustomersGroup.baseUrl}/items/customers/$customerId',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
      params: {
        'customerId': customerId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CustomerOrdersListCall {
  Future<ApiCallResponse> call({
    String? filter = '',
    int? offset,
    int? limit,
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'CustomerOrdersList',
      apiUrl: '${CustomersGroup.baseUrl}/items/customer_orders',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
      params: {
        'filter': filter,
        'offset': offset,
        'limit': limit,
        'meta': "total_count,filter_count",
        'fields':
            "id,status,user_created.id,user_created.first_name,date_created,total_voucher,agent_id.id,agent_id.name,customer_id.id,customer_id.name,customer_id.phone,description,code,voucher_template_id.id,voucher_template_id.title,customer_id.email,discount_type,discount_money,discount_value",
        'sort': "-date_created",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CustomerOrderDetailsCall {
  Future<ApiCallResponse> call({
    String? filter = '',
    int? offset,
    int? limit,
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'CustomerOrderDetails',
      apiUrl: '${CustomersGroup.baseUrl}/items/customer_order_details',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
      params: {
        'filter': filter,
        'offset': offset,
        'limit': limit,
        'meta': "total_count,filter_count",
        'fields':
            "id, status,total_voucher,date_created,customer_order_id,voucher_template_id.id,voucher_template_id.title,voucher_template_id.price,code,voucher_template_id.code,voucher_template_id.avatar,retail_price,discount_value,discount_money,discount_type,voucher_template_id.retail_price",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateCustomerOrderCall {
  Future<ApiCallResponse> call({
    String? agentId = '',
    String? customerId = '',
    int? discountMoney,
    String? status = '',
    String? discountType = '',
    int? discountValue,
    String? accessToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "status": "$status",
  "agent_id": {
    "id": "$agentId"
  },
  "customer_id": {
    "id": "$customerId"
  },
  "discount_money": $discountMoney,
  "discount_type": "$discountType",
  "discount_value": $discountValue
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreateCustomerOrder',
      apiUrl: '${CustomersGroup.baseUrl}/items/customer_orders',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
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

class CreateCustomerOrderDetailsCall {
  Future<ApiCallResponse> call({
    dynamic requestDataJson,
    String? accessToken = '',
  }) async {
    final requestData = _serializeJson(requestDataJson, true);
    final ffApiRequestBody = requestData;
    return ApiManager.instance.makeApiCall(
      callName: 'CreateCustomerOrderDetails',
      apiUrl: '${CustomersGroup.baseUrl}/items/customer_order_details',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
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

class CustomerOrderDetailCall {
  Future<ApiCallResponse> call({
    String? customerOderId = '',
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'CustomerOrderDetail',
      apiUrl:
          '${CustomersGroup.baseUrl}/items/customer_orders/$customerOderId',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
      params: {
        'fields':
            "id,status,user_created.id,user_created.first_name,date_created,total_voucher,total_order_detail,discount_value,discount_type,discount_money,tax_money,final_price,price,tax,code",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateStatusCustomerOrderCall {
  Future<ApiCallResponse> call({
    String? status = '',
    String? customerOrdersId = '',
    String? accessToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "status": "$status"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateStatusCustomerOrder',
      apiUrl:
          '${CustomersGroup.baseUrl}/items/customer_orders/$customerOrdersId',
      callType: ApiCallType.PATCH,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
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

class UpdateCustomerOrderCall {
  Future<ApiCallResponse> call({
    String? orderId = '',
    dynamic orderJson,
    String? accessToken = '',
  }) async {
    final order = _serializeJson(orderJson);
    final ffApiRequestBody = order;
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateCustomerOrder',
      apiUrl: '${CustomersGroup.baseUrl}/items/customer_orders/$orderId',
      callType: ApiCallType.PATCH,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
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

class UpdateCustomerOrderDetailsCall {
  Future<ApiCallResponse> call({
    dynamic orderDetailJson,
    String? accessToken = '',
  }) async {
    final orderDetail = _serializeJson(orderDetailJson, true);
    final ffApiRequestBody = orderDetail;
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateCustomerOrderDetails',
      apiUrl: '${CustomersGroup.baseUrl}/items/customer_order_details',
      callType: ApiCallType.PATCH,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
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

class UpdateStatusOrderDetailsCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? status = '',
    String? accessToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "status": "$status"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateStatusOrderDetails',
      apiUrl: '${CustomersGroup.baseUrl}/items/customer_order_details/$id',
      callType: ApiCallType.PATCH,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
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

/// End Customers Group Code

/// Start Order Group Code

class OrderGroup {
  static String baseUrl = 'https://symphony-api.pexnic.com';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer [accessToken]',
  };
  static OrderListCall orderListCall = OrderListCall();
  static OrderCreateCall orderCreateCall = OrderCreateCall();
  static CreateOrderDetailsCall createOrderDetailsCall =
      CreateOrderDetailsCall();
  static UpdateAgentOrderCall updateAgentOrderCall = UpdateAgentOrderCall();
  static UpdateAgentOrderDetailsCall updateAgentOrderDetailsCall =
      UpdateAgentOrderDetailsCall();
  static UpdateStatusAgentOrderDetailsCall updateStatusAgentOrderDetailsCall =
      UpdateStatusAgentOrderDetailsCall();
}

class OrderListCall {
  Future<ApiCallResponse> call({
    String? filter = '',
    int? offset,
    int? limit,
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'OrderList',
      apiUrl: '${OrderGroup.baseUrl}/items/agent_orders',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
      params: {
        'filter': filter,
        'offset': offset,
        'limit': limit,
        'meta': "total_count,filter_count",
        'sort': "-date_created",
        'fields':
            "id,status,code,total_voucher,total_order_detail,description,user_created.first_name,user_created.id,provider_id.id, provider_id.name,agent_id.id, agent_id.name,note,discount_money,note",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class OrderCreateCall {
  Future<ApiCallResponse> call({
    dynamic orderJson,
    String? accessToken = '',
  }) async {
    final order = _serializeJson(orderJson);
    final ffApiRequestBody = order;
    return ApiManager.instance.makeApiCall(
      callName: 'OrderCreate',
      apiUrl: '${OrderGroup.baseUrl}/items/agent_orders',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
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

class CreateOrderDetailsCall {
  Future<ApiCallResponse> call({
    dynamic detailsJson,
    String? accessToken = '',
  }) async {
    final details = _serializeJson(detailsJson);
    final ffApiRequestBody = details;
    return ApiManager.instance.makeApiCall(
      callName: 'CreateOrderDetails',
      apiUrl: '${OrderGroup.baseUrl}/items/agent_order_details',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
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

class UpdateAgentOrderCall {
  Future<ApiCallResponse> call({
    dynamic orderJson,
    String? orderId = '',
    String? accessToken = '',
  }) async {
    final order = _serializeJson(orderJson);
    final ffApiRequestBody = order;
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateAgentOrder',
      apiUrl: '${OrderGroup.baseUrl}/items/agent_orders/$orderId',
      callType: ApiCallType.PATCH,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
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

class UpdateAgentOrderDetailsCall {
  Future<ApiCallResponse> call({
    dynamic orderDetailJson,
    String? accessToken = '',
  }) async {
    final orderDetail = _serializeJson(orderDetailJson);
    final ffApiRequestBody = orderDetail;
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateAgentOrderDetails',
      apiUrl: '${OrderGroup.baseUrl}/items/agent_order_details',
      callType: ApiCallType.PATCH,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
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

class UpdateStatusAgentOrderDetailsCall {
  Future<ApiCallResponse> call({
    String? id = '',
    dynamic statusJson,
    String? accessToken = '',
  }) async {
    final status = _serializeJson(statusJson);
    final ffApiRequestBody = '''
{
  "status": "$status"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateStatusAgentOrderDetails',
      apiUrl: '${OrderGroup.baseUrl}/items/agent_order_details/$id',
      callType: ApiCallType.PATCH,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
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

/// End Order Group Code

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
