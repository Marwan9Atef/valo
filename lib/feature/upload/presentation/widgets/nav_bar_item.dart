import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:valo/core/theme/app_color.dart';

import '../../data/models/nav_model.dart';

class NavBarItem extends StatelessWidget {
  const NavBarItem({super.key,required this.navModel});

  final NavModel navModel;

  @override
  Widget build(BuildContext context) {
    return NavigationDestination(
      icon:SvgPicture.asset(navModel.icon),
      label: navModel.title,
      selectedIcon: SvgPicture.asset(navModel.icon,colorFilter: ColorFilter.mode(AppColor.white, BlendMode.srcIn),),
    );
  }
}
