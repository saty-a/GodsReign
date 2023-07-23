import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:godreign/app/app.dart';
import 'package:godreign/app/data/values/strings.dart';
import 'package:godreign/utils/widget_extensions/widget_extenions.dart';
import 'package:godreign/widgets/buttons/play_button.dart';
import 'package:godreign/widgets/other/matches_card.dart';
import '../../../data/values/images.dart';
import '../../../styles/app_colors.dart';
import '../../../styles/text_styles.dart';
import '../controllers/event_controller.dart';

class EventView extends GetView<EventController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.godsPrimaryGradient,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                Images.event,
                color: AppColors.commonButton,
                width: Get.width*.20,
              ),
              20.hb,
              Text(
                AppStrings.event,
                style: Styles.tsSb24.copyWith(color: AppColors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
