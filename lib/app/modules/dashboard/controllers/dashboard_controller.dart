import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:godreign/app/modules/event/views/event_view.dart';
import 'package:godreign/app/modules/grtv/views/grtv_view.dart';
import 'package:godreign/app/modules/home/views/home_view.dart';
import 'package:godreign/app/modules/profile/views/profile_view.dart';

import '../../../data/values/images.dart';
import '../../shop/views/shop_view.dart';

class DashboardController extends GetxController {

  RxInt index=0.obs;

  void onTap(var value){
    index.value=value;
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
