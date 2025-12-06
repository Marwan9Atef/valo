import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:valo/core/theme/app_color.dart';
import 'package:valo/core/theme/app_style.dart';
import 'package:valo/core/utils/sizebox_util.dart';
import '../../../../../core/generated/assets.dart';
import '../../../../../core/widget/remove_container.dart';

class DesktopHistoryItem extends StatelessWidget {
  const DesktopHistoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      padding: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color:const Color(0xff18181B),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
              borderRadius: BorderRadiusGeometry.all(
                  Radius.circular(14)
              ),
              clipBehavior: Clip.antiAlias,
              child: Image.asset(AppAssets.imagesDemoRayImage,fit: BoxFit.fill,)),
          16.width,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(fit: BoxFit.scaleDown,child: Text('Chest X-Ray - Pneumonia Pattern',style: AppStyles.styleRegular20(context),)),
              10.hight,
              FittedBox(fit: BoxFit.scaleDown,child: Text("Right lower lobe consolidation consistent with pneumonia",style: AppStyles.styleRegular16(context).copyWith(color: AppColor.gray),)),
              15.hight,
              Row(
                children: [
                  SvgPicture.asset(AppAssets.detailsContainer,fit: BoxFit.scaleDown,height:36,width: 36,),
                  12.width,
                  RemoveContainer(),



                ],
              )

            ],
          ),




        ],
      ),
    );
  }
}


