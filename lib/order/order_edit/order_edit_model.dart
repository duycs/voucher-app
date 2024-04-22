import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/customer_list_search_widget.dart';
import '/components/order_discount_widget.dart';
import '/components/voucher_list_search_edit_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'order_edit_widget.dart' show OrderEditWidget;
import 'package:flutter/material.dart';

class OrderEditModel extends FlutterFlowModel<OrderEditWidget> {
  ///  Local state fields for this page.

  OrderTableStruct? orderDetail;
  void updateOrderDetailStruct(Function(OrderTableStruct) updateFn) =>
      updateFn(orderDetail ??= OrderTableStruct());

  CustomerOrderDetailsUpdateStruct? orderListVoucher;
  void updateOrderListVoucherStruct(
          Function(CustomerOrderDetailsUpdateStruct) updateFn) =>
      updateFn(orderListVoucher ??= CustomerOrderDetailsUpdateStruct());

  CustomerOrderStruct? customerDetail;
  void updateCustomerDetailStruct(Function(CustomerOrderStruct) updateFn) =>
      updateFn(customerDetail ??= CustomerOrderStruct());

  bool isload = false;

  dynamic filterSearch;

  List<DetailItemsStruct> detailItems = [];
  void addToDetailItems(DetailItemsStruct item) => detailItems.add(item);
  void removeFromDetailItems(DetailItemsStruct item) =>
      detailItems.remove(item);
  void removeAtIndexFromDetailItems(int index) => detailItems.removeAt(index);
  void insertAtIndexInDetailItems(int index, DetailItemsStruct item) =>
      detailItems.insert(index, item);
  void updateDetailItemsAtIndex(
          int index, Function(DetailItemsStruct) updateFn) =>
      detailItems[index] = updateFn(detailItems[index]);

  OrderEditRequestStruct? orderEditRequest;
  void updateOrderEditRequestStruct(
          Function(OrderEditRequestStruct) updateFn) =>
      updateFn(orderEditRequest ??= OrderEditRequestStruct());

  int? loop = 0;

  List<CustomerOrderDetailsUpdateStruct> orderDetailUpdates = [];
  void addToOrderDetailUpdates(CustomerOrderDetailsUpdateStruct item) =>
      orderDetailUpdates.add(item);
  void removeFromOrderDetailUpdates(CustomerOrderDetailsUpdateStruct item) =>
      orderDetailUpdates.remove(item);
  void removeAtIndexFromOrderDetailUpdates(int index) =>
      orderDetailUpdates.removeAt(index);
  void insertAtIndexInOrderDetailUpdates(
          int index, CustomerOrderDetailsUpdateStruct item) =>
      orderDetailUpdates.insert(index, item);
  void updateOrderDetailUpdatesAtIndex(
          int index, Function(CustomerOrderDetailsUpdateStruct) updateFn) =>
      orderDetailUpdates[index] = updateFn(orderDetailUpdates[index]);

  List<VoucherUpdateListDetailsStruct> orderDetailCreate = [];
  void addToOrderDetailCreate(VoucherUpdateListDetailsStruct item) =>
      orderDetailCreate.add(item);
  void removeFromOrderDetailCreate(VoucherUpdateListDetailsStruct item) =>
      orderDetailCreate.remove(item);
  void removeAtIndexFromOrderDetailCreate(int index) =>
      orderDetailCreate.removeAt(index);
  void insertAtIndexInOrderDetailCreate(
          int index, VoucherUpdateListDetailsStruct item) =>
      orderDetailCreate.insert(index, item);
  void updateOrderDetailCreateAtIndex(
          int index, Function(VoucherUpdateListDetailsStruct) updateFn) =>
      orderDetailCreate[index] = updateFn(orderDetailCreate[index]);

  List<String> deleteDetail = [];
  void addToDeleteDetail(String item) => deleteDetail.add(item);
  void removeFromDeleteDetail(String item) => deleteDetail.remove(item);
  void removeAtIndexFromDeleteDetail(int index) => deleteDetail.removeAt(index);
  void insertAtIndexInDeleteDetail(int index, String item) =>
      deleteDetail.insert(index, item);
  void updateDeleteDetailAtIndex(int index, Function(String) updateFn) =>
      deleteDetail[index] = updateFn(deleteDetail[index]);

  List<CustomerOrderDetailRequestStruct> detailRequest = [];
  void addToDetailRequest(CustomerOrderDetailRequestStruct item) =>
      detailRequest.add(item);
  void removeFromDetailRequest(CustomerOrderDetailRequestStruct item) =>
      detailRequest.remove(item);
  void removeAtIndexFromDetailRequest(int index) =>
      detailRequest.removeAt(index);
  void insertAtIndexInDetailRequest(
          int index, CustomerOrderDetailRequestStruct item) =>
      detailRequest.insert(index, item);
  void updateDetailRequestAtIndex(
          int index, Function(CustomerOrderDetailRequestStruct) updateFn) =>
      detailRequest[index] = updateFn(detailRequest[index]);

