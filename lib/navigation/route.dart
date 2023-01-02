import 'package:chat_app/features/profile_page/presentation/pages/profile_page.dart';
import 'package:chat_app/features/search_page/presentation/pages/search_page.dart';

import '../features/auth/presentation/pages/auth_screen.dart';
import '../features/auth/presentation/pages/initial_page.dart';
import '../features/home_page/presentation/pages/home_page.dart';
import 'package:go_router/go_router.dart';
import '../features/components/error_screen.dart';

class RouteGenerator {
  static const String initialRoute = '/';
  static const String splashPage = '/splash_page';
  static const String searchPage = '/home_page/search_page';
  static const String authRoute = '/auth';
  static const String registerRoute = '/register';
  static const String homeRoute = '/home_page';
  static const String profileRoute = '/profile_page';

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
        routes: [
          GoRoute(
            path: 'search_page',
            builder: (_, __) => const SearchPage(),
          ),
        ],
      ),
      GoRoute(
        path: profileRoute,
        builder: (_, __) => const ProfilePage(),
      ),
    ],
    errorBuilder: (_, __) => const ErrorScreen(),
  );
}
