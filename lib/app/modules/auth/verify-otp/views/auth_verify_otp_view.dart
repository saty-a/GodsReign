import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../styles/app_colors.dart';
import '../controllers/auth_verify_otp_controller.dart';

class AuthVerifyOtpView extends GetView<AuthVerifyOtpController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.godsPrimaryGradient,
              AppColors.godsSecondaryGradient
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Column(children: [
          Text("Back")
        ],),
      ),
    ));
  }
}
