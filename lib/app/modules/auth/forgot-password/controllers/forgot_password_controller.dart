import 'package:flutter/cupertino.dart';
import 'package:flutter_countdown_timer/countdown_timer_controller.dart';
import 'package:get/get.dart';

class FogotPasswordController extends GetxController {
  //TODO: Implement AuthVerifyOtpController

  GlobalKey<FormState> forgotPasswordFormKey = GlobalKey<FormState>();
  final TextEditingController emailOrPhoneController = TextEditingController();

  var isButtonEnabled=false.obs;
  var emailOrPhone=''.obs;

  void emailOrPhoneValue(var val){
    emailOrPhone.value=val;
  }

  void buttonStatus(bool val){
    isButtonEnabled.value=val;
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
