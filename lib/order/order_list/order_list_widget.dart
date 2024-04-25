import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/order/filter_order_list/filter_order_list_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'order_list_model.dart';
export 'order_list_model.dart';

class OrderListWidget extends StatefulWidget {
  const OrderListWidget({super.key});

  @override
  State<OrderListWidget> createState() => _OrderListWidgetState();
}

class _OrderListWidgetState extends State<OrderListWidget> {
  late OrderListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderListModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.addToFilterSearch(<String, dynamic>{
          'agent_id': <String, String?>{
            'id': FFAppState().user.agentId.id,
          },
        });
      });
      _model.apiResultCustomerOrderList =
          await CustomersGroup.customerOrdersListCall.call(
        accessToken: FFAppState().accessToken,
        limit: 5000,
        offset: 0,
        filter: functions.jsonToString(<String, List<dynamic>?>{
          '_and': _model.filterSearch,
        }),
      );
      if ((_model.apiResultCustomerOrderList?.succeeded ?? true)) {
        setState(() {
          _model.list = CustomersOrderListStruct.maybeFromMap(
                  (_model.apiResultCustomerOrderList?.jsonBody ?? ''))!
              .data
              .toList()
              .cast<CustomerOrderStruct>();
        });
      }
    });

    _model.codeSearchTextController ??= TextEditingController();
    _model.codeSearchFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            context.pushNamed('OrderCreate');
          },
          backgroundColor: FlutterFlowTheme.of(context).primary,
          elevation: 8.0,
          child: Icon(
            Icons.add,
            color: FlutterFlowTheme.of(context).info,
            size: 24.0,
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: Visibility(
            visible: '1' == '2',
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 60.0,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 30.0,
              ),
              onPressed: () async {
                context.pop();
              },
            ),
          ),
          title: Text(
            'Danh sách đơn hàng',
            style: FlutterFlowTheme.of(context).bodyLarge.override(
                  fontFamily: 'Readex Pro',
                  fontSize: 18.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 1.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 8.0, 0.0),
                          child: TextFormField(
                            controller: _model.codeSearchTextController,
                            focusNode: _model.codeSearchFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.codeSearchTextController',
                              const Duration(milliseconds: 500),
                              () async {
                                setState(() {
                                  _model.filter = '';
                                  _model.codeSearch =
                                      _model.codeSearchTextController.text;
                                });
                                setState(() {
                                  _model.filter =
                                      '{\"_and\":[{\"agent_id\":{\"id\":{\"_eq\":\"${FFAppState().user.agentId.id}\"}}}${(_model.dateStart != '') && (_model.dateStart != ' ') ? ',{\"date_created\":{\"_gte\":\"${_model.dateStart}\"}}' : ' '}${(_model.dateEnd != '') && (_model.dateEnd != ' ') ? ',{\"date_created\":{\"_lte\":\"${_model.dateEnd}\"}}' : ' '}${(_model.status != '') && (_model.status != ' ') ? '${_model.status == 'published' ? ',{\"status\":{\"_eq\":\"' : ',{\"status\":{\"_neq\":\"'}${'published'}\"}}' : ' '}${(_model.searchName != '') && (_model.searchName != ' ') ? ',{\"customer_id\":{\"name\":{\"_icontains\":\"${_model.searchName}\"}}}' : ' '}${(_model.searchPhone != '') && (_model.searchPhone != ' ') ? ',{\"customer_id\":{\"phone\":{\"_icontains\":\"${_model.searchPhone}\"}}}' : ' '}${(_model.codeSearch != null && _model.codeSearch != '') && (_model.codeSearch != ' ') ? ',{\"code\":{\"_icontains\":\"${_model.codeSearch}\"}}' : ' '}]}';
                                });
                                _model.apiResultCustomerOrderListCode =
                                    await CustomersGroup.customerOrdersListCall
                                        .call(
                                  accessToken: FFAppState().accessToken,
                                  limit: 5000,
                                  offset: 0,
                                  filter: _model.filter,
                                );
                                if ((_model.apiResultCustomerOrderListCode
                                        ?.succeeded ??
                                    true)) {
                                  setState(() {
                                    _model.list = CustomersOrderListStruct
                                            .maybeFromMap((_model
                                                    .apiResultCustomerOrderListCode
                                                    ?.jsonBody ??
                                                ''))!
                                        .data
                                        .toList()
                                        .cast<CustomerOrderStruct>();
                                  });
                                }

                                setState(() {});
                              },
                            ),
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Tìm kiếm theo mã',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              prefixIcon: const Icon(
                                Icons.search,
                              ),
                              suffixIcon: _model
                                      .codeSearchTextController!.text.isNotEmpty
                                  ? InkWell(
                                      onTap: () async {
                                        _model.codeSearchTextController
                                            ?.clear();
                                        setState(() {
                                          _model.filter = '';
                                          _model.codeSearch = _model
                                              .codeSearchTextController.text;
                                        });
                                        setState(() {
                                          _model.filter =
                                              '{\"_and\":[{\"agent_id\":{\"id\":{\"_eq\":\"${FFAppState().user.agentId.id}\"}}}${(_model.dateStart != '') && (_model.dateStart != ' ') ? ',{\"date_created\":{\"_gte\":\"${_model.dateStart}\"}}' : ' '}${(_model.dateEnd != '') && (_model.dateEnd != ' ') ? ',{\"date_created\":{\"_lte\":\"${_model.dateEnd}\"}}' : ' '}${(_model.status != '') && (_model.status != ' ') ? '${_model.status == 'published' ? ',{\"status\":{\"_eq\":\"' : ',{\"status\":{\"_neq\":\"'}${'published'}\"}}' : ' '}${(_model.searchName != '') && (_model.searchName != ' ') ? ',{\"customer_id\":{\"name\":{\"_icontains\":\"${_model.searchName}\"}}}' : ' '}${(_model.searchPhone != '') && (_model.searchPhone != ' ') ? ',{\"customer_id\":{\"phone\":{\"_icontains\":\"${_model.searchPhone}\"}}}' : ' '}${(_model.codeSearch != null && _model.codeSearch != '') && (_model.codeSearch != ' ') ? ',{\"code\":{\"_icontains\":\"${_model.codeSearch}\"}}' : ' '}]}';
                                        });
                                        _model.apiResultCustomerOrderListCode =
                                            await CustomersGroup
                                                .customerOrdersListCall
                                                .call(
                                          accessToken: FFAppState().accessToken,
                                          limit: 5000,
                                          offset: 0,
                                          filter: _model.filter,
                                        );
                                        if ((_model
                                                .apiResultCustomerOrderListCode
                                                ?.succeeded ??
                                            true)) {
                                          setState(() {
                                            _model
                                                .list = CustomersOrderListStruct
                                                    .maybeFromMap((_model
                                                            .apiResultCustomerOrderListCode
                                                            ?.jsonBody ??
                                                        ''))!
                                                .data
                                                .toList()
                                                .cast<CustomerOrderStruct>();
                                          });
                                        }

                                        setState(() {});
                                        setState(() {});
                                      },
                                      child: const Icon(
                                        Icons.clear,
                                        size: 22,
                                      ),
                                    )
                                  : null,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                            validator: _model.codeSearchTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                      Builder(
                        builder: (context) => Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 4.0, 0.0),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 10.0,
                            borderWidth: 1.0,
                            buttonSize: 50.0,
                            icon: Icon(
                              Icons.tune_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 30.0,
                            ),
                            onPressed: () async {
                              await showDialog(
                                context: context,
                                builder: (dialogContext) {
                                  return Dialog(
                                    elevation: 0,
                                    insetPadding: EdgeInsets.zero,
                                    backgroundColor: Colors.transparent,
                                    alignment: const AlignmentDirectional(0.0, 0.0)
                                        .resolve(Directionality.of(context)),
                                    child: GestureDetector(
                                      onTap: () => _model
                                              .unfocusNode.canRequestFocus
                                          ? FocusScope.of(context)
                                              .requestFocus(_model.unfocusNode)
                                          : FocusScope.of(context).unfocus(),
                                      child: FilterOrderListWidget(
                                        searchField: _model
                                            .codeSearchTextController.text,
                                        dateStartReturn: _model.dateStart,
                                        dateEndReturn: _model.dateEnd,
                                        statusReturn: _model.status,
                                        searchNameReturn: _model.searchName,
                                        searchPhone: _model.searchPhone,
                                        callbackList: (dateStart,
                                            dateEnd,
                                            status,
                                            customerName,
                                            customerPhone) async {
                                          setState(() {
                                            _model.dateStart = dateStart!;
                                            _model.dateEnd = dateEnd!;
                                            _model.status = status!;
                                            _model.searchName = customerName!;
                                            _model.searchPhone = customerPhone!;
                                            _model.filterSearch = [];
                                            _model.filter = '';
                                          });
                                          setState(() {
                                            _model.filter =
                                                '{\"_and\":[{\"agent_id\":{\"id\":{\"_eq\":\"${FFAppState().user.agentId.id}\"}}}${(_model.dateStart != '') && (_model.dateStart != ' ') ? ',{\"date_created\":{\"_gte\":\"${_model.dateStart}\"}}' : ' '}${(_model.dateEnd != '') && (_model.dateEnd != ' ') ? ',{\"date_created\":{\"_lte\":\"${_model.dateEnd}\"}}' : ' '}${(_model.status != '') && (status != ' ') ? '${_model.status == 'published' ? ',{\"status\":{\"_eq\":\"' : ',{\"status\":{\"_neq\":\"'}${'published'}\"}}' : ' '}${(_model.searchName != '') && (_model.searchName != ' ') ? ',{\"customer_id\":{\"name\":{\"_icontains\":\"${_model.searchName}\"}}}' : ' '}${(_model.searchPhone != '') && (_model.searchPhone != ' ') ? ',{\"customer_id\":{\"phone\":{\"_icontains\":\"${_model.searchPhone}\"}}}' : ' '}${(_model.codeSearch != null && _model.codeSearch != '') && (_model.codeSearch != ' ') ? ',{\"code\":{\"_icontains\":\"${_model.codeSearch}\"}}' : ' '}]}';
                                          });
                                          _model.apiResultCustomerOrderListSearch =
                                              await CustomersGroup
                                                  .customerOrdersListCall
                                                  .call(
                                            accessToken:
                                                FFAppState().accessToken,
                                            limit: 5000,
                                            offset: 0,
                                            filter: _model.filter,
                                          );
                                          if ((_model
                                                  .apiResultCustomerOrderListSearch
                                                  ?.succeeded ??
                                              true)) {
                                            setState(() {
                                              _model
                                                  .list = CustomersOrderListStruct
                                                      .maybeFromMap((_model
                                                              .apiResultCustomerOrderListSearch
                                                              ?.jsonBody ??
                                                          ''))!
                                                  .data
                                                  .toList()
                                                  .cast<CustomerOrderStruct>();
                                            });
                                          }
                                        },
                                      ),
                                    ),
                                  );
                                },
                              ).then((value) => setState(() {}));

                              setState(() {});
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Builder(
                  builder: (context) {
                    final dataList = _model.list.toList();
                    return ListView.separated(
                      padding: const EdgeInsets.fromLTRB(
                        0,
                        12.0,
                        0,
                        44.0,
                      ),
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: dataList.length,
                      separatorBuilder: (_, __) => const SizedBox(height: 4.0),
                      itemBuilder: (context, dataListIndex) {
                        final dataListItem = dataList[dataListIndex];
                        return Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                'OrderDetail',
                                queryParameters: {
                                  'itemDetail': serializeParam(
                                    dataListItem.toMap(),
                                    ParamType.JSON,
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
                            },
                            child: Material(
                              color: Colors.transparent,
                              elevation: 1.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Container(
                                width: double.infinity,
                                constraints: const BoxConstraints(
                                  maxWidth: 570.0,
                                ),
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .alternate,
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      12.0, 8.0, 12.0, 16.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            '#${(dataListIndex + 1).toString()}',
                                            style:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          'Readex Pro',
                                                      letterSpacing: 0.0,
                                                    ),
                                          ),
                                          Expanded(
                                            child: Text(
                                              dataListItem.code,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FontWeight.w500,
                                                  ),
                                            ),
                                          ),
                                          FlutterFlowIconButton(
                                            borderRadius: 20.0,
                                            borderWidth: 1.0,
                                            buttonSize: 40.0,
                                            icon: Icon(
                                              Icons.more_vert,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                            onPressed: () {
                                              print('IconButton pressed ...');
                                            },
                                          ),
                                        ].divide(const SizedBox(width: 4.0)),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 5.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Khách hàng:',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Text(
                                              dataListItem.customerId.name,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ].divide(const SizedBox(width: 4.0)),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 1.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Flexible(
                                              child: Row(
                                                mainAxisSize:
                                                    MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'SĐT:',
                                                    style: FlutterFlowTheme
                                                            .of(context)
                                                        .labelSmall
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                      dataListItem
                                                          .customerId.phone,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            fontSize: 14.0,
                                                            letterSpacing:
                                                                0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ].divide(
                                                    const SizedBox(width: 4.0)),
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Text(
                                                  'NV:',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelSmall
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                Text(
                                                  dataListItem
                                                      .userCreated.firstName,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ].divide(const SizedBox(width: 4.0)),
                                            ),
                                          ].divide(const SizedBox(width: 4.0)),
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Ngày:',
                                            style:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmall
                                                    .override(
                                                      fontFamily:
                                                          'Readex Pro',
                                                      letterSpacing: 0.0,
                                                    ),
                                          ),
                                          Expanded(
                                            child: Text(
                                              dateTimeFormat(
                                                'dd-MM-yyyy',
                                                functions.stringToDateTime(
                                                    dataListItem.dateCreated),
                                                locale: FFLocalizations.of(
                                                        context)
                                                    .languageCode,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                          Container(
                                            height: 25.0,
                                            decoration: BoxDecoration(
                                              color: dataListItem.status ==
                                                      'published'
                                                  ? FlutterFlowTheme.of(
                                                          context)
                                                      .accent2
                                                  : FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                            alignment: const AlignmentDirectional(
                                                0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 12.0, 0.0),
                                              child: Text(
                                                dataListItem.status ==
                                                        'published'
                                                    ? 'Hoàn thành'
                                                    : 'Chưa hoàn thành',
                                                style:
                                                    FlutterFlowTheme.of(
                                                            context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: dataListItem
                                                                      .status ==
                                                                  'published'
                                                              ? FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondary
                                                              : FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondaryBackground,
                                                          fontSize: 13.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight
                                                                  .normal,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ].divide(const SizedBox(width: 4.0)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
