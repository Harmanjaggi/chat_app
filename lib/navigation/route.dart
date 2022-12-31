import '../features/auth/presentation/pages/auth_screen.dart';
import '../features/auth/presentation/pages/initial_page.dart';
import '../features/auth/presentation/pages/login_page.dart';
import '../features/home_page/presentation/pages/home_page.dart';
import 'package:go_router/go_router.dart';
import '../features/components/error_screen.dart';

class RouteGenerator {
  static const String initialRoute = '/';
  static const String splashPage = '/splashPage';
  static const String authRoute = '/auth';
  static const String registerRoute = '/register';
  static const String homeRoute = '/homePage';

  final GoRouter goRouter;

  RouteGenerator() : goRouter = router;

  static GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: initialRoute,
    routes: [
      GoRoute(
        path: initialRoute,
        builder: (_, __) => const InitialPage(),
      ),
      GoRoute(
        path: authRoute,
        builder: (_, __) => const AuthScreen(),
      ),
      GoRoute(
        path: homeRoute,
        builder: (_, __) => const HomePage(),
      ),
    ],
    errorBuilder: (_, __) => const ErrorScreen(),
  );
}
