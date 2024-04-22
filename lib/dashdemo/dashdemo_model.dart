import '/flutter_flow/flutter_flow_util.dart';
import 'dashdemo_widget.dart' show DashdemoWidget;
import 'package:flutter/material.dart';

class DashdemoModel extends FlutterFlowModel<DashdemoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
