import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:godreign/utils/widget_extensions/widget_extenions.dart';

import '../../../data/values/images.dart';
import '../../../styles/app_colors.dart';
import '../../../styles/text_styles.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        flexibleSpace: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16)
                .copyWith(top: 12),
            child: Column(
              children: [
                10.hb,
              Row(
                  children: [
                    SvgPicture.asset(Images.icHeart),
                    const SizedBox(width: 8),
                  ],
                )
              ],
            ),
          ),
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            )),
        elevation: 0,
        backgroundColor: AppColors.primary,
      ),
      body: Center(
        child: Text(
          'HomeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
