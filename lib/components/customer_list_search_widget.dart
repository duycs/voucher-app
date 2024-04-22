import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'customer_list_search_model.dart';
export 'customer_list_search_model.dart';

class CustomerListSearchWidget extends StatefulWidget {
  const CustomerListSearchWidget({
    super.key,
    required this.callBack,
    this.value,
  });

  final Future Function(CustomerStruct? value)? callBack;
  final String? value;

  @override
  State<CustomerListSearchWidget> createState() =>
      _CustomerListSearchWidgetState();
}

class _CustomerListSearchWidgetState extends State<CustomerListSearchWidget> {
  late CustomerListSearchModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomerListSearchModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultyjl = await CustomersGroup.customersListCall.call(
        accessToken: FFAppState().accessToken,
        limit: 5000,
        page: 0,
        filter:
            '{\"_and\":[{\"agent_id\":{\"_eq\":\"${FFAppState().user.agentId.id}\"}}]}',
      );
      if ((_model.apiResultyjl?.succeeded ?? true)) {
        setState(() {
          _model.data = CustomersListStruct.maybeFromMap(
                  (_model.apiResultyjl?.jsonBody ?? ''))!
              .data
              .toList()
              .cast<CustomerStruct>();
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
        controller: _model.dropDownValueController ??=
            FormFieldController<String>(
          _model.dropDownValue ??=
              widget.value != null && widget.value != '' ? widget.value : ' ',
        ),
        options: List<String>.from(_model.data.map((e) => e.id).toList()),
        optionLabels: _model.data.map((e) => e.name).toList(),
        onChanged: (val) async {
          setState(() => _model.dropDownValue = val);
          if (_model.formKey.currentState == null ||
              !_model.formKey.currentState!.validate()) {
            return;
          }
          if (_model.dropDownValue == null) {
            return;
          }
          setState(() {
            _model.selectItem = _model.data
                .where((e) => e.id == _model.dropDownValue)
                .toList()
                .first;
          });
          await widget.callBack?.call(
            _model.selectItem,
          );
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
        hintText: 'Vui lòng chọn khách hàng...',
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
