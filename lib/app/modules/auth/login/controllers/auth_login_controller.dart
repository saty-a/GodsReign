import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:godreign/app/data/models/dto/response.dart';
import 'package:godreign/app/data/models/request/auth_request.dart';
import 'package:godreign/app/data/repository/user_repository.dart';
import 'package:godreign/app/data/values/strings.dart';
import 'package:godreign/app/routes/app_pages.dart';
import 'package:godreign/base/base_controller.dart';
import 'package:godreign/utils/helper/text_field_wrapper.dart';
import 'package:godreign/utils/helper/validators.dart';
import 'package:godreign/utils/loading/loading_utils.dart';

class AuthLoginController extends BaseController<UserRepository> {
  final mobileWrapper = TextFieldWrapper();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  var isObscureText = true.obs;
  var passText = "".obs;
  var isButtonEnabled = false.obs;
  var emailOrPhone = "".obs;
  var isReadmeCheck=false.obs;

  //sign user in
  void signUserIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text, password: passwordController.text);
  }

  /// email
  emailOrPhoneValue(String val) {
    emailOrPhone.value = val;
  }

  /// password
  passwordValue(String val) {
    passText.value = val;
  }

  /// Change Button Status
  void changeButtonStatus(bool value) {
    if (emailOrPhone.value.isNotEmpty && passText.value.isNotEmpty) {
      isButtonEnabled.value = value;
    } else {
      isButtonEnabled.value = false;
    }
  }

}
