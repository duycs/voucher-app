import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'update_voucher_widget.dart' show UpdateVoucherWidget;
import 'package:flutter/material.dart';

class UpdateVoucherModel extends FlutterFlowModel<UpdateVoucherWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (UpdatePirceRetail)] action in Button widget.
  ApiCallResponse? apiResult6mg;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
