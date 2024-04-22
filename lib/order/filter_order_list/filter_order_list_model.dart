import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'filter_order_list_widget.dart' show FilterOrderListWidget;
import 'package:flutter/material.dart';

class FilterOrderListModel extends FlutterFlowModel<FilterOrderListWidget> {
  ///  Local state fields for this component.

  String? dateStart;

  String? dateEnd;

  ///  State fields for stateful widgets in this component.

  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for customerName widget.
  FocusNode? customerNameFocusNode;
  TextEditingController? customerNameTextController;
  String? Function(BuildContext, String?)? customerNameTextControllerValidator;
  // State field(s) for customerPhone widget.
  FocusNode? customerPhoneFocusNode;
  TextEditingController? customerPhoneTextController;
  String? Function(BuildContext, String?)? customerPhoneTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    customerNameFocusNode?.dispose();
    customerNameTextController?.dispose();

    customerPhoneFocusNode?.dispose();
    customerPhoneTextController?.dispose();
  }
}
