import 'package:flutter/material.dart';
import 'package:valo/view/valo_desktop_layout.dart';
import 'package:valo/view/valo_mobile_view.dart';

import '../core/theme/app_color.dart';
import '../core/widget/adabtive_layout_widget.dart';


class ValoView extends StatelessWidget {
  const ValoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.anotherBlack,
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) =>const ValoMobileView() ,
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => ValoDesktopLayout() ,
      ),

    );
  }
}