  CustomerOrderUpdateRequestStruct? orderRequest;
  void updateOrderRequestStruct(
          Function(CustomerOrderUpdateRequestStruct) updateFn) =>
      updateFn(orderRequest ??= CustomerOrderUpdateRequestStruct());

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (CustomerOrderDetails)] action in OrderEdit widget.
  ApiCallResponse? customerUpdateDetails;
  // Model for CustomerListSearch component.
  late CustomerListSearchModel customerListSearchModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for discountMoney widget.
  FocusNode? discountMoneyFocusNode;
  TextEditingController? discountMoneyTextController;
  String? Function(BuildContext, String?)? discountMoneyTextControllerValidator;
  // State field(s) for discountMoneyPercent widget.
  FocusNode? discountMoneyPercentFocusNode;
  TextEditingController? discountMoneyPercentTextController;
  String? Function(BuildContext, String?)?
      discountMoneyPercentTextControllerValidator;
  // Model for VoucherListSearchEdit component.
  late VoucherListSearchEditModel voucherListSearchEditModel;
  // Models for discountTM.
  late FlutterFlowDynamicModels<OrderDiscountModel> discountTMModels1;
  // Models for discountTM.
  late FlutterFlowDynamicModels<OrderDiscountModel> discountTMModels2;
  // Stores action output result for [Backend Call - API (UpdatePublishedCustomerOrder)] action in Button widget.
  ApiCallResponse? apiResultUpdatePublishedCustomerOrder;

  @override
  void initState(BuildContext context) {
    customerListSearchModel =
        createModel(context, () => CustomerListSearchModel());
    voucherListSearchEditModel =
        createModel(context, () => VoucherListSearchEditModel());
    discountTMModels1 = FlutterFlowDynamicModels(() => OrderDiscountModel());
    discountTMModels2 = FlutterFlowDynamicModels(() => OrderDiscountModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    customerListSearchModel.dispose();
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    discountMoneyFocusNode?.dispose();
    discountMoneyTextController?.dispose();

    discountMoneyPercentFocusNode?.dispose();
    discountMoneyPercentTextController?.dispose();

    voucherListSearchEditModel.dispose();
    discountTMModels1.dispose();
    discountTMModels2.dispose();
  }

  /// Action blocks.
  Future<bool?> apiCallDetail(BuildContext context) async {
    ApiCallResponse? apiCustomerUpdateDetails;

    apiCustomerUpdateDetails =
        await CustomersGroup.customerOrderDetailsCall.call(
      accessToken: FFAppState().accessToken,
      limit: 500,
      offset: 0,
      filter: functions.jsonToString(<String, List<dynamic>?>{
        '_and': filterSearch,
      }),
    );
    if ((apiCustomerUpdateDetails.succeeded ?? true)) {
      return true;
    } else {
      return false;
    }
  }

  Future callBackSetVoucher(
    BuildContext context, {
    CustomerOrderDetailStruct? value,
  }) async {
    if (!detailItems
        .map((e) => e.voucherTemplateId.id)
        .toList()
        .toList()
        .contains(value!.voucherTemplateId.id)) {
      addToDetailItems(DetailItemsStruct(
        voucherTemplateId: value.voucherTemplateId,
        totalVoucher: 0,
        discountType: 'percent',
        discountMoney: 0,
        discountValue: 0,
        status: 'pulished',
        id: null,
        retailPrice: value.retailPrice,
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Voucher đã có trong đơn hàng!',
            style: TextStyle(
              color: FlutterFlowTheme.of(context).primaryText,
            ),
          ),
          duration: const Duration(milliseconds: 4000),
          backgroundColor: FlutterFlowTheme.of(context).error,
        ),
      );
    }
  }

  Future<bool> editCustomerOrder(BuildContext context) async {
    ApiCallResponse? apiResultlac;

    orderEditRequest = OrderEditRequestStruct(
      customerId: customerDetail?.customerId,
      discountType: orderDetail?.discountType,
      discountMoney: orderDetail?.discountMoney,
      discountValue: orderDetail?.discountValue,
    );
    apiResultlac = await CustomersGroup.updateCustomerOrderCall.call(
      accessToken: FFAppState().accessToken,
      orderId: orderDetail?.id,
      orderJson: orderEditRequest?.toMap(),
    );
    if ((apiResultlac.succeeded ?? true)) {
      return true;
    }

    return false;
  }

  Future customerOrderUpdate(BuildContext context) async {
    ApiCallResponse? apiResultCustomerOrderUpdate;

    while (loop! < detailItems.length) {
      addToDetailRequest(CustomerOrderDetailRequestStruct(
        voucherTemplateId: detailItems[loop!].voucherTemplateId.id,
        totalVoucher: detailItems[loop!].totalVoucher,
        retailPrice: detailItems[loop!].retailPrice,
        discountType: detailItems[loop!].discountType,
        discountValue: detailItems[loop!].discountValue,
      ));
      loop = loop! + 1;
    }
    loop = 0;
    orderRequest = CustomerOrderUpdateRequestStruct(
      status: 'draft',
      customerId: customerDetail?.customerId.id,
      agentId: FFAppState().user.agentId.id,
      description: textController1.text,
      discountType: orderDetail?.discountType,
      discountValue: orderDetail?.discountValue,
      customerOrderId: orderDetail?.id,
      orderDetails: detailRequest,
    );
    apiResultCustomerOrderUpdate =
        await CustomerOrderGroup.customerOrderUpdateCall.call(
      accessToken: FFAppState().accessToken,
      requestDataJson: orderRequest?.toMap(),
    );
    if (!(apiResultCustomerOrderUpdate.succeeded ?? true)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Lỗi chỉnh sửa đơn hàng!',
            style: TextStyle(
              color: FlutterFlowTheme.of(context).primaryText,
            ),
          ),
          duration: const Duration(milliseconds: 4000),
          backgroundColor: FlutterFlowTheme.of(context).error,
        ),
      );
      return;
    }
  }
}
