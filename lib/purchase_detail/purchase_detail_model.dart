import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'purchase_detail_widget.dart' show PurchaseDetailWidget;
import 'package:flutter/material.dart';

class PurchaseDetailModel extends FlutterFlowModel<PurchaseDetailWidget> {
  ///  Local state fields for this page.

  dynamic list;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (PurchaseListDetail)] action in PurchaseDetail widget.
  ApiCallResponse? apiResult4xe;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
