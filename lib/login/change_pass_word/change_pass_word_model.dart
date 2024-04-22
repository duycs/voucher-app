import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'change_pass_word_widget.dart' show ChangePassWordWidget;
import 'package:flutter/material.dart';

class ChangePassWordModel extends FlutterFlowModel<ChangePassWordWidget> {
  ///  Local state fields for this page.

  dynamic list;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for pass widget.
  FocusNode? passFocusNode;
  TextEditingController? passTextController;
  late bool passVisibility;
  String? Function(BuildContext, String?)? passTextControllerValidator;
  // State field(s) for newpass widget.
  FocusNode? newpassFocusNode;
  TextEditingController? newpassTextController;
  late bool newpassVisibility;
  String? Function(BuildContext, String?)? newpassTextControllerValidator;
  // State field(s) for newpassConfirm widget.
  FocusNode? newpassConfirmFocusNode;
  TextEditingController? newpassConfirmTextController;
  late bool newpassConfirmVisibility;
  String? Function(BuildContext, String?)?
      newpassConfirmTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passVisibility = false;
    newpassVisibility = false;
    newpassConfirmVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    passFocusNode?.dispose();
    passTextController?.dispose();

    newpassFocusNode?.dispose();
    newpassTextController?.dispose();

    newpassConfirmFocusNode?.dispose();
    newpassConfirmTextController?.dispose();
  }

  /// Action blocks.
  Future listChangePass(BuildContext context) async {
    ApiCallResponse? apiResultPass;

    if ((newpassTextController.text == newpassConfirmTextController.text) &&
        (newpassTextController.text != '') &&
        (newpassConfirmTextController.text != '')) {
      apiResultPass = await UserGroup.changePasswordCall.call(
        accessToken: FFAppState().accessToken,
        email: FFAppState().user.email,
        oldPassword: passTextController.text,
        password: newpassTextController.text,
      );
      if ((apiResultPass.succeeded ?? true)) {
        list = (apiResultPass.jsonBody ?? '');
        if (getJsonField(
              list,
              r'''$.status''',
            ).toString().toString() ==
            '204') {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Đổi mật khẩu thành công!',
                style: TextStyle(
                  color: FlutterFlowTheme.of(context).primaryText,
                ),
              ),
              duration: const Duration(milliseconds: 4000),
              backgroundColor: FlutterFlowTheme.of(context).secondary,
            ),
          );

          context.pushNamed('Profile');
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Mật khẩu hiện tại không đúng!',
                style: TextStyle(
                  color: FlutterFlowTheme.of(context).primaryText,
                ),
              ),
              duration: const Duration(milliseconds: 4000),
              backgroundColor: FlutterFlowTheme.of(context).error,
            ),
          );
          return;
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Mật Khẩu hiện tại chưa chính xác!',
              style: TextStyle(
                color: FlutterFlowTheme.of(context).primaryText,
              ),
            ),
            duration: const Duration(milliseconds: 4000),
            backgroundColor: FlutterFlowTheme.of(context).error,
          ),
        );
        return;
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Mật khẩu mới chưa trùng khớp hoặc trống!',
            style: TextStyle(
              color: FlutterFlowTheme.of(context).primaryText,
            ),
          ),
          duration: const Duration(milliseconds: 4000),
          backgroundColor: FlutterFlowTheme.of(context).error,
        ),
      );
      return;
    }
  }
}
