import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:valo/core/routes/route_center.dart';
import '../../../../core/generated/assets.dart';
import '../../../../core/theme/app_style.dart';
import '../../../../core/utils/context_util.dart';
import '../../../../core/utils/sizebox_util.dart';
import '../../../../core/utils/validator.dart';
import '../../../../core/widget/custom_button.dart';
import '../../../../core/widget/custom_text_form_filed.dart';
import '../shared/auth_container.dart';
import '../shared/auth_header.dart';


class ResetScreen extends StatefulWidget {
  const ResetScreen({super.key});

  @override
  State<ResetScreen> createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 16),
          child: Center(
            heightFactor:context.screenHeight>1080?2:1.1,
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const AuthHeader(title: "Reset Password", subtitle: "Create a new password for your account"),
                  AuthContainer(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("New Password",style: AppStyles.styleRegular14(context),),
                          8.hight,
                          CustomTextFormField(
                            textInputType: TextInputType.visiblePassword,
                            hintText: "Enter new password",
                            prefixIconPath: AppAssets.password,
                            isPassword: true,
                            validator: (value) => Validator.validateField(value, 'password'),
                            controller: _passwordController,
                          ),
                          20.hight,
                          Text("Confirm Password",style: AppStyles.styleRegular14(context),),
                          8.hight,
                          CustomTextFormField(
                            textInputType: TextInputType.visiblePassword,
                            hintText: "Confirm new password",
                            isPassword: true,
                            prefixIconPath: AppAssets.password,
                            validator: (value) => Validator.validateField(value, 'confirmPassword', password: _passwordController.text),
                            controller: _confirmPasswordController,



                          ),
                          20.hight,
                          CustomButton(text: "Reset Password", onPressed: (){
                            if (_formKey.currentState!.validate()) {
                              context.go(RouteCenter.login);
                            }

                          }),




                        ],

                      ))




                ],


              ),
            ),
          ),
        ),
      )
      ),

    );
  }
}
