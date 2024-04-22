import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'customer_create_widget.dart' show CustomerCreateWidget;
import 'package:flutter/material.dart';

class CustomerCreateModel extends FlutterFlowModel<CustomerCreateWidget> {
  ///  State fields for stateful widgets in this page.

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
  // State field(s) for yourStatus widget.
  FormFieldController<String>? yourStatusValueController;
  // Stores action output result for [Backend Call - API (CustomersCreate)] action in ButtonPrimary widget.
  ApiCallResponse? apiResultCreate;
  // Stores action output result for [Backend Call - API (UploadFile)] action in ButtonPrimary widget.
  ApiCallResponse? apiResultFile;
  // Stores action output result for [Backend Call - API (CustomersCreate)] action in ButtonPrimary widget.
  ApiCallResponse? apiResultCreateImage;

  @override
  void initState(BuildContext context) {
    yourNameTextControllerValidator = _yourNameTextControllerValidator;
    yourPhoneTextControllerValidator = _yourPhoneTextControllerValidator;
    yourEmailTextControllerValidator = _yourEmailTextControllerValidator;
  }

  @override
  void dispose() {
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
