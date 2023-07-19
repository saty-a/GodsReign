import 'package:get/get.dart';

import '../../../data/values/images.dart';

class HomeController extends GetxController {
  final index = 0.obs;
  var menuItem=0.obs;

  void onTabChange(var val){
    menuItem.value=val;
  }

  final List<String> imagesList = [
    Images.cover,
    Images.amazon,
    Images.clockIcon,
    Images.cover,
  ];
  final List<String> titles = [
    ' Taiwan Excellence Gaming Cup 2022 ',
    ' Tasdfiwan Excellence Gaming Cup 2022 ',
    ' Taiwasdfn Excellence Gaming Cup 2022 ',
    ' sdf Excellence Gaming Cup 2022 ',
  ];

  final List<String> subTitle =[
    'Pokémon | Gods Reign',
    'Pokémdfon | Gods Reign',
    'sdf | Gods Reign',
    'sdf | Gods Reign'
  ];

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
