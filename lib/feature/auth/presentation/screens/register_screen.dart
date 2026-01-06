import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/generated/assets.dart';
import '../../../../core/routes/route_center.dart';
import '../../../../core/theme/app_style.dart';
import '../../../../core/utils/context_util.dart';
import '../../../../core/utils/sizebox_util.dart';
import '../../../../core/widget/custom_button.dart';
import '../../../../core/widget/custom_text_form_filed.dart';
import '../shared/auth_container.dart';
import '../shared/auth_header.dart';
import '../shared/nav_text_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 16),
          child: Center(
            heightFactor:context.screenHeight>1080?1.7:1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const AuthHeader(title: "Create Account", subtitle: "Join to your medical app to get started"),
                AuthContainer(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Full Name",style: AppStyles.styleRegular14(context),),
                        8.hight,
                        CustomTextFormField(
                          textInputType: TextInputType.name,
                          hintText: "Full name",
                          prefixIconPath: AppAssets.profile,
                        ),
                        20.hight,
                        Text("Email Address",style: AppStyles.styleRegular14(context),),
                        8.hight,
                        CustomTextFormField(
                          textInputType: TextInputType.emailAddress,
                          hintText: "Email Address",
                          prefixIconPath: AppAssets.email,
                        ),
                        20.hight,
                        Text("Password",style: AppStyles.styleRegular14(context),),
                        8.hight,
                        CustomTextFormField(
                          textInputType: TextInputType.visiblePassword,
                          hintText: "Password",
                          isPassword: true,
                          prefixIconPath: AppAssets.password,
                        ),
                        20.hight,
                        CustomButton(text: "Create Account", onPressed: (){
                          context.pushReplacement(RouteCenter.view);
                        }),
                        Divider(
                          height: 40,
                          color: const Color(0xFF27272A),

                        ),
                        NavTextButton(onTap: (){
                          context.pushReplacement(RouteCenter.login);
                        }, prefText: "Already have an account? ", suffixText: "Sign in",),



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
