import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';

Future<bool?> checkRefreshToken(
  BuildContext context, {
  required dynamic jsonErrors,
}) async {
  ApiCallResponse? apiResultRefreshToken;

  if (ErrorsStruct.maybeFromMap(jsonErrors)?.errors.first.extensions.code ==
      FFAppConstants.TokenExpired) {
    apiResultRefreshToken = await AuthenGroup.refreshTokenCall.call(
      refreshToken: FFAppState().refreshToken,
    );
    if ((apiResultRefreshToken.succeeded ?? true)) {
      FFAppState().update(() {
        FFAppState().accessToken = LoginResourceDataStruct.maybeFromMap(
                (apiResultRefreshToken?.jsonBody ?? ''))!
            .data
            .accessToken;
        FFAppState().refreshToken = LoginResourceDataStruct.maybeFromMap(
                (apiResultRefreshToken?.jsonBody ?? ''))!
            .data
            .refreshToken;
        FFAppState().expires = LoginResourceDataStruct.maybeFromMap(
                (apiResultRefreshToken?.jsonBody ?? ''))!
            .data
            .expires;
      });
    } else {
      await action_blocks.clearSession(context);

      context.goNamed('Login');
    }

    return true;
  } else {
    return false;
  }
}

Future clearSession(BuildContext context) async {
  FFAppState().update(() {
    FFAppState().accessToken = '';
    FFAppState().refreshToken = '';
    FFAppState().expires = 0;
    FFAppState().user = UserStruct();
  });
}
