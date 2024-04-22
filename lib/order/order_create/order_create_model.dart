import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/customer_list_search_widget.dart';
import '/components/order_discount_widget.dart';
import '/components/voucher_list_search_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'order_create_widget.dart' show OrderCreateWidget;
import 'package:flutter/material.dart';

class OrderCreateModel extends FlutterFlowModel<OrderCreateWidget> {
  ///  Local state fields for this page.

  CustomerStruct? customer;
  void updateCustomerStruct(Function(CustomerStruct) updateFn) =>
      updateFn(customer ??= CustomerStruct());

  List<VoucherAgentPricesStruct> dataVoucher = [];
  void addToDataVoucher(VoucherAgentPricesStruct item) => dataVoucher.add(item);
  void removeFromDataVoucher(VoucherAgentPricesStruct item) =>
      dataVoucher.remove(item);
  void removeAtIndexFromDataVoucher(int index) => dataVoucher.removeAt(index);
  void insertAtIndexInDataVoucher(int index, VoucherAgentPricesStruct item) =>
      dataVoucher.insert(index, item);
  void updateDataVoucherAtIndex(
          int index, Function(VoucherAgentPricesStruct) updateFn) =>
      dataVoucher[index] = updateFn(dataVoucher[index]);

  dynamic status;

  int? loop = 0;

  CustomerOrderRequestStruct? orderRequest;
  void updateOrderRequestStruct(
          Function(CustomerOrderRequestStruct) updateFn) =>
      updateFn(orderRequest ??= CustomerOrderRequestStruct());

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

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for CustomerListSearch component.
  late CustomerListSearchModel customerListSearchModel;
  // State field(s) for note widget.
  FocusNode? noteFocusNode;
  TextEditingController? noteTextController;
  String? Function(BuildContext, String?)? noteTextControllerValidator;
  // State field(s) for discountMoney widget.
  FocusNode? discountMoneyFocusNode;
  TextEditingController? discountMoneyTextController;
  String? Function(BuildContext, String?)? discountMoneyTextControllerValidator;
  // State field(s) for discountMoneyPercent widget.
  FocusNode? discountMoneyPercentFocusNode;
  TextEditingController? discountMoneyPercentTextController;
  String? Function(BuildContext, String?)?
      discountMoneyPercentTextControllerValidator;
  // Model for VoucherListSearch component.
  late VoucherListSearchModel voucherListSearchModel;
  // Models for discountPhanTram.
  late FlutterFlowDynamicModels<OrderDiscountModel> discountPhanTramModels;
  // Models for discountTM.
  late FlutterFlowDynamicModels<OrderDiscountModel> discountTMModels;

  @override
  void initState(BuildContext context) {
    customerListSearchModel =
        createModel(context, () => CustomerListSearchModel());
    voucherListSearchModel =
        createModel(context, () => VoucherListSearchModel());
    discountPhanTramModels =
        FlutterFlowDynamicModels(() => OrderDiscountModel());
    discountTMModels = FlutterFlowDynamicModels(() => OrderDiscountModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    customerListSearchModel.dispose();
    noteFocusNode?.dispose();
    noteTextController?.dispose();

    discountMoneyFocusNode?.dispose();
    discountMoneyTextController?.dispose();

    discountMoneyPercentFocusNode?.dispose();
    discountMoneyPercentTextController?.dispose();

    voucherListSearchModel.dispose();
    discountPhanTramModels.dispose();
    discountTMModels.dispose();
  }

  /// Action blocks.
  Future callVoucher(
    BuildContext context, {
    VoucherAgentPricesStruct? value,
  }) async {
    if (!dataVoucher
        .map((e) => e.voucherTemplateId.id)
        .toList()
        .toList()
        .contains(value!.voucherTemplateId.id)) {
      addToDataVoucher(VoucherAgentPricesStruct(
        discountValue: functions.stringToInt('0'),
        voucherTemplateId: value.voucherTemplateId,
        discountType: 'percent',
        discountMoney: functions.stringToInt('0'),
        totalVoucher: functions.stringToInt('0'),
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

  Future customerOrderCreateDraft(BuildContext context) async {
    ApiCallResponse? apiResultCustomerOrderCreateDraft;

    while (loop! < dataVoucher.length) {
      addToDetailRequest(CustomerOrderDetailRequestStruct(
        voucherTemplateId: dataVoucher[loop!].voucherTemplateId.id,
        totalVoucher: dataVoucher[loop!].totalVoucher,
        retailPrice: dataVoucher[loop!].retailPrice,
        discountType: dataVoucher[loop!].discountType,
        discountValue: dataVoucher[loop!].discountValue,
      ));
      loop = loop! + 1;
    }
    loop = 0;
    orderRequest = CustomerOrderRequestStruct(
      status: 'draft',
      customerId: customer?.id,
      agentId: FFAppState().user.agentId.id,
      description: noteTextController.text,
      discountType: customer?.discountType,
      discountValue: customer?.discountValue,
      orderDetails: detailRequest,
    );
    apiResultCustomerOrderCreateDraft =
        await CustomerOrderGroup.customerOrderCreateDraftCall.call(
      accessToken: FFAppState().accessToken,
      requestDataJson: orderRequest?.toMap(),
    );
    if (!(apiResultCustomerOrderCreateDraft.succeeded ?? true)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Lỗi tạo đơn!',
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

  Future customerOrderCreatePublished(BuildContext context) async {
    ApiCallResponse? apiResultCustomerOrderCreatePublished;

    while (loop! < dataVoucher.length) {
      addToDetailRequest(CustomerOrderDetailRequestStruct(
        voucherTemplateId: dataVoucher[loop!].voucherTemplateId.id,
        totalVoucher: dataVoucher[loop!].totalVoucher,
        retailPrice: dataVoucher[loop!].retailPrice,
        discountType: dataVoucher[loop!].discountType,
        discountValue: dataVoucher[loop!].discountValue,
      ));
      loop = loop! + 1;
    }
    loop = 0;
    orderRequest = CustomerOrderRequestStruct(
      status: 'published',
      customerId: customer?.id,
      agentId: FFAppState().user.agentId.id,
      description: noteTextController.text,
      discountType: customer?.discountType,
      discountValue: customer?.discountValue,
      orderDetails: detailRequest,
    );
    apiResultCustomerOrderCreatePublished =
        await CustomerOrderGroup.customerOrderCreatePublishedCall.call(
      accessToken: FFAppState().accessToken,
      requestDataJson: orderRequest?.toMap(),
    );
    if (!(apiResultCustomerOrderCreatePublished.succeeded ?? true)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Lỗi tạo đơn!',
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
}
