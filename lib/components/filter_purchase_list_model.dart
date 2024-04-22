import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'filter_purchase_list_widget.dart' show FilterPurchaseListWidget;
import 'package:flutter/material.dart';

class FilterPurchaseListModel
    extends FlutterFlowModel<FilterPurchaseListWidget> {
  ///  Local state fields for this component.

  String dateStart = '';

  String dateEnd = '';

  List<PurchaseListStruct> data = [];
  void addToData(PurchaseListStruct item) => data.add(item);
  void removeFromData(PurchaseListStruct item) => data.remove(item);
  void removeAtIndexFromData(int index) => data.removeAt(index);
  void insertAtIndexInData(int index, PurchaseListStruct item) =>
      data.insert(index, item);
  void updateDataAtIndex(int index, Function(PurchaseListStruct) updateFn) =>
      data[index] = updateFn(data[index]);

  String searchProvider = '';

  ///  State fields for stateful widgets in this component.

  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for searchProvider widget.
  FocusNode? searchProviderFocusNode;
  TextEditingController? searchProviderTextController;
  String? Function(BuildContext, String?)?
      searchProviderTextControllerValidator;
  // Stores action output result for [Backend Call - API (PurchaseList)] action in Button widget.
  ApiCallResponse? apiResultGetPurchaseList;
  // Stores action output result for [Backend Call - API (PurchaseList)] action in Button widget.
  ApiCallResponse? apiResultFilter;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchProviderFocusNode?.dispose();
    searchProviderTextController?.dispose();
  }
}
