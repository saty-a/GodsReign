import 'package:get/get.dart';
import 'package:godreign/app/routes/app_pages.dart';
import 'package:godreign/utils/storage/storage_utils.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _startOnboarding();
  }

  _startOnboarding() async {
    await Future.delayed(Duration(seconds: 3));

    if (Storage.isUserExists())
      Get.offAllNamed(Routes.HOME);
    else
      Get.offAllNamed(Routes.AUTH_LOGIN);
  }
}
