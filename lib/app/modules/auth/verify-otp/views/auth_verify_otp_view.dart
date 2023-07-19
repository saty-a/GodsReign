import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:godreign/app/data/values/strings.dart';
import 'package:godreign/utils/widget_extensions/widget_extenions.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../../utils/app_regex/app_regex.dart';
import '../../../../../widgets/buttons/common_button.dart';
import '../../../../data/values/images.dart';
import '../../../../routes/app_pages.dart';
import '../../../../styles/app_colors.dart';
import '../../../../styles/text_styles.dart';
import '../controllers/auth_verify_otp_controller.dart';

class AuthVerifyOtpView extends GetView<AuthVerifyOtpController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Obx(() => Container(
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
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        const Icon(
                          Icons.arrow_back_ios,
                          color: AppColors.white,
                        ),
                        Text(
                          "Back",
                          style: Styles.tsM16.copyWith(color: AppColors.white),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          AppStrings.verifyAccount,
                          style: Styles.tsM14.copyWith(color: AppColors.white),
                        ),
                        20.hb,
                        Text(
                          AppStrings.sentOnOTP,
                          style: Styles.tsM18.copyWith(color: AppColors.white),
                        ),
                        Text(
                          AppStrings.dummyEmail,
                          style: Styles.tsM18.copyWith(color: AppColors.white),
                        ),
                        50.hb,

                        PinCodeTextField(
                          textStyle: const TextStyle(color: AppColors.white),
                          appContext: context,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          length: 4,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                AppRegex.digitsOnly),
                          ],
                          onChanged: (value) {
                            value.length == 4
                                ? controller.buttonStatus(true)
                                : controller.buttonStatus(false);
                          },
                          pinTheme: PinTheme(
                              shape: PinCodeFieldShape.box,
                              fieldHeight: 60,
                              fieldWidth: 60,
                              inactiveFillColor: AppColors.godsPrimaryGradient,
                              activeFillColor: AppColors.godsPrimaryGradient,
                              selectedFillColor: AppColors.godsPrimaryGradient,
                              inactiveColor: AppColors.godsPrimaryGradient,
                              activeColor: AppColors.godsPrimaryGradient,
                              selectedColor: AppColors.commonButton),
                          keyboardType: TextInputType.number,
                          cursorColor: AppColors.commonButton,
                          enableActiveFill: true,
                          animationType: AnimationType.fade,
                        ),
                        30.hb,
                        GestureDetector(
                          onTap: (){

                          },
                            child: Text(
                          AppStrings.resendOtp,
                          style: Styles.tsM18.copyWith(
                            color: AppColors.commonButton,
                            decoration: TextDecoration.underline,
                          ),
                        )),
                        30.hb,

                        /// Continue Button
                        CommonButton(
                            buttonText: AppStrings.verifyEmail,
                            isDisabled: !controller.isButtonEnabled.value,
                            color: AppColors.commonButton,
                            onPressed: () {
                              controller.isButtonEnabled == true
                                  ? Navigator.pushNamedAndRemoveUntil(
                                      context, Routes.HOME, (route) => false)
                                  : null;
                            }),
                        14.hb,
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    ));
  }
}
