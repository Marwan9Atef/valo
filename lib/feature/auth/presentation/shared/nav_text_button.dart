import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';

import '../../../../core/theme/app_color.dart';
import '../../../../core/theme/app_style.dart';


class NavTextButton extends StatelessWidget {
  const NavTextButton({super.key,required this.onTap,required this.prefText,required this.suffixText});
  final VoidCallback onTap;
  final String prefText;
  final String suffixText;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(text:
      TextSpan(text: prefText,style:AppStyles.styleRegular14(context),children: [
        TextSpan(text: suffixText,style:AppStyles.styleRegular14(context).copyWith(color: AppColor.blue) ,recognizer: TapGestureRecognizer()..onTap=onTap


        )])),
    );
  }
}