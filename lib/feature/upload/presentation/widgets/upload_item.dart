import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:valo/core/generated/assets.dart';
import 'package:valo/core/utils/context_util.dart';
import 'package:valo/core/utils/sizebox_util.dart';
import 'package:valo/feature/upload/presentation/widgets/upload_button.dart';

import '../../../../core/theme/app_style.dart';
import 'custom_container.dart';

class UploadItem extends StatelessWidget {
  const UploadItem({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Container(
        padding: EdgeInsets.all(context.screenWidth>800?33:48),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1.18,
              color: const Color(0xFF3E3E46),
            ),
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        child: Column(
          children: [
            SvgPicture.asset(AppAssets.imagesUploadContainer,fit: BoxFit.scaleDown,width: 64,height: 64,),
            16.hight,
            Text("Drag and drop your X-ray image here",style: AppStyles.styleRegular18(context),textAlign: TextAlign.center,),
            8.hight,
            Text("or click to browse files",style: AppStyles.styleRegular18(context),),
            15.hight,
            const UploadButton(),



          ],
        ),


      ),
    );
  }
}
