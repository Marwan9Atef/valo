import 'package:flutter/material.dart';
import '../feature/upload/presentation/screens/desktop/upload_desktop_screen.dart';



class ValoDesktopLayout extends StatelessWidget {
  const ValoDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 63,right: 63,top: 16),
      child: UploadDesktopScreen(),
    );
  }
}

