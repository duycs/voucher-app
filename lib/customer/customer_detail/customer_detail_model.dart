import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'customer_detail_widget.dart' show CustomerDetailWidget;
import 'package:flutter/material.dart';

class CustomerDetailModel extends FlutterFlowModel<CustomerDetailWidget> {
  ///  Local state fields for this page.

  CustomerStruct? list;
  void updateListStruct(Function(CustomerStruct) updateFn) =>
      updateFn(list ??= CustomerStruct());

  bool? isLoad;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (CustomersDetail)] action in CustomerDetail widget.
  ApiCallResponse? apiResultDetail;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
