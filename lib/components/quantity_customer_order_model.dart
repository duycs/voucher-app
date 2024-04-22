import '/flutter_flow/flutter_flow_util.dart';
import 'quantity_customer_order_widget.dart' show QuantityCustomerOrderWidget;
import 'package:flutter/material.dart';

class QuantityCustomerOrderModel
    extends FlutterFlowModel<QuantityCustomerOrderWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
