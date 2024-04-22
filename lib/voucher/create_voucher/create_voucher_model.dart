import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_voucher_widget.dart' show CreateVoucherWidget;
import 'package:flutter/material.dart';

class CreateVoucherModel extends FlutterFlowModel<CreateVoucherWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (VoucherRetailPrice)] action in Button widget.
  ApiCallResponse? apiResultry5;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
