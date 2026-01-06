import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:valo/core/routes/route_center.dart';
import 'package:valo/feature/auth/presentation/screens/login_screen.dart';
import 'package:valo/view/valo_view.dart';

import '../../feature/auth/presentation/screens/forget_screen.dart';
import '../../feature/auth/presentation/screens/register_screen.dart';


class AppRouter {
  static final routes = GoRouter(
      routes: [
        GoRoute(
          path: RouteCenter.login,
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              child: const LoginScreen(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) =>
                  FadeTransition(opacity: animation, child: child),
            );
          },
        ),

        GoRoute(
          path: RouteCenter.register,
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              child: const RegisterScreen(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) =>
                  FadeTransition(opacity: animation, child: child),
            );
          },
        ),
        GoRoute(
          path: RouteCenter.forget,
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              child: const ForgetScreen(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) =>
                  FadeTransition(opacity: animation, child: child),
            );
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