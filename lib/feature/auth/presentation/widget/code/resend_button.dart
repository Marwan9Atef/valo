import 'package:flutter/material.dart';
import 'package:otp_resend_timer/otp_resend_timer.dart';

import '../../../../../core/theme/app_style.dart';

class ResendButton extends StatefulWidget {
  const ResendButton({super.key});

  @override
  State<ResendButton> createState() => _ResendButtonState();
}

class _ResendButtonState extends State<ResendButton> {
  final controller = OtpResendTimerController(initialTime: 30);

  @override
  Widget build(BuildContext context) {
    return OtpResendTimer(
        controller: controller,
        autoStart: true,
        timerMessageStyle: AppStyles.styleRegular14(context),
        readyMessageStyle: AppStyles.styleRegular14(context),
        timerMessage: "Resend OTP in ",
        readyMessage: "You can now resend the code",
        onFinish: () {},
        onResendClicked: () {},
        onStart: () {}


    );
  }
}
