import 'package:flutter/material.dart';
import 'package:valo/core/routes/app_router.dart';

import '../core/theme/app_theme.dart';

class Valo extends StatelessWidget {
  const Valo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Valo',
      routerConfig: AppRouter.routes,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,


    );
  }
}
