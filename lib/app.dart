import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/auth/data/repositories/auth_service.dart';
import 'features/auth/presentation/auth_cubit/auth_cubit.dart';
import 'l10n/l10n.dart';
import 'navigation/route.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final route = RouteGenerator().goRouter;
    return BlocProvider(
      create: (context) => AuthCubit(AuthService()),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        supportedLocales: L10n.all,
        routerDelegate: route.routerDelegate,
        routeInformationParser: route.routeInformationParser,
        routeInformationProvider: route.routeInformationProvider,
        scrollBehavior: MyScrollBehavior(),
      ),
    );
  }
}

class MyScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
