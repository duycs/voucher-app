import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'quantity_customer_order_model.dart';
export 'quantity_customer_order_model.dart';

class QuantityCustomerOrderWidget extends StatefulWidget {
  const QuantityCustomerOrderWidget({
    super.key,
    this.quantity,
    required this.callback,
  });

  final int? quantity;
  final Future Function(int? quantityUpdate)? callback;

  @override
  State<QuantityCustomerOrderWidget> createState() =>
      _QuantityCustomerOrderWidgetState();
}

class _QuantityCustomerOrderWidgetState
    extends State<QuantityCustomerOrderWidget> {
  late QuantityCustomerOrderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuantityCustomerOrderModel());

    _model.textController ??=
        TextEditingController(text: widget.quantity?.toString());
    _model.textFieldFocusNode ??= FocusNode();
    _model.textFieldFocusNode!.addListener(
      () async {
        await widget.callback?.call(
          int.tryParse(_model.textController.text),
        );
      },
    );
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _model.textController,
      focusNode: _model.textFieldFocusNode,
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
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).primary,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).error,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).error,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      style: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: 'Readex Pro',
            letterSpacing: 0.0,
          ),
      textAlign: TextAlign.end,
      validator: _model.textControllerValidator.asValidator(context),
    );
  }
}
