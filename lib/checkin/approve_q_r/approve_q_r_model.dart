import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'approve_q_r_widget.dart' show ApproveQRWidget;
import 'package:flutter/material.dart';

class ApproveQRModel extends FlutterFlowModel<ApproveQRWidget> {
  ///  Local state fields for this page.

  VoucherStruct? voucher;
  void updateVoucherStruct(Function(VoucherStruct) updateFn) =>
      updateFn(voucher ??= VoucherStruct());

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (GetItem)] action in ApproveQR widget.
  ApiCallResponse? apiResultGetVoucher;
  // Stores action output result for [Backend Call - API (ConsumeVoucher)] action in Button widget.
  ApiCallResponse? apiResultConsumeVoucher;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks.
  Future consumeQR(
    BuildContext context, {
    required String? voucherId,
  }) async {
    ApiCallResponse? apiResultConsumeQR;

    // Query to consume QR
    apiResultConsumeQR = await VoucherGroup.consumeVoucherCall.call(
      accessToken: FFAppState().accessToken,
      id: voucherId,
    );
    if ((apiResultConsumeQR.succeeded ?? true)) {
      // Navigate to QR approved detail

      context.goNamed(
        'CheckinDetail',
        queryParameters: {
          'voucherId': serializeParam(
            widget.voucherId,
            ParamType.String,
          ),
        }.withoutNulls,
        extra: <String, dynamic>{
          kTransitionInfoKey: const TransitionInfo(
            hasTransition: true,
            transitionType: PageTransitionType.fade,
            duration: Duration(milliseconds: 0),
          ),
        },
      );
    } else {
      // Notice update failed
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return AlertDialog(
            title: const Text(FFAppConstants.TitleNotice),
            content: const Text('Lỗi cập nhật sử dụng mã QR'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(alertDialogContext),
                child: const Text('Ok'),
              ),
            ],
          );
        },
      );
    }
  }
}
