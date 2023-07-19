import 'package:get/get.dart';

import '../controllers/forgot_password_controller.dart';

class FogotPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FogotPasswordController>(
      () => FogotPasswordController(),
    );
  }
}
