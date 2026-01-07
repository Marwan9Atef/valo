import 'package:desktop_drop/desktop_drop.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:valo/core/generated/assets.dart';
import 'package:valo/core/utils/context_util.dart';
import 'package:valo/core/utils/sizebox_util.dart';
import 'package:valo/feature/upload/presentation/widgets/upload_button.dart';

import '../../../../core/theme/app_style.dart';
import 'custom_container.dart';

class UploadItem extends StatefulWidget {
  const UploadItem({super.key});

  @override
  State<UploadItem> createState() => _UploadItemState();
}

class _UploadItemState extends State<UploadItem> {
 final List<XFile> _selectedImages = [];



  @override
  Widget build(BuildContext context) {
    return DropTarget(
      onDragDone: (DropDoneDetails details) {
        _selectedImages.addAll(details.files);

      },

      child: CustomContainer(
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
              Text("Drag and drop your medical image here",style: AppStyles.styleRegular18(context),textAlign: TextAlign.center,),
              8.hight,
              Text("or click to browse files",style: AppStyles.styleRegular18(context),),
              15.hight,
              UploadButton(
                onTap: ()async{
                  final ImagePicker picker = ImagePicker();

                  try {
                    final List<XFile> images = await picker.pickMultiImage();

                    if (images.isNotEmpty) {
                      _selectedImages.addAll(images);
                    }
                  } on PlatformException catch (e) {
                    if (e.code == 'already_active') {

                    } else {
                      rethrow;
                    }
                  }


                },

              ),



            ],
          ),


        ),
      ),
    );
  }
}
