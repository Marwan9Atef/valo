import 'package:flutter/cupertino.dart';
import 'package:valo/core/utils/sizebox_util.dart';
import '../../../../../core/generated/assets.dart';
import '../../../../../core/theme/app_color.dart';
import '../../../../../core/theme/app_style.dart';


class MobileHistoryItem extends StatelessWidget {
  const MobileHistoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
      decoration:BoxDecoration(
        color:const Color(0xff18181B),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadiusGeometry.all(
                Radius.circular(14),
              ),
              clipBehavior: Clip.antiAlias,
              child: Image.asset(AppAssets.imagesDemoRayImage,fit: BoxFit.cover,width: double.infinity,)),
          10.hight,

              FittedBox(fit: BoxFit.scaleDown,child: Text('Chest X-Ray - Pneumonia Pattern',style: AppStyles.styleRegular20(context),)),


          6.hight,
          FittedBox(fit: BoxFit.scaleDown,child: Text("Right lower lobe consolidation consistent with pneumonia",style: AppStyles.styleRegular16(context).copyWith(color: AppColor.gray),)),





        ],

      ),
    );
  }
}
