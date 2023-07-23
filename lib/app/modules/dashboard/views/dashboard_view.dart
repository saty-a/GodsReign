import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:godreign/app/app.dart';
import 'package:godreign/utils/widget_extensions/widget_extenions.dart';
import 'package:godreign/widgets/buttons/play_button.dart';
import 'package:godreign/widgets/other/matches_card.dart';
import '../../../data/values/images.dart';
import '../../../data/values/strings.dart';
import '../../../styles/app_colors.dart';
import '../../../styles/text_styles.dart';
import '../../event/views/event_view.dart';
import '../../grtv/views/grtv_view.dart';
import '../../home/views/home_view.dart';
import '../../profile/views/profile_view.dart';
import '../../shop/views/shop_view.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        bottomSheet: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.commonButton,
          unselectedItemColor: AppColors.white,
          elevation: 2,
          backgroundColor: AppColors.godsPrimaryGradient,
          currentIndex: controller.index.value,
          onTap: (index){
            controller.onTap(index);
          },
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                Images.home,
                color: AppColors.white,
              ),
              label: AppStrings.home,
              activeIcon: SvgPicture.asset(
                Images.home,
                color: AppColors.commonButton,
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                Images.event,
                color: AppColors.white,
              ),
              label: AppStrings.event,
              activeIcon: SvgPicture.asset(
                Images.event,
                color: AppColors.commonButton,
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                Images.grt,
                color: AppColors.white,
              ),
              label: AppStrings.grtv,
              activeIcon: SvgPicture.asset(
                Images.grt,
                color: AppColors.commonButton,
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                Images.shop,
                color: AppColors.white,
              ),
              label: AppStrings.shop,
              activeIcon: SvgPicture.asset(
                Images.shop,
                color: AppColors.commonButton,
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                Images.profile,
                color: AppColors.white,
              ),
              label: AppStrings.profile,
              activeIcon: SvgPicture.asset(
                Images.profile,
                color: AppColors.commonButton,
              ),
            ),
          ],
        ),
        backgroundColor: AppColors.godsPrimaryGradient,
        body: IndexedStack(
          index: controller.index.value,
          children: [
            HomeView(),
            EventView(),
            GrtvView(),
            ShopView(),
            ProfileView()
          ],
        ),
      );
    });
  }
}
