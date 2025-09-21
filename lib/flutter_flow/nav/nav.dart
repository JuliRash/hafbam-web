import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';

import '/auth/custom_auth/custom_auth_user_provider.dart';

import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  HafbamFinanceAuthUser? initialUser;
  HafbamFinanceAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(HafbamFinanceAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? NavBarPage() : LoginPageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : LoginPageWidget(),
          routes: [
            FFRoute(
              name: FundWalletPageWidget.routeName,
              path: FundWalletPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => FundWalletPageWidget(),
            ),
            FFRoute(
              name: FWTransactionHistoryPageWidget.routeName,
              path: FWTransactionHistoryPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => FWTransactionHistoryPageWidget(),
            ),
            FFRoute(
                name: InvestmentWidget.routeName,
                path: InvestmentWidget.routePath,
                builder: (context, params) => params.isEmpty
                    ? NavBarPage(initialPage: 'Investment')
                    : NavBarPage(
                        initialPage: 'Investment',
                        page: InvestmentWidget(),
                      )),
            FFRoute(
                name: SettingsWidget.routeName,
                path: SettingsWidget.routePath,
                requireAuth: true,
                builder: (context, params) => params.isEmpty
                    ? NavBarPage(initialPage: 'Settings')
                    : NavBarPage(
                        initialPage: 'Settings',
                        page: SettingsWidget(),
                      )),
            FFRoute(
              name: NotificationsWidget.routeName,
              path: NotificationsWidget.routePath,
              requireAuth: true,
              builder: (context, params) => NotificationsWidget(),
            ),
            FFRoute(
              name: WithdrawPageWidget.routeName,
              path: WithdrawPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => WithdrawPageWidget(),
            ),
            FFRoute(
                name: WeeklySavingsPageWidget.routeName,
                path: WeeklySavingsPageWidget.routePath,
                requireAuth: true,
                builder: (context, params) => NavBarPage(
                      initialPage: '',
                      page: WeeklySavingsPageWidget(),
                    )),
            FFRoute(
                name: DailySavingsPageWidget.routeName,
                path: DailySavingsPageWidget.routePath,
                requireAuth: true,
                builder: (context, params) => NavBarPage(
                      initialPage: '',
                      page: DailySavingsPageWidget(),
                    )),
            FFRoute(
                name: SchemesPageWidget.routeName,
                path: SchemesPageWidget.routePath,
                requireAuth: true,
                builder: (context, params) => NavBarPage(
                      initialPage: '',
                      page: SchemesPageWidget(),
                    )),
            FFRoute(
              name: LoginPageWidget.routeName,
              path: LoginPageWidget.routePath,
              builder: (context, params) => LoginPageWidget(),
            ),
            FFRoute(
              name: RegistrationPageWidget.routeName,
              path: RegistrationPageWidget.routePath,
              builder: (context, params) => RegistrationPageWidget(),
            ),
            FFRoute(
              name: AdminPageWidget.routeName,
              path: AdminPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => AdminPageWidget(),
            ),
            FFRoute(
              name: AdminTransactionsPageWidget.routeName,
              path: AdminTransactionsPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => AdminTransactionsPageWidget(),
            ),
            FFRoute(
              name: ForgotPasswordWidget.routeName,
              path: ForgotPasswordWidget.routePath,
              builder: (context, params) => ForgotPasswordWidget(),
            ),
            FFRoute(
              name: WithdrawTransHistoryPageWidget.routeName,
              path: WithdrawTransHistoryPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => WithdrawTransHistoryPageWidget(),
            ),
            FFRoute(
              name: TransHistoryPageWidget.routeName,
              path: TransHistoryPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => TransHistoryPageWidget(),
            ),
            FFRoute(
              name: AirtimePageWidget.routeName,
              path: AirtimePageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => AirtimePageWidget(),
            ),
            FFRoute(
              name: LoanRequestPageWidget.routeName,
              path: LoanRequestPageWidget.routePath,
              builder: (context, params) => LoanRequestPageWidget(),
            ),
            FFRoute(
                name: MonthlySavingsPageWidget.routeName,
                path: MonthlySavingsPageWidget.routePath,
                builder: (context, params) => NavBarPage(
                      initialPage: '',
                      page: MonthlySavingsPageWidget(),
                    )),
            FFRoute(
              name: DataPageWidget.routeName,
              path: DataPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => DataPageWidget(),
            ),
            FFRoute(
              name: ElectricityPageWidget.routeName,
              path: ElectricityPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => ElectricityPageWidget(),
            ),
            FFRoute(
              name: CablePageWidget.routeName,
              path: CablePageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => CablePageWidget(),
            ),
            FFRoute(
                name: ReferralWidget.routeName,
                path: ReferralWidget.routePath,
                requireAuth: true,
                builder: (context, params) => params.isEmpty
                    ? NavBarPage(initialPage: 'Referral')
                    : NavBarPage(
                        initialPage: 'Referral',
                        page: ReferralWidget(),
                      )),
            FFRoute(
              name: TermsOfServicePageWidget.routeName,
              path: TermsOfServicePageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => TermsOfServicePageWidget(),
            ),
            FFRoute(
              name: EmailVerificationWidget.routeName,
              path: EmailVerificationWidget.routePath,
              builder: (context, params) => EmailVerificationWidget(),
            ),
            FFRoute(
              name: ResetPasswordPageWidget.routeName,
              path: ResetPasswordPageWidget.routePath,
              builder: (context, params) => ResetPasswordPageWidget(),
            ),
            FFRoute(
              name: AirtimeDetailsWidget.routeName,
              path: AirtimeDetailsWidget.routePath,
              requireAuth: true,
              builder: (context, params) => AirtimeDetailsWidget(),
            ),
            FFRoute(
              name: PassResetVerifyWidget.routeName,
              path: PassResetVerifyWidget.routePath,
              builder: (context, params) => PassResetVerifyWidget(),
            ),
            FFRoute(
              name: CompleteProfilePageWidget.routeName,
              path: CompleteProfilePageWidget.routePath,
              builder: (context, params) => CompleteProfilePageWidget(),
            ),
            FFRoute(
              name: EditProfilePageWidget.routeName,
              path: EditProfilePageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => EditProfilePageWidget(),
            ),
            FFRoute(
              name: DataDetailsWidget.routeName,
              path: DataDetailsWidget.routePath,
              requireAuth: true,
              builder: (context, params) => DataDetailsWidget(),
            ),
            FFRoute(
              name: ReceiptPageWidget.routeName,
              path: ReceiptPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => ReceiptPageWidget(),
            ),
            FFRoute(
              name: HomePage1Widget.routeName,
              path: HomePage1Widget.routePath,
              requireAuth: true,
              builder: (context, params) => HomePage1Widget(),
            ),
            FFRoute(
                name: HomeWidget.routeName,
                path: HomeWidget.routePath,
                requireAuth: true,
                builder: (context, params) => params.isEmpty
                    ? NavBarPage(initialPage: 'Home')
                    : NavBarPage(
                        initialPage: 'Home',
                        page: HomeWidget(),
                      )),
            FFRoute(
              name: ProfileInformationWidget.routeName,
              path: ProfileInformationWidget.routePath,
              requireAuth: true,
              builder: (context, params) => ProfileInformationWidget(),
            ),
            FFRoute(
              name: EmailVerification2Widget.routeName,
              path: EmailVerification2Widget.routePath,
              requireAuth: true,
              builder: (context, params) => EmailVerification2Widget(),
            ),
            FFRoute(
              name: CableDetailsWidget.routeName,
              path: CableDetailsWidget.routePath,
              requireAuth: true,
              builder: (context, params) => CableDetailsWidget(),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
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
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

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

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
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
      (state.allParams.length == 1 &&
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
    ParamType type, {
    bool isList = false,
    StructBuilder<T>? structBuilder,
  }) {
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
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/login';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  child: Center(
                    child: Image.asset(
                      'assets/images/logo-removebg-preview-3D-2.png',
                      width: 200.0,
                      height: 200.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                )
              : page;

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

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
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

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
