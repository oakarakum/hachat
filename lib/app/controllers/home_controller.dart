import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../routes/app_pages.dart';

class HomeController extends GetxController {
  RxInt index = 2.obs;
  RxList<Widget> items = [
    GestureDetector(
      onTap: () {
        Get.toNamed(Routes.LOGIN);
      },
      child: Icon(Icons.calendar_month,
          size: 3.5.h, color: const Color(0xff4a148c)),
    ),
    Icon(
      Icons.map,
      size: 3.5.h,
      color: const Color(0xff4a148c),
    ),
    GestureDetector(
        onTap: () {},
        child: Icon(Icons.home, size: 3.5.h, color: const Color(0xff4a148c))),
    Icon(Icons.bus_alert, size: 3.5.h, color: const Color(0xff4a148c)),
    Icon(Icons.calculate, size: 3.5.h, color: const Color(0xff4a148c)),
  ].obs;
  void food() {
    Get.toNamed(Routes.FOOD);
  }
}
