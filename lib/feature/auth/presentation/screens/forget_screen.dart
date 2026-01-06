import 'package:flutter/material.dart';
import '../../../../core/generated/assets.dart';
import '../../../../core/theme/app_style.dart';
import '../../../../core/utils/context_util.dart';
import '../../../../core/utils/sizebox_util.dart';
import '../../../../core/widget/custom_button.dart';
import '../../../../core/widget/custom_text_form_filed.dart';
import '../shared/auth_container.dart';
import '../shared/auth_header.dart';


class ForgetScreen extends StatelessWidget {
  const ForgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 16),
          child: Center(
            heightFactor:context.screenHeight>1080?2:1.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const AuthHeader(title: "Forgot Password", subtitle: "We'll send you an OTP to reset your password"),
                AuthContainer(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Email Address",style: AppStyles.styleRegular14(context),),
                        8.hight,
                        CustomTextFormField(
                          textInputType: TextInputType.emailAddress,
                          hintText: "Email Address",
                          prefixIconPath: AppAssets.email,
                        ),
                       20.hight,
                        CustomButton(text: "Send OTP", onPressed: (){}),




                      ],

                    ))




              ],


            ),
          ),
        ),
      )
      ),

    );
  }
}
