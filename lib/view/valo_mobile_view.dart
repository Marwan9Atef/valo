import 'package:flutter/material.dart';
import 'package:valo/core/utils/sizebox_util.dart';

import '../feature/upload/presentation/screens/upload_screen.dart';

class ValoMobileView extends StatelessWidget {
  const ValoMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 15,right: 15,top: 16),
        child: Column(
          children: [
            const UploadScreen(),
            32.hight,
          ],
        ),
      ),
    );
  }
}
