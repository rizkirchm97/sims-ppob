part of 'routes_imports.dart';

final goRouter = GoRouter(
  debugLogDiagnostics: true,
  routes: $appRoutes,
  initialLocation: '/splash',
);

@TypedGoRoute<SplashRoute>(path: '/splash')
class SplashRoute extends GoRouteData {
  const SplashRoute({this.fromPage});

  final String? fromPage;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    // TODO: implement build
    return const SplashPage();
  }
}

@TypedGoRoute<LoginRoute>(path: '/login')
class LoginRoute extends GoRouteData {
  const LoginRoute({this.fromPage});

  final String? fromPage;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      CustomTransitionPage(
        key: state.pageKey,
        child: const LoginPage(),
        transitionsBuilder: (context, animation, animation2, child) =>
            SlideTransition(
                position: PageTransitionType.slideBottomToTop(animation),
                child: child),
      );
}

@TypedGoRoute<RegistrationRoute>(path: '/registration')
class RegistrationRoute extends GoRouteData {
  const RegistrationRoute({this.fromPage});

  final String? fromPage;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      CustomTransitionPage(
        key: state.pageKey,
        child: const RegistrationPage(),
        transitionsBuilder: (context, animation, animation2, child) =>
            SlideTransition(
                position: PageTransitionType.slideBottomToTop(animation),
                child: child),
      );
}
