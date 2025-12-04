import 'package:flutter/material.dart';
import 'package:valo/core/utils/sizebox_util.dart';

import '../feature/upload/presentation/screens/upload_screen.dart';
import '../feature/upload/presentation/widgets/info_item_row.dart';


class ValoDesktopLayout extends StatelessWidget {
  const ValoDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 63,right: 63,top: 16),
        child: Column(
          children: [
            const UploadScreen(),
            32.hight,
            const InfoItemRow(),
          ],
        ),
      ),
    );
  }
}
