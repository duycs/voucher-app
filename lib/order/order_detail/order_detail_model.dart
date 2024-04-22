import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'order_detail_widget.dart' show OrderDetailWidget;
import 'package:flutter/material.dart';

class OrderDetailModel extends FlutterFlowModel<OrderDetailWidget> {
  ///  Local state fields for this page.

  OrderTableStruct? orderDetail;
  void updateOrderDetailStruct(Function(OrderTableStruct) updateFn) =>
      updateFn(orderDetail ??= OrderTableStruct());

  bool? isLoad = false;

  List<CustomerOrderDetailsUpdateStruct> listVoucher = [];
  void addToListVoucher(CustomerOrderDetailsUpdateStruct item) =>
      listVoucher.add(item);
  void removeFromListVoucher(CustomerOrderDetailsUpdateStruct item) =>
      listVoucher.remove(item);
  void removeAtIndexFromListVoucher(int index) => listVoucher.removeAt(index);
  void insertAtIndexInListVoucher(
          int index, CustomerOrderDetailsUpdateStruct item) =>
      listVoucher.insert(index, item);
  void updateListVoucherAtIndex(
          int index, Function(CustomerOrderDetailsUpdateStruct) updateFn) =>
      listVoucher[index] = updateFn(listVoucher[index]);

  List<dynamic> filterSearch = [];
  void addToFilterSearch(dynamic item) => filterSearch.add(item);
  void removeFromFilterSearch(dynamic item) => filterSearch.remove(item);
  void removeAtIndexFromFilterSearch(int index) => filterSearch.removeAt(index);
  void insertAtIndexInFilterSearch(int index, dynamic item) =>
      filterSearch.insert(index, item);
  void updateFilterSearchAtIndex(int index, Function(dynamic) updateFn) =>
      filterSearch[index] = updateFn(filterSearch[index]);

  List<dynamic> listParam = [];
  void addToListParam(dynamic item) => listParam.add(item);
  void removeFromListParam(dynamic item) => listParam.remove(item);
  void removeAtIndexFromListParam(int index) => listParam.removeAt(index);
  void insertAtIndexInListParam(int index, dynamic item) =>
      listParam.insert(index, item);
  void updateListParamAtIndex(int index, Function(dynamic) updateFn) =>
      listParam[index] = updateFn(listParam[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (CustomerOrderDetail)] action in OrderDetail widget.
  ApiCallResponse? customerOderDetailOne;
  // Stores action output result for [Action Block - CallOrderDetail] action in OrderDetail widget.
  bool? orderDetailList;
  // Stores action output result for [Backend Call - API (UpdatePublishedCustomerOrder)] action in Button widget.
  ApiCallResponse? apiResultCustomerOrderStatus;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks.
  Future<bool?> callOrderDetail(BuildContext context) async {
    ApiCallResponse? apiCustomerDetails;

    apiCustomerDetails = await CustomersGroup.customerOrderDetailsCall.call(
      accessToken: FFAppState().accessToken,
      limit: 500,
      offset: 0,
      filter: functions.jsonToString(<String, List<dynamic>?>{
        '_and': filterSearch,
      }),
    );
    if ((apiCustomerDetails.succeeded ?? true)) {
      listParam = getJsonField(
        (apiCustomerDetails.jsonBody ?? ''),
        r'''$.data''',
        true,
      )!
          .toList()
          .cast<dynamic>();
      return true;
    } else {
      return false;
    }
  }
}
