import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'filter_voucher_list_widget.dart' show FilterVoucherListWidget;
import 'package:flutter/material.dart';

class FilterVoucherListModel extends FlutterFlowModel<FilterVoucherListWidget> {
  ///  Local state fields for this component.

  DateTime? dateStart;

  DateTime? dateEnd;

  String? statusVoucher;

  String? priceMin;

  String? priceMax;

  String? codeVoucher;

  DateTime? dateStartCPN;

  DateTime? dateEndCPN;

  String? test;

  ///  State fields for stateful widgets in this component.

  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for DropDownStatus widget.
  String? dropDownStatusValue;
  FormFieldController<String>? dropDownStatusValueController;
  // State field(s) for priceMin widget.
  FocusNode? priceMinFocusNode;
  TextEditingController? priceMinTextController;
  String? Function(BuildContext, String?)? priceMinTextControllerValidator;
  // State field(s) for priceMax widget.
  FocusNode? priceMaxFocusNode;
  TextEditingController? priceMaxTextController;
  String? Function(BuildContext, String?)? priceMaxTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    priceMinFocusNode?.dispose();
    priceMinTextController?.dispose();

    priceMaxFocusNode?.dispose();
    priceMaxTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController3?.dispose();
  }
}
