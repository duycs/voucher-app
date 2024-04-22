import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'voucher_detail_widget.dart' show VoucherDetailWidget;
import 'package:flutter/material.dart';

class VoucherDetailModel extends FlutterFlowModel<VoucherDetailWidget> {
  ///  Local state fields for this page.

  dynamic list;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (VoucherAgentPrices)] action in VoucherDetail widget.
  ApiCallResponse? apiResultPrice;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
