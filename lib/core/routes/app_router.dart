import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:valo/core/routes/route_center.dart';
import 'package:valo/view/valo_view.dart';

class AppRouter {
  static final routes = GoRouter(
      routes: [
        GoRoute(
          path: RouteCenter.view,
          builder: (context, state) {
            return const ValoView();
          },



        ),

        GoRoute(
          path: RouteCenter.search,
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              child: const SizedBox(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) =>
                  FadeTransition(opacity: animation, child: child),
            );
          },
        ),

      ]
  );
}