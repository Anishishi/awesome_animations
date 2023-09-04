import 'package:awesome_animations/constants/app_routes.dart';
import 'package:awesome_animations/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

final routerProvider = Provider((ref) => GoRouter(
        navigatorKey: _rootNavigatorKey,
        debugLogDiagnostics: kDebugMode,
        initialLocation: AppRoutes.home.path,
        routes: <RouteBase>[
          GoRoute(
            path: AppRoutes.home.path,
            name: AppRoutes.home.name,
            builder: (context, state) {
              return const HomeScreen();
            },
            routes: const [],
          ),
        ]));
