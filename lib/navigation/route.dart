import 'package:chat_app/features/chatroom_chat_page/presentation/pages/chatroom_chat_page.dart';
import 'package:chat_app/features/chatroom_page/data/models/chatroom_model/chatroom_model.dart';
import 'package:chat_app/features/chatroom_page/presentation/pages/chatroom_page.dart';
import 'package:chat_app/features/chatroom_profile_page/presentation/pages/chatroom_profile_page.dart';
import 'package:chat_app/features/group_chat_page/data/models/group_info_model/group_info_model.dart';
import 'package:chat_app/features/group_chat_page/data/models/group_model/group_model.dart';
import 'package:chat_app/features/group_chat_page/presentation/pages/group_chat_page.dart';
import 'package:chat_app/features/group_info/presentation/pages/group_info.dart';
import 'package:chat_app/features/profile_page/presentation/pages/profile_page.dart';

import '../features/auth/presentation/pages/auth_screen.dart';
import '../features/auth/presentation/pages/initial_page.dart';
import 'package:go_router/go_router.dart';
import '../features/components/error_screen.dart';
import '../features/group_page/presentation/pages/group_page.dart';

class RouteGenerator {
  static const String initialRoute = '/';
  static const String splashPage = '/splash_page';
  static const String authRoute = '/auth';
  static const String registerRoute = '/register';
  static const String groupRoute = '/group_page';
  static const String groupChatPageRoute = '/group_page/group_chat_page';
  static const String groupInfoRoute =
      '/group_page/group_chat_page/group_info_page';
  static const String chatroomRoute = '/chatroom_page';
  static const String chatroomChatRoute = '/chatroom_page/chatroom_chat_page';
  static const String chatroomProfileRoute =
      '/chatroom_page/chatroom_chat_page/chatroom_profile';
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
        path: groupRoute,
        builder: (_, __) => const GroupPage(),
        routes: [
          GoRoute(
              path: 'group_chat_page',
              builder: (_, state) => GroupChatPage(state.extra as GroupModel),
              routes: [
                GoRoute(
                  path: 'group_info_page',
                  builder: (_, state) => GroupInfo(
                    state.extra as GroupInfoModel,
                  ),
                ),
              ]),
        ],
      ),
      GoRoute(
          path: chatroomRoute,
          builder: (_, __) => const ChatroomPage(),
          routes: [
            GoRoute(
                path: 'chatroom_chat_page',
                builder: (_, state) =>
                    ChatroomChatPage(state.extra as ChatroomModel),
                routes: [
                  GoRoute(
                    path: 'chatroom_profile',
                    builder: (_, state) => ChatroomProfilePage(
                      state.extra as String,
                    ),
                  ),
                ]),
          ]),
      GoRoute(
        path: profileRoute,
        builder: (_, __) => const ProfilePage(),
      ),
    ],
    errorBuilder: (_, __) => const ErrorScreen(),
  );
}
