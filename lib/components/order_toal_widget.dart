import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'order_toal_model.dart';
export 'order_toal_model.dart';

class OrderToalWidget extends StatefulWidget {
  const OrderToalWidget({
    super.key,
    required this.callBacktotal,
    this.value,
  });

  final Future Function(int? value)? callBacktotal;
  final int? value;

  @override
  State<OrderToalWidget> createState() => _OrderToalWidgetState();
}

class _OrderToalWidgetState extends State<OrderToalWidget> {
  late OrderToalModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderToalModel());

    _model.numberTotalTextController ??= TextEditingController(
        text: widget.value != null ? widget.value?.toString() : '0');
    _model.numberTotalFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _model.numberTotalTextController,
      focusNode: _model.numberTotalFocusNode,
      onChanged: (_) => EasyDebounce.debounce(
        '_model.numberTotalTextController',
        const Duration(milliseconds: 2000),
        () async {
          await widget.callBacktotal?.call(
            int.tryParse(_model.numberTotalTextController.text),
          );
        },
      ),
      autofocus: false,
      obscureText: false,
      decoration: InputDecoration(
        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
              fontFamily: 'Readex Pro',
              letterSpacing: 0.0,
            ),
        hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
              fontFamily: 'Readex Pro',
              letterSpacing: 0.0,
            ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).alternate,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(0.0),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).primary,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(0.0),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).error,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(0.0),
        ),
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).error,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(0.0),
        ),
      ),
      style: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: 'Readex Pro',
            letterSpacing: 0.0,
          ),
      textAlign: TextAlign.end,
      keyboardType: TextInputType.number,
      validator: _model.numberTotalTextControllerValidator.asValidator(context),
    );
  }
}
