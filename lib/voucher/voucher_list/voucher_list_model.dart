import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'voucher_list_widget.dart' show VoucherListWidget;
import 'package:flutter/material.dart';

class VoucherListModel extends FlutterFlowModel<VoucherListWidget> {
  ///  Local state fields for this page.

  dynamic list;

  String? filterName;

  String? dataStartList = '0';

  String? dataEndList = '0';

  String statusList = '';

  String? priceMinList = '0';

  String? priceMaxList = '0';

  String? codeList = '0';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for NameVoucher widget.
  FocusNode? nameVoucherFocusNode;
  TextEditingController? nameVoucherTextController;
  String? Function(BuildContext, String?)? nameVoucherTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    nameVoucherFocusNode?.dispose();
    nameVoucherTextController?.dispose();
  }

  /// Action blocks.
  Future getVoucherList(
    BuildContext context, {
    DateTime? dateStart,
    DateTime? dateEnd,
    String? priceMin,
    String? priceMax,
    String? codeVoucher,
    String? statusVoucher,
  }) async {
    ApiCallResponse? apiResultList;

    apiResultList = await PurchaseGroup.voucherListCall.call(
      accessToken: FFAppState().accessToken,
      filter: functions.customFilterVoucher(
          nameVoucherTextController.text,
          dateTimeFormat(
            'yyyy-MM-dd',
            dateStart,
            locale: FFLocalizations.of(context).languageCode,
          ),
          dateTimeFormat(
            'yyyy-MM-dd',
            dateEnd,
            locale: FFLocalizations.of(context).languageCode,
          ),
          priceMin,
          priceMax,
          codeVoucher,
          statusVoucher,
          FFAppState().user.agentId.id),
    );
    if ((apiResultList.succeeded ?? true)) {
      list = getJsonField(
        (apiResultList.jsonBody ?? ''),
        r'''$.data''',
      );
    }
  }
}
