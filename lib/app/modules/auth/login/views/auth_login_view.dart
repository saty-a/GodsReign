import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:godreign/app/data/values/strings.dart';
import 'package:godreign/app/modules/auth/login/controllers/auth_login_controller.dart';
import 'package:godreign/utils/widget_extensions/widget_extenions.dart';
import 'package:godreign/widgets/text_field/custom_text_field.dart';
import '../../../../../utils/app_validations/app_validations.dart';
import '../../../../../widgets/buttons/buttons_with_icon_row.dart';
import '../../../../../widgets/buttons/common_button.dart';
import '../../../../../widgets/buttons/skip_for_now_button.dart';
import '../../../../../widgets/dividers/customizedDivider.dart';
import '../../../../../widgets/other/login_or_register_bottom_text.dart';
import '../../../../data/values/images.dart';
import '../../../../routes/app_pages.dart';
import '../../../../styles/app_colors.dart';
import '../../../../styles/text_styles.dart';
import '../../../widgets/textfields/textfield_heading_with _endText.dart';

class AuthLoginView extends GetView<AuthLoginController> {
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
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Obx(() => SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: Form(
                      key: controller.loginFormKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          20.hb,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                child: const Text(
                                  AppStrings.skip,
                                  style: TextStyle(color: AppColors.white),
                                ),
                                onTap: () async {
                                  SharedPreferences prefs =
                                      await SharedPreferences.getInstance();
                                  prefs.setString('token', '');
                                  // Navigator.of(context).pushNamedAndRemoveUntil(
                                  //     Routes.dashboard, (route) => false);
                                },
                              ),
                            ],
                          ),
                          20.hb,
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
                          const Text(
                            AppStrings.loginDescription,
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: AppColors.white, fontSize: 14),
                          ),
                          26.hb,
                          TextFieldHeadingWithEndHeading(
                            startText: AppStrings.email,
                            endText: '',
                            endTextStyle: Styles.tsSb12
                                .copyWith(color: AppColors.primary),
                            onTap: () {
                              // Navigator.pushNamed(context, Routes.loginWithOtpScreen);
                            },
                          ),
                          const SizedBox(height: 4.5),

                          /// Email
                          CustomTextField(
                            controller: controller.emailController,
                            hintText: AppStrings.enterEmailLabelText,
                            validator: AppValidations.emailValidation,
                            onChanged: (value) {
                              controller.emailOrPhoneValue(value);
                              if (value.isNotEmpty) {
                                controller.changeButtonStatus(true);
                              } else {
                                controller.changeButtonStatus(false);
                              }
                            },
                          ),
                          const SizedBox(height: 22.5),
                          TextFieldHeadingWithEndHeading(
                              startText: AppStrings.password,
                              endText: '',
                              endTextStyle: Styles.tsSb12
                                  .copyWith(color: AppColors.primary),
                              onTap: () {
                                //    Navigator.pushNamed(context, Routes.forgotScreen);
                              }),
                          const SizedBox(height: 4.5),

                          /// Password Validation
                          CustomTextField(
                            controller: controller.passwordController,
                            hintText: AppStrings.enterPassword,
                            validator: AppValidations.passwordValidation,
                            obscureText: controller.isObscureText.value,
                            maxlines: 1,
                            suffixIcon: IconButton(
                              iconSize: 18,
                              onPressed: () {
                                controller.isObscureText.value =
                                    !controller.isObscureText.value;
                              },
                              icon: controller.isObscureText.value == true
                                  ? SvgPicture.asset(Images.icEyeHideIcon)
                                  : SvgPicture.asset(Images.icVisible),
                            ),
                            onChanged: (value) {
                              controller.passwordValue(value);
                              if (value.isNotEmpty) {
                                controller.changeButtonStatus(true);
                              } else {
                                controller.changeButtonStatus(false);
                              }
                            },
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: (){
                                  controller.isReadmeCheck.value = controller.isReadmeCheck.value==true?false:true;
                                },
                                child: Row(
                                  children: [
                                    Checkbox(
                                      value: controller.isReadmeCheck.value,
                                      onChanged: (value) {
                                        controller.isReadmeCheck.value = value!;
                                      },
                                      checkColor: AppColors.godsPrimaryGradient,
                                      activeColor: AppColors.commonButton,
                                      focusColor: AppColors.white,
                                      hoverColor: AppColors.white,
                                      side: MaterialStateBorderSide.resolveWith(
                                            (states) => const BorderSide(width: 1.0, color: AppColors.commonButton),
                                      ),
                                    ),
                                    const Text(
                                      AppStrings.rememberMe,
                                      style: TextStyle(color: AppColors.white),
                                    ),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  Navigator.pushNamed(context, Routes.FORGOT_PASSWORD);
                                },
                                child: Text(AppStrings.forgotPassword,
                                    style:
                                        const TextStyle(color: AppColors.white)),
                              )
                            ],
                          ),
                          20.hb,
                          CommonButton(
                            buttonText: AppStrings.login,
                            isDisabled:
                                controller.isButtonEnabled.value == false
                                    ? true
                                    : false,
                            textStyle: Styles.tsb18
                                .copyWith(color: AppColors.buttonText),
                            color: AppColors.commonButton,
                            borderRadius: 10.0,
                            onPressed: () async {
                              if (controller.loginFormKey.currentState!
                                  .validate()) {
                                controller.signUserIn;
                                SharedPreferences prefs =
                                await SharedPreferences.getInstance();
                                prefs.setString('token', 'login');
                                // Navigator.pushNamedAndRemoveUntil(
                                //     context, Routes.dashboard, (route) => false);
                              }
                            },
                          ),
                          20.hb,
                          const CustomizedDivider(),
                          20.hb,
                          Container(
                            padding:const EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SvgPicture.asset(Images.google,height: 50,),
                                SvgPicture.asset(Images.facebook, height: 50),
                                SvgPicture.asset(Images.discord, height: 50)
                              ],
                            ),
                          ),
                          10.hb,
                          Center(
                            child: LoginOrRegisterBottomText(() {
                              Navigator.pushNamed(context, Routes.AUTH_SIGNUP);
                            },
                                questionText: AppStrings.dontHaveAnAccount,
                                registerOrLoginText: AppStrings.signUp),
                          ),
                          10.hb
                        ],
                      ),
                    ),
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
