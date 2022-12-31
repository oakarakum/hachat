
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../routes/app_pages.dart';

class AcademicCalendarController extends GetxController {
  RxInt tabIndex = 0.obs;
  RxList<Widget> items = [
    Icon(Icons.calendar_month,
        size: 3.5.h, color: const Color(0xff4a148c)),
    GestureDetector(
      onTap: () {
        Get.toNamed(Routes.MAPS);
      },
      child: Icon(
        Icons.map,
        size: 3.5.h,
        color: const Color(0xff4a148c),
      ),
    ),
    GestureDetector(//home'a gitme
        onTap: () {
          Get.toNamed(Routes.HOME);
        },
        child: Icon(Icons.home, size: 3.5.h, color: const Color(0xff4a148c))),
    GestureDetector(//ring'e gitme
      onTap: () {
        Get.toNamed(Routes.RINGS);
      },
      child: Icon(Icons.bus_alert, size: 3.5.h, color: const Color(0xff4a148c))),
    GestureDetector(//yemekhaneye gitme
      onTap: () {
        Get.toNamed(Routes.FOOD);
      },
      child: SizedBox(
          height: 3.5.h,
          child: Image.asset("assets/icons8-school-cafeteria-50.png",
              color: const Color(0xff4a148c))),
    )
  ].obs;
  void changeTabsIndex(int index) {
    tabIndex = index.obs;
    update();
  }

}
  