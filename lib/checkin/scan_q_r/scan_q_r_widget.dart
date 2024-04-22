import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:provider/provider.dart';
import 'scan_q_r_model.dart';
export 'scan_q_r_model.dart';

class ScanQRWidget extends StatefulWidget {
  const ScanQRWidget({super.key});

  @override
  State<ScanQRWidget> createState() => _ScanQRWidgetState();
}

class _ScanQRWidgetState extends State<ScanQRWidget> {
  late ScanQRModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScanQRModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      // Scan QR code
      _model.scanQR = await FlutterBarcodeScanner.scanBarcode(
        '#C62828', // scanning line color
        'Huỷ', // cancel button text
        true, // whether to show the flash icon
        ScanMode.QR,
      );

      while (true) {
        if (_model.scanQR != '') {
          // Query to validate QR
          _model.apiResultGetVoucher = await VoucherGroup.getListCall.call(
            accessToken: FFAppState().accessToken,
            filter: (String code) {
              return '{"_and":[{"code":{"_eq":"$code"},"status":{"_neq":"archived"}}]}';
            }(_model.scanQR),
          );
          if ((_model.apiResultGetVoucher?.succeeded ?? true)) {
            if (VoucherListResourceDataStruct.maybeFromMap(
                        (_model.apiResultGetVoucher?.jsonBody ?? ''))
                    ?.data
                    .first
                    .status ==
                'checkin') {
              context.goNamed(
                'InvalidQR',
                queryParameters: {
                  'voucherId': serializeParam(
                    VoucherListResourceDataStruct.maybeFromMap(
                            (_model.apiResultGetVoucher?.jsonBody ?? ''))
                        ?.data
                        .first
                        .id,
                    ParamType.String,
                  ),
                }.withoutNulls,
              );

              break;
            } else if (VoucherListResourceDataStruct.maybeFromMap(
                        (_model.apiResultGetVoucher?.jsonBody ?? ''))!
                    .data.isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    'Mã QR không tồn tại trên hệ thống',
                    style: TextStyle(
                      color: FlutterFlowTheme.of(context).primaryText,
                    ),
                  ),
                  duration: const Duration(milliseconds: 4000),
                  backgroundColor: FlutterFlowTheme.of(context).error,
                ),
              );

              context.pushNamed('CheckinList');

              return;
            }

            // Navigate to approve screen

            context.pushNamed(
              'ApproveQR',
              queryParameters: {
                'voucherId': serializeParam(
                  VoucherListResourceDataStruct.maybeFromMap(
                          (_model.apiResultGetVoucher?.jsonBody ?? ''))
                      ?.data
                      .first
                      .id,
                  ParamType.String,
                ),
              }.withoutNulls,
            );

            break;
          } else {
            // Notice invalid QR
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'Lỗi checkin, vui lòng thử lại',
                  style: TextStyle(
                    color: FlutterFlowTheme.of(context).primaryText,
                  ),
                ),
                duration: const Duration(milliseconds: 4000),
                backgroundColor: FlutterFlowTheme.of(context).error,
              ),
            );

            context.goNamed('CheckinList');

            break;
          }
        }
        // Wait to next round
        await Future.delayed(const Duration(milliseconds: 200));
      }
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Opacity(
      opacity: 0.0,
      child: GestureDetector(
        onTap: () => _model.unfocusNode.canRequestFocus
            ? FocusScope.of(context).requestFocus(_model.unfocusNode)
            : FocusScope.of(context).unfocus(),
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}
