import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'filter_purchase_list_model.dart';
export 'filter_purchase_list_model.dart';

class FilterPurchaseListWidget extends StatefulWidget {
  const FilterPurchaseListWidget({
    super.key,
    required this.searchField,
    this.dateStart,
    this.dateEnd,
    this.searchProvider,
    this.callbackList,
  });

  final String? searchField;
  final String? dateStart;
  final String? dateEnd;
  final String? searchProvider;
  final Future Function(String? dateStart, String? dateEnd,
      String? searchProvider, List<PurchaseListStruct>? list)? callbackList;

  @override
  State<FilterPurchaseListWidget> createState() =>
      _FilterPurchaseListWidgetState();
}

class _FilterPurchaseListWidgetState extends State<FilterPurchaseListWidget> {
  late FilterPurchaseListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilterPurchaseListModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.dateStart = widget.dateStart!;
        _model.dateEnd = widget.dateEnd!;
      });
    });

    _model.searchProviderTextController ??= TextEditingController(
        text: widget.searchProvider != null && widget.searchProvider != ''
            ? widget.searchProvider
            : null);
    _model.searchProviderFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: 320.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: const [
            BoxShadow(
              blurRadius: 4.0,
              color: Color(0x33000000),
              offset: Offset(
                0.0,
                2.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            primary: false,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Bộ lọc',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 20.0,
                      borderWidth: 1.0,
                      buttonSize: 40.0,
                      icon: Icon(
                        Icons.clear,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Khoảng thời gian:',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              final datePicked1Date = await showDatePicker(
                                context: context,
                                initialDate: getCurrentTimestamp,
                                firstDate: DateTime(1900),
                                lastDate: DateTime(2050),
                                builder: (context, child) {
                                  return wrapInMaterialDatePickerTheme(
                                    context,
                                    child!,
                                    headerBackgroundColor:
                                        FlutterFlowTheme.of(context).primary,
                                    headerForegroundColor:
                                        FlutterFlowTheme.of(context).info,
                                    headerTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .headlineLarge
                                            .override(
                                              fontFamily: 'Outfit',
                                              fontSize: 32.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                    pickerBackgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                    pickerForegroundColor:
                                        FlutterFlowTheme.of(context)
                                            .primaryText,
                                    selectedDateTimeBackgroundColor:
                                        FlutterFlowTheme.of(context).primary,
                                    selectedDateTimeForegroundColor:
                                        FlutterFlowTheme.of(context).info,
                                    actionButtonForegroundColor:
                                        FlutterFlowTheme.of(context)
                                            .primaryText,
                                    iconSize: 24.0,
                                  );
                                },
                              );

                              if (datePicked1Date != null) {
                                safeSetState(() {
                                  _model.datePicked1 = DateTime(
                                    datePicked1Date.year,
                                    datePicked1Date.month,
                                    datePicked1Date.day,
                                  );
                                });
                              }
                              setState(() {
                                _model.dateStart =
                                    _model.datePicked1!.toString();
                              });
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.calendar_today,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    _model.datePicked1 != null
                                        ? dateTimeFormat(
                                            'dd/MM/yyyy',
                                            functions.stringToDateTime(
                                                _model.datePicked1?.toString()))
                                        : valueOrDefault<String>(
                                            dateTimeFormat(
                                                'dd/MM/yyyy',
                                                functions.stringToDateTime(
                                                    widget.dateStart)),
                                            'dd/MM/yyyy',
                                          ),
                                    'Khoảng thời gian',
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ].divide(const SizedBox(height: 8.0)),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              final datePicked2Date = await showDatePicker(
                                context: context,
                                initialDate: getCurrentTimestamp,
                                firstDate: DateTime(1900),
                                lastDate: DateTime(2050),
                                builder: (context, child) {
                                  return wrapInMaterialDatePickerTheme(
                                    context,
                                    child!,
                                    headerBackgroundColor:
                                        FlutterFlowTheme.of(context).primary,
                                    headerForegroundColor:
                                        FlutterFlowTheme.of(context).info,
                                    headerTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .headlineLarge
                                            .override(
                                              fontFamily: 'Outfit',
                                              fontSize: 32.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                    pickerBackgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                    pickerForegroundColor:
                                        FlutterFlowTheme.of(context)
                                            .primaryText,
                                    selectedDateTimeBackgroundColor:
                                        FlutterFlowTheme.of(context).primary,
                                    selectedDateTimeForegroundColor:
                                        FlutterFlowTheme.of(context).info,
                                    actionButtonForegroundColor:
                                        FlutterFlowTheme.of(context)
                                            .primaryText,
                                    iconSize: 24.0,
                                  );
                                },
                              );

                              if (datePicked2Date != null) {
                                safeSetState(() {
                                  _model.datePicked2 = DateTime(
                                    datePicked2Date.year,
                                    datePicked2Date.month,
                                    datePicked2Date.day,
                                  );
                                });
                              }
                              setState(() {
                                _model.dateEnd = _model.datePicked2!.toString();
                              });
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.calendar_today,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    _model.datePicked2 != null
                                        ? dateTimeFormat(
                                            'dd/MM/yyyy',
                                            functions.stringToDateTime(
                                                _model.datePicked2?.toString()))
                                        : valueOrDefault<String>(
                                            dateTimeFormat(
                                                'dd/MM/yyyy',
                                                functions.stringToDateTime(
                                                    widget.dateEnd)),
                                            'dd/MM/yyyy',
                                          ),
                                    'Khoảng thời gian',
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ].divide(const SizedBox(height: 8.0)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ].divide(const SizedBox(height: 8.0)),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nhà cung cấp:',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                      child: TextFormField(
                        controller: _model.searchProviderTextController,
                        focusNode: _model.searchProviderFocusNode,
                        onFieldSubmitted: (_) async {
                          setState(() {
                            _model.searchProvider = _model.searchProvider;
                          });
                        },
                        autofocus: false,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'Nhập nhà cung cấp',
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).alternate,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
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
                        validator: _model.searchProviderTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ].divide(const SizedBox(height: 8.0)),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: FFButtonWidget(
                          onPressed: () async {
                            setState(() {
                              _model.searchProviderTextController?.clear();
                            });
                            setState(() {
                              _model.dateStart = '';
                              _model.dateEnd = '';
                            });
                            _model.apiResultGetPurchaseList =
                                await PurchaseGroup.purchaseListCall.call(
                              filter:
                                  '{\"_and\":[{\"_and\":[{\"agent_id\":{\"_eq\":\"${FFAppState().user.agentId.id}\"}}]}]}',
                              accessToken: FFAppState().accessToken,
                              limit: 5000,
                            );
                            if ((_model.apiResultGetPurchaseList?.succeeded ??
                                true)) {
                              _model.updatePage(() {
                                _model.data =
                                    PurchaseListDataStruct.maybeFromMap((_model
                                                .apiResultGetPurchaseList
                                                ?.jsonBody ??
                                            ''))!
                                        .data
                                        .toList()
                                        .cast<PurchaseListStruct>();
                              });
                            }
                            await widget.callbackList?.call(
                              '',
                              '',
                              '',
                              PurchaseListDataStruct.maybeFromMap((_model
                                          .apiResultGetPurchaseList?.jsonBody ??
                                      ''))
                                  ?.data,
                            );
                            Navigator.pop(context);

                            setState(() {});
                          },
                          text: 'Xoá bộ lọc',
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                ),
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).alternate,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      Expanded(
                        child: FFButtonWidget(
                          onPressed: () async {
                            _model.apiResultFilter =
                                await PurchaseGroup.purchaseListCall.call(
                              filter:
                                  '{\"_and\":[{\"_and\":[{\"agent_id\":{\"_eq\":\"${FFAppState().user.agentId.id}\"}}${widget.searchField != null && widget.searchField != '' ? ',{\"code\":{\"_icontains\":\"${widget.searchField}\"}}' : ' '}${_model.dateStart != '' ? ',{\"date_created\":{\"_gte\":\"${dateTimeFormat('yyyy-MM-dd', functions.stringToDateTime(_model.dateStart))}\"}}' : ' '}${_model.dateEnd != '' ? ',{\"date_created\":{\"_lte\":\"${dateTimeFormat('yyyy-MM-dd', functions.stringToDateTime(_model.dateEnd))}\"}}' : ' '}${_model.searchProviderTextController.text != '' ? ',{\"provider_id\":{\"name\":{\"_icontains\":\"${_model.searchProviderTextController.text}\"}}}' : '  '}]}]}',
                              accessToken: FFAppState().accessToken,
                              limit: 5000,
                            );
                            if ((_model.apiResultFilter?.succeeded ?? true)) {
                              setState(() {
                                _model.data =
                                    PurchaseListDataStruct.maybeFromMap(
                                            (_model.apiResultFilter?.jsonBody ??
                                                ''))!
                                        .data
                                        .toList()
                                        .cast<PurchaseListStruct>();
                              });
                              await widget.callbackList?.call(
                                _model.dateStart,
                                _model.dateEnd,
                                _model.searchProviderTextController.text,
                                PurchaseListDataStruct.maybeFromMap(
                                        (_model.apiResultFilter?.jsonBody ??
                                            ''))
                                    ?.data,
                              );
                              Navigator.pop(context);
                            }

                            setState(() {});
                          },
                          text: 'Xác nhận',
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: const Color(0xFF33BA45),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                ),
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ].divide(const SizedBox(width: 16.0)),
                  ),
                ),
              ].divide(const SizedBox(height: 8.0)),
            ),
          ),
        ),
      ),
    );
  }
}
