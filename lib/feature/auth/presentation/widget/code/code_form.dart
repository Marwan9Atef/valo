import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:valo/core/theme/app_style.dart';

import '../../../../../core/routes/route_center.dart' show RouteCenter;
import '../../../../../core/theme/app_color.dart';

class CodeForm extends StatefulWidget {
 const CodeForm({super.key});

  @override
  State<CodeForm> createState() => _CodeFormState();
}

class _CodeFormState extends State<CodeForm> {
   Color blackColor= Color(0xFF18181B);

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
      length: 6,
      obscureText: false,
    useHapticFeedback: true,
      keyboardType: TextInputType.number,

      textStyle: AppStyles.styleRegular16(context),
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        fieldOuterPadding: EdgeInsets.zero,

        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(10),
        fieldHeight: 50,
        fieldWidth:40,
        activeFillColor:blackColor,
        inactiveFillColor:  blackColor,
        activeColor: AppColor.white,
        inactiveColor: AppColor.gray,
        selectedColor: AppColor.gray,
        selectedFillColor: blackColor,
        disabledColor: blackColor,

      ),
      animationDuration: Duration(milliseconds: 300),
      backgroundColor:  const Color(0xFF18181B),
      enableActiveFill: true,
      onCompleted: (v){
        context.go(RouteCenter.reset);

      },





    );
  }
}
