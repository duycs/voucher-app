import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'voucher_list_search_widget.dart' show VoucherListSearchWidget;
import 'package:flutter/material.dart';

class VoucherListSearchModel extends FlutterFlowModel<VoucherListSearchWidget> {
  ///  Local state fields for this component.

  List<VoucherAgentPricesStruct> list = [];
  void addToList(VoucherAgentPricesStruct item) => list.add(item);
  void removeFromList(VoucherAgentPricesStruct item) => list.remove(item);
  void removeAtIndexFromList(int index) => list.removeAt(index);
  void insertAtIndexInList(int index, VoucherAgentPricesStruct item) =>
      list.insert(index, item);
  void updateListAtIndex(
          int index, Function(VoucherAgentPricesStruct) updateFn) =>
      list[index] = updateFn(list[index]);

  VoucherAgentPricesStruct? selectVoucher;
  void updateSelectVoucherStruct(Function(VoucherAgentPricesStruct) updateFn) =>
      updateFn(selectVoucher ??= VoucherAgentPricesStruct());

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (VoucherAgentPrices)] action in VoucherListSearch widget.
  ApiCallResponse? getListVoucher;
  // State field(s) for DropDownVoucher widget.
  String? dropDownVoucherValue;
  FormFieldController<String>? dropDownVoucherValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
