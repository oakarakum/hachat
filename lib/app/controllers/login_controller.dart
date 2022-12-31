import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/app_pages.dart';

class LoginController extends GetxController {
  var isPasswordHidden = true.obs;
  String email = "";
  String password = "";

  void goHomepage() {
    Get.toNamed(Routes.HOME);
  }

  void pageChanger() {
    // Get.to(() => RegisterScreen());
    Get.toNamed(Routes.REGISTER);
  }

  void visible() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

  visibleIcon() {
    if (isPasswordHidden == false) {
      return Icons.visibility;
    } else {
      return Icons.visibility_off;
    }
  }
}
