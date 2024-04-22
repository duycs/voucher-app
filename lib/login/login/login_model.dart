import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  Local state fields for this page.

  LoginResourceDataStruct? loginData;
  void updateLoginDataStruct(Function(LoginResourceDataStruct) updateFn) =>
      updateFn(loginData ??= LoginResourceDataStruct());

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  String? _emailAddressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Vui lòng nhập email';
    }

    return null;
  }

  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  String? _passwordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Vui lòng nhập mật khẩu';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    emailAddressTextControllerValidator = _emailAddressTextControllerValidator;
    passwordVisibility = false;
    passwordTextControllerValidator = _passwordTextControllerValidator;
  }

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }

  /// Action blocks.
  Future login(BuildContext context) async {
    ApiCallResponse? apiResultLogin;

    if (emailAddressTextController.text == '') {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Vui lòng nhập email',
            style: TextStyle(
              color: FlutterFlowTheme.of(context).primaryText,
            ),
          ),
          duration: const Duration(milliseconds: 4000),
          backgroundColor: FlutterFlowTheme.of(context).error,
        ),
      );
      return;
    } else if (passwordTextController.text == '') {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Vui lòng nhập mật khẩu',
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

    apiResultLogin = await AuthenGroup.loginCall.call(
      email: emailAddressTextController.text,
      password: passwordTextController.text,
    );
    if ((apiResultLogin.succeeded ?? true)) {
      loginData = LoginResourceDataStruct.maybeFromMap(
          (apiResultLogin.jsonBody ?? ''));
      FFAppState().update(() {
        FFAppState().accessToken = loginData!.data.accessToken;
        FFAppState().refreshToken = loginData!.data.refreshToken;
        FFAppState().expires = loginData!.data.expires;
      });
      await getUserMe(context);
      return;
    } else {
      return;
    }
  }

  Future getUserMe(BuildContext context) async {
    ApiCallResponse? apiResultUserMe;

    apiResultUserMe = await UserGroup.userMeCall.call(
      accessToken: FFAppState().accessToken,
    );
    if ((apiResultUserMe.succeeded ?? true)) {
      FFAppState().user = UserResourceDataStruct.maybeFromMap(
              (apiResultUserMe.jsonBody ?? ''))!
          .data;
      if ((FFAppState().user.role.id == FFAppConstants.RoleProviderAdmin) ||
          (FFAppState().user.role.id == FFAppConstants.RoleProviderSale) ||
          (FFAppState().user.role.id == FFAppConstants.RoleProviderCheckin)) {
        context.goNamed(
          'CheckinList',
          extra: <String, dynamic>{
            kTransitionInfoKey: const TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.fade,
              duration: Duration(milliseconds: 0),
            ),
          },
        );

        return;
      } else {
        if ((FFAppState().user.role.id == FFAppConstants.RoleAgentAdmin) ||
            (FFAppState().user.role.id == FFAppConstants.RoleAgentSale)) {
          context.goNamed(
            'CustomerList',
            extra: <String, dynamic>{
              kTransitionInfoKey: const TransitionInfo(
                hasTransition: true,
                transitionType: PageTransitionType.fade,
                duration: Duration(milliseconds: 0),
              ),
            },
          );
        } else {
          await showDialog(
            context: context,
            builder: (alertDialogContext) {
              return AlertDialog(
                title: const Text(FFAppConstants.TitleNotice),
                content: const Text('Bạn không có quyền đăng nhập vào hệ thống!'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(alertDialogContext),
                    child: const Text('Ok'),
                  ),
                ],
              );
            },
          );
          FFAppState().update(() {
            FFAppState().accessToken = '';
            FFAppState().refreshToken = '';
            FFAppState().expires = 0;
            FFAppState().user = UserStruct();
          });
        }

        return;
      }
    } else {
      return;
    }
  }
}
