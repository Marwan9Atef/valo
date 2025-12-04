import 'package:flutter/material.dart';
import '../feature/upload/presentation/screens/mobile/uplaod_mobile_screen.dart';

class ValoMobileView extends StatelessWidget {
  const ValoMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 15,right: 15,top: 16),
      child: UploadMobileScreen(),
    );
  }
}

