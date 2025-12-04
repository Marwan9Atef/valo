
import 'package:flutter/cupertino.dart';
import 'package:valo/core/utils/sizebox_util.dart';

import '../../widgets/info_item_column.dart';
import '../upload_screen.dart';

class UploadMobileScreen extends StatelessWidget {
  const UploadMobileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const UploadScreen(),
          32.hight,
          const InfoItemColumn(),
        ],
      ),
    );
  }
}