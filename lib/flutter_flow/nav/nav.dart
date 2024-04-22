import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => const NavBarPage(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => const NavBarPage(),
        ),
        FFRoute(
          name: 'CheckinList',
          path: '/checkinList',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'CheckinList')
              : const CheckinListWidget(),
        ),
        FFRoute(
          name: 'Login',
          path: '/login',
          builder: (context, params) => const LoginWidget(),
        ),
        FFRoute(
          name: 'Profile',
          path: '/profile',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'Profile')
              : const ProfileWidget(),
        ),
        FFRoute(
          name: 'ScanQR',
          path: '/scanQR',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'ScanQR')
              : const ScanQRWidget(),
        ),
        FFRoute(
          name: 'CreateAgent',
          path: '/createAgent',
          builder: (context, params) => const CreateAgentWidget(),
        ),
        FFRoute(
          name: 'CustomerEdit',
          path: '/customerEdit',
          builder: (context, params) => CustomerEditWidget(
            itemData: params.getParam(
              'itemData',
              ParamType.JSON,
            ),
          ),
        ),
        FFRoute(
          name: 'CustomerCreate',
          path: '/customerCreate',
          builder: (context, params) => const CustomerCreateWidget(),
        ),
        FFRoute(
          name: 'CustomerDetail',
          path: '/customerDetail',
          builder: (context, params) => CustomerDetailWidget(
            itemData: params.getParam(
              'itemData',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'OrderList',
          path: '/orderList',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'OrderList')
              : const OrderListWidget(),
        ),
        FFRoute(
          name: 'OrderCreate',
          path: '/orderCreate',
          builder: (context, params) => const OrderCreateWidget(),
        ),
        FFRoute(
          name: 'OrderPay',
          path: '/orderPay',
          builder: (context, params) => const OrderPayWidget(),
        ),
        FFRoute(
          name: 'OrderDetail',
          path: '/orderDetail',
          builder: (context, params) => OrderDetailWidget(
            itemDetail: params.getParam(
              'itemDetail',
              ParamType.JSON,
            ),
          ),
        ),
        FFRoute(
          name: 'OrderEdit',
          path: '/orderEdit',
          builder: (context, params) => OrderEditWidget(
            itemOne: params.getParam(
              'itemOne',
              ParamType.JSON,
            ),
            customer: params.getParam(
              'customer',
              ParamType.JSON,
            ),
          ),
        ),
        FFRoute(
          name: 'VoucherList',
          path: '/voucherList',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'VoucherList')
              : const VoucherListWidget(),
        ),
        FFRoute(
          name: 'VoucherDetail',
          path: '/voucherDetail',
          builder: (context, params) => VoucherDetailWidget(
            itemList: params.getParam(
              'itemList',
              ParamType.JSON,
            ),
          ),
        ),
        FFRoute(
          name: 'PurchaseList',
          path: '/purchaseList',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'PurchaseList')
              : const PurchaseListWidget(),
        ),
        FFRoute(
          name: 'PurchaseDetail',
          path: '/purchaseDetail',
          builder: (context, params) => PurchaseDetailWidget(
            item: params.getParam(
              'item',
              ParamType.JSON,
            ),
          ),
        ),
        FFRoute(
          name: 'InvalidQR',
          path: '/invalidQR',
          builder: (context, params) => InvalidQRWidget(
            voucherId: params.getParam(
              'voucherId',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'CustomerList',
          path: '/customerList',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'CustomerList')
              : const CustomerListWidget(),
        ),
        FFRoute(
          name: 'Dashboard',
          path: '/dashboard',
          builder: (context, params) => const DashboardWidget(),
        ),
        FFRoute(
          name: 'dashdemo',
          path: '/dashdemo',
          builder: (context, params) => const DashdemoWidget(),
        ),
        FFRoute(
          name: 'ApproveQR',
          path: '/approveQR',
          builder: (context, params) => ApproveQRWidget(
            voucherId: params.getParam(
              'voucherId',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'CheckinDetail',
          path: '/checkinDetail',
          builder: (context, params) => CheckinDetailWidget(
            voucherId: params.getParam(
              'voucherId',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'ProfileDetail',
          path: '/profileDetail',
          builder: (context, params) => const ProfileDetailWidget(),
        ),
        FFRoute(
          name: 'ChangePassWord',
          path: '/changePassWord',
          builder: (context, params) => const ChangePassWordWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    StructBuilder<T>? structBuilder,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
