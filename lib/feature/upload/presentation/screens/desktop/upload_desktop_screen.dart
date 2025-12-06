import 'package:flutter/material.dart';
import 'package:valo/core/utils/sizebox_util.dart';
import '../../widgets/info_item_row.dart';
import '../upload_screen.dart' show UploadScreen;

class UploadDesktopScreen extends StatelessWidget {
  const UploadDesktopScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 63,right: 63,top: 16),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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