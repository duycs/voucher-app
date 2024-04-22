import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'voucher_list_search_model.dart';
export 'voucher_list_search_model.dart';

class VoucherListSearchWidget extends StatefulWidget {
  const VoucherListSearchWidget({
    super.key,
    required this.callBack,
    this.initialValue,
  });

  final Future Function(VoucherAgentPricesStruct? value)? callBack;
  final String? initialValue;

  @override
  State<VoucherListSearchWidget> createState() =>
      _VoucherListSearchWidgetState();
}

class _VoucherListSearchWidgetState extends State<VoucherListSearchWidget> {
  late VoucherListSearchModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VoucherListSearchModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.getListVoucher = await VoucherGroup.voucherAgentPricesCall.call(
        accessToken: FFAppState().accessToken,
        filter:
            '{\"_and\":[{\"status\":{\"_eq\":\"published\"},\"agent_id\":{\"_eq\":\"${FFAppState().user.agentId.id}\"}}]}',
      );
      if ((_model.getListVoucher?.succeeded ?? true)) {
        setState(() {
          _model.list = (getJsonField(
            (_model.getListVoucher?.jsonBody ?? ''),
            r'''$.data''',
            true,
          )!
                  .toList()
                  .map<VoucherAgentPricesStruct?>(
                      VoucherAgentPricesStruct.maybeFromMap)
                  .toList() as Iterable<VoucherAgentPricesStruct?>)
              .withoutNulls
              .toList()
              .cast<VoucherAgentPricesStruct>();
        });
      }
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Form(
      key: _model.formKey,
      autovalidateMode: AutovalidateMode.disabled,
      child: FlutterFlowDropDown<String>(
        controller: _model.dropDownVoucherValueController ??=
            FormFieldController<String>(
          _model.dropDownVoucherValue ??=
              widget.initialValue != null && widget.initialValue != ''
                  ? widget.initialValue
                  : ' ',
        ),
        options: List<String>.from(
            _model.list.map((e) => e.voucherTemplateId.id).toList()),
        optionLabels:
            _model.list.map((e) => e.voucherTemplateId.title).toList(),
        onChanged: (val) async {
          setState(() => _model.dropDownVoucherValue = val);
          if (_model.formKey.currentState == null ||
              !_model.formKey.currentState!.validate()) {
            return;
          }
          if (_model.dropDownVoucherValue == null) {
            return;
          }
          setState(() {
            _model.selectVoucher = _model.list
                .where((e) =>
                    e.voucherTemplateId.id == _model.dropDownVoucherValue)
                .toList()
                .first;
          });
          await widget.callBack?.call(
            _model.selectVoucher,
          );
          setState(() {
            _model.dropDownVoucherValueController?.reset();
          });
        },
        width: 300.0,
        height: 40.0,
        searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
              fontFamily: 'Readex Pro',
              letterSpacing: 0.0,
            ),
        searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'Readex Pro',
              letterSpacing: 0.0,
            ),
        textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'Readex Pro',
              letterSpacing: 0.0,
            ),
        hintText: 'Vui lòng chọn voucher ',
        searchHintText: 'Tìm kiếm',
        icon: Icon(
          Icons.keyboard_arrow_down_rounded,
          color: FlutterFlowTheme.of(context).secondaryText,
          size: 24.0,
        ),
        fillColor: FlutterFlowTheme.of(context).secondaryBackground,
        elevation: 2.0,
        borderColor: FlutterFlowTheme.of(context).alternate,
        borderWidth: 2.0,
        borderRadius: 8.0,
        margin: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
        hidesUnderline: true,
        isOverButton: true,
        isSearchable: true,
        isMultiSelect: false,
      ),
    );
  }
}
