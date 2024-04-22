import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'checkin_list_widget.dart' show CheckinListWidget;
import 'package:flutter/material.dart';

class CheckinListModel extends FlutterFlowModel<CheckinListWidget> {
  ///  Local state fields for this page.

  List<VoucherStruct> vouchers = [];
  void addToVouchers(VoucherStruct item) => vouchers.add(item);
  void removeFromVouchers(VoucherStruct item) => vouchers.remove(item);
  void removeAtIndexFromVouchers(int index) => vouchers.removeAt(index);
  void insertAtIndexInVouchers(int index, VoucherStruct item) =>
      vouchers.insert(index, item);
  void updateVouchersAtIndex(int index, Function(VoucherStruct) updateFn) =>
      vouchers[index] = updateFn(vouchers[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (GetList)] action in CheckinList widget.
  ApiCallResponse? apiResulttgv;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
