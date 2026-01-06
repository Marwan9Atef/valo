import 'package:flutter_svg/flutter_svg.dart';
import 'package:valo/core/generated/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:valo/core/theme/app_color.dart';
import 'package:valo/core/theme/app_style.dart';
import 'package:valo/core/utils/sizebox_util.dart';
class AuthHeader extends StatelessWidget {
  const AuthHeader({super.key,required this.title,required this.subtitle});
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(AppAssets.logo),
        13.hight,
        Text(title,style: AppStyles.styleRegular30(context),),
        13.hight,
        Text(subtitle,style: AppStyles.styleRegular16(context).copyWith(color: AppColor.gray),),
        32.hight,

      ],
    );
  }
}
