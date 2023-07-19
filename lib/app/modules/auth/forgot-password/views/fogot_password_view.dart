import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:godreign/app/data/values/strings.dart';
import 'package:godreign/utils/widget_extensions/widget_extenions.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../../utils/app_regex/app_regex.dart';
import '../../../../../utils/app_validations/app_validations.dart';
import '../../../../../widgets/buttons/common_button.dart';
import '../../../../../widgets/text_field/custom_text_field.dart';
import '../../../../data/values/images.dart';
import '../../../../routes/app_pages.dart';
import '../../../../styles/app_colors.dart';
import '../../../../styles/text_styles.dart';
import '../../../widgets/textfields/textfield_heading_with _endText.dart';
import '../controllers/forgot_password_controller.dart';

class FogotPasswordView extends GetView<FogotPasswordController> {
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
                    child: Form(
                      key: controller.forgotPasswordFormKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            Images.gods_reign,
                            scale: 2,
                          ),
                          const Text(
                            AppStrings.godReign,
                            style: Styles.tsb60,
                            textAlign: TextAlign.center,
                          ),
                          10.hb,
                          Text(
                            AppStrings.forgotPasswordPage,
                            style: Styles.tsM14.copyWith(color: AppColors.white,),
                          ),
                          50.hb,

                          TextFieldHeadingWithEndHeading(
                            startText: AppStrings.emailOrPhone,
                            endText: '',
                            endTextStyle: Styles.tsSb12
                                .copyWith(color: AppColors.primary),
                            onTap: () {
                              // Navigator.pushNamed(context, Routes.loginWithOtpScreen);
                            },
                          ),
                          const SizedBox(height: 4.5),

                          /// Email or Phone
                          CustomTextField(
                            controller: controller.emailOrPhoneController,
                            hintText: AppStrings.enterEmailOrPhoneText,
                            validator: AppValidations.emailOrPhoneValidation,
                            onChanged: (value) {
                              controller.emailOrPhoneValue(value);
                              if (value.isNotEmpty) {
                                controller.buttonStatus(true);
                              } else {
                                controller.buttonStatus(false);
                              }
                            },
                          ),
                          30.hb,
                          /// Continue Button
                          CommonButton(
                              buttonText: AppStrings.forgotPasswordPage,
                              isDisabled: controller.isButtonEnabled.value == false
                                  ? true
                                  : false,
                              color: AppColors.commonButton,
                              onPressed: () {
                                if (controller.forgotPasswordFormKey.currentState!
                                    .validate()) {
                                  Navigator.pushNamed(
                                    context, Routes.AUTH_VERIFY_OTP);
                                }
                              }),
                          14.hb,
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
    ));
  }
}
