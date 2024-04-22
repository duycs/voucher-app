import '/flutter_flow/flutter_flow_util.dart';
import 'order_discount_widget.dart' show OrderDiscountWidget;
import 'package:flutter/material.dart';

class OrderDiscountModel extends FlutterFlowModel<OrderDiscountWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for discountPhanTram widget.
  FocusNode? discountPhanTramFocusNode;
  TextEditingController? discountPhanTramTextController;
  String? Function(BuildContext, String?)?
      discountPhanTramTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    discountPhanTramFocusNode?.dispose();
    discountPhanTramTextController?.dispose();
  }
}
