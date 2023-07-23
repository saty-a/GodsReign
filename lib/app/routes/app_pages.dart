import 'package:get/get.dart';
import 'package:godreign/app/modules/auth/forgot-password/views/fogot_password_view.dart';
import 'package:godreign/app/modules/auth/login/bindings/auth_login_binding.dart';
import 'package:godreign/app/modules/auth/login/views/auth_login_view.dart';
import 'package:godreign/app/modules/auth/signup/bindings/auth_signup_binding.dart';
import 'package:godreign/app/modules/auth/signup/views/auth_signup_view.dart';
import 'package:godreign/app/modules/auth/verify-otp/bindings/auth_verify_otp_binding.dart';
import 'package:godreign/app/modules/auth/verify-otp/views/auth_verify_otp_view.dart';
import 'package:godreign/app/modules/home/bindings/home_binding.dart';
import 'package:godreign/app/modules/home/views/home_view.dart';
import 'package:godreign/app/modules/profile/bindings/profile_binding.dart';
import 'package:godreign/app/modules/profile/views/profile_view.dart';
import 'package:godreign/app/modules/splash/bindings/splash_binding.dart';
import 'package:godreign/app/modules/splash/views/splash_view.dart';

import '../modules/auth/change-password/bindings/change_password_binding.dart';
import '../modules/auth/change-password/views/change_password_view.dart';
import '../modules/auth/forgot-password/bindings/fogot_password_binding.dart';
import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/event/bindings/event_binding.dart';
import '../modules/event/views/event_view.dart';
import '../modules/grtv/bindings/grtv_binding.dart';
import '../modules/grtv/views/grtv_view.dart';
import '../modules/shop/bindings/shop_binding.dart';
import '../modules/shop/views/shop_view.dart';

part 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.AUTH_LOGIN,
      page: () => AuthLoginView(),
      binding: AuthLoginBinding(),
    ),
    GetPage(
      name: Routes.AUTH_VERIFY_OTP,
      page: () => AuthVerifyOtpView(),
      binding: AuthVerifyOtpBinding(),
    ),
    GetPage(
      name: Routes.AUTH_SIGNUP,
      page: () => AuthSignupView(),
      binding: AuthSignupBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.FORGOT_PASSWORD,
      page: () => FogotPasswordView(),
      binding: FogotPasswordBinding(),
    ),
    GetPage(
      name: Routes.CHANGE_PASSWORD,
      page: () => ChangePasswordView(),
      binding:ChangePasswordBinding(),
    ),
    GetPage(
      name: Routes.DASHBOARD,
      page: () => DashboardView(),
      binding:DashboardBinding(),
    ),
    GetPage(
      name: Routes.EVENT,
      page: () => EventView(),
      binding:EventBinding(),
    ),
    GetPage(
      name: Routes.PROFILE,
      page: () => ProfileView(),
      binding:ProfileBinding(),
    ),
    GetPage(
      name: Routes.GRT,
      page: () => GrtvView(),
      binding:GrtvBinding(),
    ),
    GetPage(
      name: Routes.SHOP,
      page: () => ShopView(),
      binding:ShopBinding(),
    ),

  ];
}
