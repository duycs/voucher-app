import '/flutter_flow/flutter_flow_util.dart';
import 'order_toal_widget.dart' show OrderToalWidget;
import 'package:flutter/material.dart';

class OrderToalModel extends FlutterFlowModel<OrderToalWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for numberTotal widget.
  FocusNode? numberTotalFocusNode;
  TextEditingController? numberTotalTextController;
  String? Function(BuildContext, String?)? numberTotalTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    numberTotalFocusNode?.dispose();
    numberTotalTextController?.dispose();
  }
}
