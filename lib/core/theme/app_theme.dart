import 'package:flutter/material.dart';

import 'app_color.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColor.anotherBlack,
    appBarTheme: AppBarTheme(
      backgroundColor: const Color(0x7F3E3E46),
      foregroundColor: AppColor.white,



    )

  );
  static ThemeData lightTheme = ThemeData(

  );



}