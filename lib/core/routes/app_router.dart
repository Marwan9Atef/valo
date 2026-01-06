import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:valo/core/routes/route_center.dart';
import 'package:valo/feature/auth/presentation/view/login_view.dart';
import 'package:valo/view/valo_view.dart';


class AppRouter {
  static final routes = GoRouter(
      routes: [

        GoRoute(
          path: RouteCenter.login,
          builder: (context, state) {
            return const LoginView();
          },



        ),
        GoRoute(
          path: RouteCenter.view,
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              child: const ValoView(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) =>
                  FadeTransition(opacity: animation, child: child),
            );
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