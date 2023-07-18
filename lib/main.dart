import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:get_storage/get_storage.dart';

import 'app/app_binding.dart';
import 'app/data/values/constants.dart';
import 'app/data/values/env.dart';
import 'app/routes/app_pages.dart';
import 'app/styles/app_colors.dart';
import 'app/theme/app_theme.dart';
import 'package:flutter/services.dart';

void main() async {
  await initGetStorage();
  /// Ensuring Size of the phone in UI Design
  await ScreenUtil.ensureScreenSize();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: AppColors.godsPrimaryGradient, // navigation bar color
    statusBarColor: AppColors.godsPrimaryGradient, // status bar color
  ));
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
      GetMaterialApp(
        title: Env.title,
        navigatorKey: GlobalKeys.navigationKey,
        debugShowCheckedModeBanner: false,
        theme: AppTheme.theme,
        initialRoute: Routes.SPLASH,
        getPages: AppPages.pages,
        defaultTransition: Transition.fade,
        initialBinding: AppBinding(),

      ));
}

Future initGetStorage() async {
  await GetStorage.init();
}
