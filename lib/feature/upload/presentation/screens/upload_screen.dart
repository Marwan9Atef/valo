import 'package:flutter/material.dart';
import 'package:valo/core/theme/app_color.dart';
import 'package:valo/core/theme/app_style.dart';
import 'package:valo/core/utils/sizebox_util.dart';
import '../widgets/before_search.dart';
import '../widgets/upload_item.dart';

class UploadScreen extends StatelessWidget {
  const UploadScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
      Text("Upload Medical Image",style: AppStyles.styleRegular36(context),),
      8.hight,
      Text("Upload an medical image to search for similar cases",style: AppStyles.styleRegular16(context).copyWith(color: AppColor.gray),),
        34.hight,
     const BeforeSearch(),
     23.hight,
     const UploadItem(),






      ],

    );
  }
}


