import 'package:get/get.dart';
import 'package:hachat/app/bindings/home_binding.dart';
import 'package:hachat/app/bindings/login_binding.dart';
import 'package:hachat/app/bindings/register_binding.dart';
import 'package:hachat/app/bindings/splash_binding.dart';
import 'package:hachat/app/ui/pages/home_page.dart';
import 'package:hachat/app/ui/pages/login_page.dart';
import 'package:hachat/app/ui/pages/register_page.dart';
import 'package:hachat/app/ui/pages/splash_page.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding()
    ),
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashPage(),
      binding: SplashBinding()
    ),
    GetPage(
      name: Routes.REGISTER,
      page: () => RegisterPage(),
      binding: RegisterBinding()
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      binding: HomeBinding()
    ),
  ];
}
