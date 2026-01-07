import 'package:flutter/material.dart';
import 'package:valo/core/theme/app_color.dart';
import 'package:valo/core/theme/app_style.dart';
import 'package:valo/core/utils/sizebox_util.dart';

import 'clear_icon.dart';


class DesktopClear extends StatelessWidget {
  const DesktopClear({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 10),
        decoration: ShapeDecoration(
          color: const Color(0x7F18181B),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 0.80,
              color: const Color(0xFF3E3E46),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Row(
          children: [
            const ClearIcon(),
            16.width,
            FittedBox(fit: BoxFit.scaleDown,child: Text("Clear",style: AppStyles.styleRegular14(context).copyWith(color: AppColor.red),))


          ],

        ),


      ),
    );
  }
}

