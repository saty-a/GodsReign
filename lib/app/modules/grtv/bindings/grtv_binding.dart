import 'package:get/get.dart';

import '../controllers/grtv_controller.dart';

class GrtvBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GrtvController());
  }
}
