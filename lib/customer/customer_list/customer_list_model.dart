import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'customer_list_widget.dart' show CustomerListWidget;
import 'package:flutter/material.dart';

class CustomerListModel extends FlutterFlowModel<CustomerListWidget> {
  ///  Local state fields for this page.

  List<CustomerStruct> list = [];
  void addToList(CustomerStruct item) => list.add(item);
  void removeFromList(CustomerStruct item) => list.remove(item);
  void removeAtIndexFromList(int index) => list.removeAt(index);
  void insertAtIndexInList(int index, CustomerStruct item) =>
      list.insert(index, item);
  void updateListAtIndex(int index, Function(CustomerStruct) updateFn) =>
      list[index] = updateFn(list[index]);

  bool isLoad = false;

  String? name = '';

  String? status = '';

  List<dynamic> filterSearch = [];
  void addToFilterSearch(dynamic item) => filterSearch.add(item);
  void removeFromFilterSearch(dynamic item) => filterSearch.remove(item);
  void removeAtIndexFromFilterSearch(int index) => filterSearch.removeAt(index);
  void insertAtIndexInFilterSearch(int index, dynamic item) =>
      filterSearch.insert(index, item);
  void updateFilterSearchAtIndex(int index, Function(dynamic) updateFn) =>
      filterSearch[index] = updateFn(filterSearch[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (CustomersList)] action in CustomerList widget.
  ApiCallResponse? apiResultyjl;
  // State field(s) for NameCustomers widget.
  FocusNode? nameCustomersFocusNode;
  TextEditingController? nameCustomersTextController;
  String? Function(BuildContext, String?)? nameCustomersTextControllerValidator;
  // Stores action output result for [Action Block - GetListCustomers] action in NameCustomers widget.
  bool? getListCall;
  // Stores action output result for [Action Block - GetListCustomers] action in IconButton widget.
  bool? getListCallSeacrh;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    nameCustomersFocusNode?.dispose();
    nameCustomersTextController?.dispose();
  }

  /// Action blocks.
  Future<bool?> getListCustomers(BuildContext context) async {
    ApiCallResponse? callCustomersList;

    callCustomersList = await CustomersGroup.customersListCall.call(
      accessToken: FFAppState().accessToken,
      limit: 5000,
      page: 0,
      filter: functions.jsonToString(<String, List<dynamic>>{
        '_and': filterSearch,
      }),
    );
    if ((callCustomersList.succeeded ?? true)) {
      list =
          CustomersListStruct.maybeFromMap((callCustomersList.jsonBody ?? ''))!
              .data
              .toList()
              .cast<CustomerStruct>();
      return true;
    } else {
      return false;
    }
  }
}
