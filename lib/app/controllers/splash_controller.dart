
import 'package:get/get.dart';

import '../routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onReady() async{
    await Future.delayed(const Duration(milliseconds: 2200));
    Get.toNamed(Routes.LOGIN);
    super.onReady();
  }
}
  