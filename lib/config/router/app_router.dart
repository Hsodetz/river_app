

import 'package:go_router/go_router.dart';
import 'package:river_app/presentation/screens/home_screen.dart';
import 'package:river_app/presentation/screens/state_provider_screen.dart';
import 'package:river_app/presentation/screens/stream_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [

    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),

    GoRoute(
      path: '/state-provider',
      builder: (context, state) => const StateProviderScreen(),
    ),

     GoRoute(
      path: '/stream-provider',
      builder: (context, state) => const StreamScreen(),
    ),

  ]
);