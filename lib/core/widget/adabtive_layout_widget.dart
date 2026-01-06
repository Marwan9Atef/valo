import 'package:flutter/material.dart';

class AdaptiveLayoutWidget extends StatelessWidget {
  const AdaptiveLayoutWidget(
      {super.key,
        required this.mobileLayout,
        required this.desktopLayout});

  final WidgetBuilder mobileLayout,desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth < 800) {
        return mobileLayout(context);
      } else {
        return desktopLayout(context);
      }
    });
  }
}