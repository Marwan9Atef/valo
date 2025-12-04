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
    return SingleChildScrollView(
      child: Column(
        children: [
          const UploadScreen(),
          32.hight,
          const InfoItemRow(),
        ],
      ),
    );
  }
}