// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes_imports.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $splashRoute,
      $loginRoute,
      $registrationRoute,
      $mainRoute,
    ];

RouteBase get $splashRoute => GoRouteData.$route(
      path: '/splash',
      factory: $SplashRouteExtension._fromState,
    );

extension $SplashRouteExtension on SplashRoute {
  static SplashRoute _fromState(GoRouterState state) => SplashRoute(
        fromPage: state.uri.queryParameters['from-page'],
      );

  String get location => GoRouteData.$location(
        '/splash',
        queryParams: {
          if (fromPage != null) 'from-page': fromPage,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $loginRoute => GoRouteData.$route(
      path: '/login',
      factory: $LoginRouteExtension._fromState,
    );

extension $LoginRouteExtension on LoginRoute {
  static LoginRoute _fromState(GoRouterState state) => LoginRoute(
        fromPage: state.uri.queryParameters['from-page'],
      );

  String get location => GoRouteData.$location(
        '/login',
        queryParams: {
          if (fromPage != null) 'from-page': fromPage,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $registrationRoute => GoRouteData.$route(
      path: '/registration',
      factory: $RegistrationRouteExtension._fromState,
    );

extension $RegistrationRouteExtension on RegistrationRoute {
  static RegistrationRoute _fromState(GoRouterState state) => RegistrationRoute(
        fromPage: state.uri.queryParameters['from-page'],
      );

  String get location => GoRouteData.$location(
        '/registration',
        queryParams: {
          if (fromPage != null) 'from-page': fromPage,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $mainRoute => GoRouteData.$route(
      path: '/',
      factory: $MainRouteExtension._fromState,
    );

extension $MainRouteExtension on MainRoute {
  static MainRoute _fromState(GoRouterState state) => MainRoute(
        fromPage: state.uri.queryParameters['from-page'],
      );

  String get location => GoRouteData.$location(
        '/',
        queryParams: {
          if (fromPage != null) 'from-page': fromPage,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
