import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'order_discount_model.dart';
export 'order_discount_model.dart';

class OrderDiscountWidget extends StatefulWidget {
  const OrderDiscountWidget({
    super.key,
    required this.callBackDiscount,
    this.value,
  });

  final Future Function(int? value)? callBackDiscount;
  final int? value;

  @override
  State<OrderDiscountWidget> createState() => _OrderDiscountWidgetState();
}

class _OrderDiscountWidgetState extends State<OrderDiscountWidget> {
  late OrderDiscountModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderDiscountModel());

    _model.discountPhanTramTextController ??= TextEditingController(
        text: widget.value != null ? widget.value?.toString() : ' ');
    _model.discountPhanTramFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _model.discountPhanTramTextController,
      focusNode: _model.discountPhanTramFocusNode,
      onChanged: (_) => EasyDebounce.debounce(
        '_model.discountPhanTramTextController',
        const Duration(milliseconds: 2000),
        () async {
          await widget.callBackDiscount?.call(
            int.tryParse(_model.discountPhanTramTextController.text),
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
      validator:
          _model.discountPhanTramTextControllerValidator.asValidator(context),
    );
  }
}
