import 'package:flutter/cupertino.dart';
import 'package:flutter_countdown_timer/countdown_timer_controller.dart';
import 'package:get/get.dart';

class ChangePasswordBindingController extends GetxController {
  //TODO: Implement AuthVerifyOtpController

  GlobalKey<FormState> changePasswordFormKey = GlobalKey<FormState>();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  var isButtonEnabled=false.obs;
  var password=''.obs;
  var confirmPassword=''.obs;

  /// password
  passwordValue(String val) {
    password.value = val;
  }

  /// confirm password
  confirmPasswordValue(String val) {
    confirmPassword.value = val;
  }

  /// Change Button Status
  void changeButtonStatus(bool value) {
    if (password.value.isNotEmpty && confirmPassword.value.isNotEmpty) {
      isButtonEnabled.value = value;
    } else {
      isButtonEnabled.value = false;
    }
  }

  /// Password Match
  String? passwordMatch(String? a) {
    if (password.value.length >= 8) {
      if (password.value != a) {
        return "Password do not match";
      }
    }
    return null;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
