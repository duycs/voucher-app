import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'voucher_list_search_edit_widget.dart' show VoucherListSearchEditWidget;
import 'package:flutter/material.dart';

class VoucherListSearchEditModel
    extends FlutterFlowModel<VoucherListSearchEditWidget> {
  ///  Local state fields for this component.

  List<CustomerOrderDetailStruct> list = [];
  void addToList(CustomerOrderDetailStruct item) => list.add(item);
  void removeFromList(CustomerOrderDetailStruct item) => list.remove(item);
  void removeAtIndexFromList(int index) => list.removeAt(index);
  void insertAtIndexInList(int index, CustomerOrderDetailStruct item) =>
      list.insert(index, item);
  void updateListAtIndex(
          int index, Function(CustomerOrderDetailStruct) updateFn) =>
      list[index] = updateFn(list[index]);

  CustomerOrderDetailStruct? selectVoucher;
  void updateSelectVoucherStruct(
          Function(CustomerOrderDetailStruct) updateFn) =>
      updateFn(selectVoucher ??= CustomerOrderDetailStruct());

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (VoucherAgentPrices)] action in VoucherListSearchEdit widget.
  ApiCallResponse? getListVoucher;
  // State field(s) for DropDownVoucher widget.
  String? dropDownVoucherValue;
  FormFieldController<String>? dropDownVoucherValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
