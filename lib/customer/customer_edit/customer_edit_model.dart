import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'customer_edit_widget.dart' show CustomerEditWidget;
import 'package:flutter/material.dart';

class CustomerEditModel extends FlutterFlowModel<CustomerEditWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameTextController;
  String? Function(BuildContext, String?)? yourNameTextControllerValidator;
  String? _yourNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Vui lòng nhập tên!';
    }

    return null;
  }

  // State field(s) for yourPhone widget.
  FocusNode? yourPhoneFocusNode;
  TextEditingController? yourPhoneTextController;
  String? Function(BuildContext, String?)? yourPhoneTextControllerValidator;
  String? _yourPhoneTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Vui lòng nhập số điện thoại!';
    }

    return null;
  }

  // State field(s) for yourEmail widget.
  FocusNode? yourEmailFocusNode;
  TextEditingController? yourEmailTextController;
  String? Function(BuildContext, String?)? yourEmailTextControllerValidator;
  String? _yourEmailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Vui lòng nhập email!';
    }

    if (!RegExp(
            '^[a-zA-Z0-9.a-zA-Z0-9.!#\$%&\'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\\.[a-zA-Z]+')
        .hasMatch(val)) {
      return 'Vui lòng nhập đúng email!';
    }
    return null;
  }

  // State field(s) for yourAddress widget.
  FocusNode? yourAddressFocusNode;
  TextEditingController? yourAddressTextController;
  String? Function(BuildContext, String?)? yourAddressTextControllerValidator;
  String? _yourAddressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Vui lòng nhập địa chỉ!';
    }

    return null;
  }

  // State field(s) for yourStatus widget.
  FormFieldController<String>? yourStatusValueController;
  // Stores action output result for [Backend Call - API (UploadFile)] action in ButtonPrimary widget.
  ApiCallResponse? apiResultUpload;
  // Stores action output result for [Backend Call - API (CustomersUpdate)] action in ButtonPrimary widget.
  ApiCallResponse? apiResultCustomersEdit123;
  // Stores action output result for [Backend Call - API (CustomersUpdate)] action in ButtonPrimary widget.
  ApiCallResponse? apiResultCustomersEdit;

  @override
  void initState(BuildContext context) {
    yourNameTextControllerValidator = _yourNameTextControllerValidator;
    yourPhoneTextControllerValidator = _yourPhoneTextControllerValidator;
    yourEmailTextControllerValidator = _yourEmailTextControllerValidator;
    yourAddressTextControllerValidator = _yourAddressTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    yourNameFocusNode?.dispose();
    yourNameTextController?.dispose();

    yourPhoneFocusNode?.dispose();
    yourPhoneTextController?.dispose();

    yourEmailFocusNode?.dispose();
    yourEmailTextController?.dispose();

    yourAddressFocusNode?.dispose();
    yourAddressTextController?.dispose();
  }

  /// Additional helper methods.
  String? get yourStatusValue => yourStatusValueController?.value;
}
