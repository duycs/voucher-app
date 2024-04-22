import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'customer_list_search_widget.dart' show CustomerListSearchWidget;
import 'package:flutter/material.dart';

class CustomerListSearchModel
    extends FlutterFlowModel<CustomerListSearchWidget> {
  ///  Local state fields for this component.

  List<CustomerStruct> data = [];
  void addToData(CustomerStruct item) => data.add(item);
  void removeFromData(CustomerStruct item) => data.remove(item);
  void removeAtIndexFromData(int index) => data.removeAt(index);
  void insertAtIndexInData(int index, CustomerStruct item) =>
      data.insert(index, item);
  void updateDataAtIndex(int index, Function(CustomerStruct) updateFn) =>
      data[index] = updateFn(data[index]);

  CustomerStruct? selectItem;
  void updateSelectItemStruct(Function(CustomerStruct) updateFn) =>
      updateFn(selectItem ??= CustomerStruct());

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (CustomersList)] action in CustomerListSearch widget.
  ApiCallResponse? apiResultyjl;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
