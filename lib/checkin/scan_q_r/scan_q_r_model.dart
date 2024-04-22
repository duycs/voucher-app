import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'scan_q_r_widget.dart' show ScanQRWidget;
import 'package:flutter/material.dart';

class ScanQRModel extends FlutterFlowModel<ScanQRWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  var scanQR = '';
  // Stores action output result for [Backend Call - API (GetList)] action in ScanQR widget.
  ApiCallResponse? apiResultGetVoucher;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
