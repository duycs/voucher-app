import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'order_list_widget.dart' show OrderListWidget;
import 'package:flutter/material.dart';

class OrderListModel extends FlutterFlowModel<OrderListWidget> {
  ///  Local state fields for this page.

  List<CustomerOrderStruct> list = [];
  void addToList(CustomerOrderStruct item) => list.add(item);
  void removeFromList(CustomerOrderStruct item) => list.remove(item);
  void removeAtIndexFromList(int index) => list.removeAt(index);
  void insertAtIndexInList(int index, CustomerOrderStruct item) =>
      list.insert(index, item);
  void updateListAtIndex(int index, Function(CustomerOrderStruct) updateFn) =>
      list[index] = updateFn(list[index]);

  bool isLoad = false;

  List<dynamic> filterSearch = [];
  void addToFilterSearch(dynamic item) => filterSearch.add(item);
  void removeFromFilterSearch(dynamic item) => filterSearch.remove(item);
  void removeAtIndexFromFilterSearch(int index) => filterSearch.removeAt(index);
  void insertAtIndexInFilterSearch(int index, dynamic item) =>
      filterSearch.insert(index, item);
  void updateFilterSearchAtIndex(int index, Function(dynamic) updateFn) =>
      filterSearch[index] = updateFn(filterSearch[index]);

  String dateStart = '';

  String dateEnd = '';

  String status = '';

  String searchName = '';

  String searchPhone = '';

  String? filter = '';

  String? codeSearch;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (CustomerOrdersList)] action in OrderList widget.
  ApiCallResponse? apiResultCustomerOrderList;
  // State field(s) for CodeSearch widget.
  FocusNode? codeSearchFocusNode;
  TextEditingController? codeSearchTextController;
  String? Function(BuildContext, String?)? codeSearchTextControllerValidator;
  // Stores action output result for [Backend Call - API (CustomerOrdersList)] action in CodeSearch widget.
  ApiCallResponse? apiResultCustomerOrderListCode;
  // Stores action output result for [Backend Call - API (CustomerOrdersList)] action in IconButton widget.
  ApiCallResponse? apiResultCustomerOrderListSearch;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    codeSearchFocusNode?.dispose();
    codeSearchTextController?.dispose();
  }
}
