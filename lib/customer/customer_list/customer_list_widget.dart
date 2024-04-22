import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/customer/filter_customer_list/filter_customer_list_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'customer_list_model.dart';
export 'customer_list_model.dart';

class CustomerListWidget extends StatefulWidget {
  const CustomerListWidget({super.key});

  @override
  State<CustomerListWidget> createState() => _CustomerListWidgetState();
}

class _CustomerListWidgetState extends State<CustomerListWidget> {
  late CustomerListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomerListModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultyjl = await CustomersGroup.customersListCall.call(
        accessToken: FFAppState().accessToken,
        limit: 5000,
        page: 0,
        filter: (_model.name != null && _model.name != '') &&
                (_model.status != null && _model.status != '')
            ? functions.jsonToString(<String, List<dynamic>>{
                '_and': _model.filterSearch,
              })
            : '{\"_and\":[{\"agent_id\":{\"_eq\":\"${FFAppState().user.agentId.id}\"}}]}',
      );
      if ((_model.apiResultyjl?.succeeded ?? true)) {
        setState(() {
          _model.list = CustomersListStruct.maybeFromMap(
                  (_model.apiResultyjl?.jsonBody ?? ''))!
              .data
              .toList()
              .cast<CustomerStruct>();
        });
      }
    });

    _model.nameCustomersTextController ??= TextEditingController();
    _model.nameCustomersFocusNode ??= FocusNode();
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
            context.pushNamed('CustomerCreate');
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
          leading: FlutterFlowIconButton(
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
          title: Text(
            'Danh sách khách hàng',
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
            primary: false,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: SizedBox(
                            width: 300.0,
                            child: TextFormField(
                              controller: _model.nameCustomersTextController,
                              focusNode: _model.nameCustomersFocusNode,
                              onChanged: (_) => EasyDebounce.debounce(
                                '_model.nameCustomersTextController',
                                const Duration(milliseconds: 500),
                                () async {
                                  setState(() {
                                    _model.name =
                                        _model.nameCustomersTextController.text;
                                    _model.filterSearch = [];
                                    _model.list = [];
                                  });
                                  if ((_model.status != null &&
                                          _model.status != '') &&
                                      (_model.status != ' ')) {
                                    if ((_model.name != null &&
                                            _model.name != '') &&
                                        (_model.name != ' ')) {
                                      setState(() {
                                        _model.addToFilterSearch(<String,
                                            dynamic>{
                                          'name': <String, String?>{
                                            '_icontains': _model.name,
                                          },
                                          'status': <String, String?>{
                                            '_eq': _model.status,
                                          },
                                          'agent_id': <String, String?>{
                                            '_eq': FFAppState().user.agentId.id,
                                          },
                                        });
                                      });
                                    } else {
                                      setState(() {
                                        _model.addToFilterSearch(<String,
                                            dynamic>{
                                          'status': <String, String?>{
                                            '_eq': _model.status,
                                          },
                                          'agent_id': <String, String?>{
                                            '_eq': FFAppState().user.agentId.id,
                                          },
                                        });
                                      });
                                    }
                                  } else {
                                    if ((_model.name != null &&
                                            _model.name != '') &&
                                        (_model.name != ' ')) {
                                      setState(() {
                                        _model.addToFilterSearch(<String,
                                            dynamic>{
                                          'name': <String, String?>{
                                            '_icontains': _model.name,
                                          },
                                          'agent_id': <String, String?>{
                                            '_eq': FFAppState().user.agentId.id,
                                          },
                                        });
                                      });
                                    } else {
                                      setState(() {
                                        _model.addToFilterSearch(<String,
                                            dynamic>{
                                          'agent_id': <String, String?>{
                                            '_eq': FFAppState().user.agentId.id,
                                          },
                                        });
                                      });
                                    }
                                  }

                                  _model.getListCall =
                                      await _model.getListCustomers(context);
                                  setState(() {});

                                  setState(() {});
                                },
                              ),
                              autofocus: false,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Tìm kiếm tên khách hàng',
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
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
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
                                filled: true,
                                prefixIcon: const Icon(
                                  Icons.search,
                                ),
                                suffixIcon: _model.nameCustomersTextController!
                                        .text.isNotEmpty
                                    ? InkWell(
                                        onTap: () async {
                                          _model.nameCustomersTextController
                                              ?.clear();
                                          setState(() {
                                            _model.name = _model
                                                .nameCustomersTextController
                                                .text;
                                            _model.filterSearch = [];
                                            _model.list = [];
                                          });
                                          if ((_model.status != null &&
                                                  _model.status != '') &&
                                              (_model.status != ' ')) {
                                            if ((_model.name != null &&
                                                    _model.name != '') &&
                                                (_model.name != ' ')) {
                                              setState(() {
                                                _model
                                                    .addToFilterSearch(<String,
                                                        dynamic>{
                                                  'name': <String, String?>{
                                                    '_icontains': _model.name,
                                                  },
                                                  'status': <String, String?>{
                                                    '_eq': _model.status,
                                                  },
                                                  'agent_id': <String, String?>{
                                                    '_eq': FFAppState()
                                                        .user
                                                        .agentId
                                                        .id,
                                                  },
                                                });
                                              });
                                            } else {
                                              setState(() {
                                                _model
                                                    .addToFilterSearch(<String,
                                                        dynamic>{
                                                  'status': <String, String?>{
                                                    '_eq': _model.status,
                                                  },
                                                  'agent_id': <String, String?>{
                                                    '_eq': FFAppState()
                                                        .user
                                                        .agentId
                                                        .id,
                                                  },
                                                });
                                              });
                                            }
                                          } else {
                                            if ((_model.name != null &&
                                                    _model.name != '') &&
                                                (_model.name != ' ')) {
                                              setState(() {
                                                _model
                                                    .addToFilterSearch(<String,
                                                        dynamic>{
                                                  'name': <String, String?>{
                                                    '_icontains': _model.name,
                                                  },
                                                  'agent_id': <String, String?>{
                                                    '_eq': FFAppState()
                                                        .user
                                                        .agentId
                                                        .id,
                                                  },
                                                });
                                              });
                                            } else {
                                              setState(() {
                                                _model
                                                    .addToFilterSearch(<String,
                                                        dynamic>{
                                                  'agent_id': <String, String?>{
                                                    '_eq': FFAppState()
                                                        .user
                                                        .agentId
                                                        .id,
                                                  },
                                                });
                                              });
                                            }
                                          }

                                          _model.getListCall = await _model
                                              .getListCustomers(context);
                                          setState(() {});

                                          setState(() {});
                                          setState(() {});
                                        },
                                        child: Icon(
                                          Icons.clear,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
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
                              validator: _model
                                  .nameCustomersTextControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ),
                      FlutterFlowIconButton(
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
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            enableDrag: false,
                            context: context,
                            builder: (context) {
                              return GestureDetector(
                                onTap: () => _model.unfocusNode.canRequestFocus
                                    ? FocusScope.of(context)
                                        .requestFocus(_model.unfocusNode)
                                    : FocusScope.of(context).unfocus(),
                                child: Padding(
                                  padding: MediaQuery.viewInsetsOf(context),
                                  child: FilterCustomerListWidget(
                                    name1: _model.name!,
                                    status1: _model.status!,
                                    callBackRequest:
                                        (statusFilter, nameFilter) async {
                                      setState(() {
                                        _model.nameCustomersTextController
                                            ?.clear();
                                      });
                                      setState(() {
                                        _model.name = nameFilter;
                                        _model.filterSearch = [];
                                        _model.list = [];
                                        _model.status = statusFilter;
                                      });
                                      if ((_model.status != null &&
                                              _model.status != '') &&
                                          (_model.status != ' ')) {
                                        if ((_model.name != null &&
                                                _model.name != '') &&
                                            (_model.name != ' ')) {
                                          setState(() {
                                            _model.addToFilterSearch(<String,
                                                dynamic>{
                                              'name': <String, String?>{
                                                '_icontains': _model.name,
                                              },
                                              'status': <String, String?>{
                                                '_eq': _model.status,
                                              },
                                              'agent_id': <String, String?>{
                                                '_eq': FFAppState()
                                                    .user
                                                    .agentId
                                                    .id,
                                              },
                                            });
                                          });
                                          setState(() {
                                            _model.nameCustomersTextController
                                                ?.text = _model.name!;
                                          });
                                        } else {
                                          setState(() {
                                            _model.addToFilterSearch(<String,
                                                dynamic>{
                                              'status': <String, String?>{
                                                '_eq': _model.status,
                                              },
                                              'agent_id': <String, String?>{
                                                '_eq': FFAppState()
                                                    .user
                                                    .agentId
                                                    .id,
                                              },
                                            });
                                          });
                                        }
                                      } else {
                                        if ((_model.name != null &&
                                                _model.name != '') &&
                                            (_model.name != ' ')) {
                                          setState(() {
                                            _model.addToFilterSearch(<String,
                                                dynamic>{
                                              'name': <String, String?>{
                                                '_icontains': _model.name,
                                              },
                                              'agent_id': <String, String?>{
                                                '_eq': FFAppState()
                                                    .user
                                                    .agentId
                                                    .id,
                                              },
                                            });
                                          });
                                          setState(() {
                                            _model.nameCustomersTextController
                                                ?.text = _model.name!;
                                          });
                                        } else {
                                          setState(() {
                                            _model.addToFilterSearch(<String,
                                                dynamic>{
                                              'agent_id': <String, String?>{
                                                '_eq': FFAppState()
                                                    .user
                                                    .agentId
                                                    .id,
                                              },
                                            });
                                          });
                                        }
                                      }

                                      _model.getListCallSeacrh = await _model
                                          .getListCustomers(context);
                                      setState(() {});
                                    },
                                  ),
                                ),
                              );
                            },
                          ).then((value) => safeSetState(() {}));

                          setState(() {});
                        },
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
                        0,
                        0,
                        44.0,
                      ),
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: dataList.length,
                      separatorBuilder: (_, __) => const SizedBox(height: 1.0),
                      itemBuilder: (context, dataListIndex) {
                        final dataListItem = dataList[dataListIndex];
                        return InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'CustomerDetail',
                              queryParameters: {
                                'itemData': serializeParam(
                                  dataListItem.id,
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
                          },
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 0.0,
                                  color: FlutterFlowTheme.of(context).alternate,
                                  offset: const Offset(
                                    0.0,
                                    1.0,
                                  ),
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 12.0, 16.0, 12.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 44.0,
                                    height: 44.0,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).accent1,
                                      borderRadius: BorderRadius.circular(12.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          '${FFAppConstants.ApiBaseUrl}/assets/${dataListItem.avatar}',
                                          width: 120.0,
                                          height: 120.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  dataListItem.name,
                                                  maxLines: 2,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                Text(
                                                  dataListItem.phone,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelSmall
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ].divide(const SizedBox(height: 4.0)),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: dataListItem.status ==
                                                    'published'
                                                ? FlutterFlowTheme.of(context)
                                                    .secondary
                                                : FlutterFlowTheme.of(context)
                                                    .error,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 4.0, 8.0, 4.0),
                                              child: Text(
                                                dataListItem.status,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodySmall
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      letterSpacing: 0.0,
                                                    ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
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
