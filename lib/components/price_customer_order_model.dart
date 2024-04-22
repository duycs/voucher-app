import '/flutter_flow/flutter_flow_util.dart';
import 'price_customer_order_widget.dart' show PriceCustomerOrderWidget;
import 'package:flutter/material.dart';

class PriceCustomerOrderModel
    extends FlutterFlowModel<PriceCustomerOrderWidget> {
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
