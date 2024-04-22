import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'purchase_list_widget.dart' show PurchaseListWidget;
import 'package:flutter/material.dart';

class PurchaseListModel extends FlutterFlowModel<PurchaseListWidget> {
  ///  Local state fields for this page.

  List<PurchaseListStruct> list = [];
  void addToList(PurchaseListStruct item) => list.add(item);
  void removeFromList(PurchaseListStruct item) => list.remove(item);
  void removeAtIndexFromList(int index) => list.removeAt(index);
  void insertAtIndexInList(int index, PurchaseListStruct item) =>
      list.insert(index, item);
  void updateListAtIndex(int index, Function(PurchaseListStruct) updateFn) =>
      list[index] = updateFn(list[index]);

  bool isFilter = false;

  String dateStart = '';

  String dateEnd = '';

  String searchProvider = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for SearchField widget.
  FocusNode? searchFieldFocusNode;
  TextEditingController? searchFieldTextController;
  String? Function(BuildContext, String?)? searchFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (PurchaseList)] action in SearchField widget.
  ApiCallResponse? apiResultFilterPurchaseList;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    searchFieldFocusNode?.dispose();
    searchFieldTextController?.dispose();
  }

  /// Action blocks.
  Future getPurchaseList(BuildContext context) async {
    ApiCallResponse? apiResultGetPurchaseList;

    apiResultGetPurchaseList = await PurchaseGroup.purchaseListCall.call(
      filter:
          '{\"_and\":[{\"_and\":[{\"agent_id\":{\"_eq\":\"${FFAppState().user.agentId.id}\"}}]},{\"status\":{\"_eq\":\"published\"}}]}',
      accessToken: FFAppState().accessToken,
      limit: 5000,
    );
    if ((apiResultGetPurchaseList.succeeded ?? true)) {
      list = PurchaseListDataStruct.maybeFromMap(
              (apiResultGetPurchaseList.jsonBody ?? ''))!
          .data
          .toList()
          .cast<PurchaseListStruct>();
    }
  }
}
