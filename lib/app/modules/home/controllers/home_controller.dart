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
    Images.cover,
    Images.cover,
  ];
  final List<String> titles = [
    ' Taiwan Excellence Gaming Cup 2022',
    ' Taiwan Excellence Gaming Cup 2022',
    ' Taiwan Excellence Gaming Cup 2022',
  ];

  final List<String> subTitle =[
    'Pokémon | Gods Reign',
    'Pokémon | Gods Reign',
    'Pokémon | Gods Reign',
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
