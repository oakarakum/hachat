import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../routes/app_pages.dart';

class MapsController extends GetxController {
  RxInt tabIndex = 1.obs;
  var context;
  RxList<Widget> items = [
    GestureDetector(
      onTap: () {
        Get.toNamed(Routes.ACADEMIC);
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
        onTap: () {
          Get.toNamed(Routes.HOME);
        },
        child: Icon(Icons.home, size: 3.5.h, color: const Color(0xff4a148c))),
    GestureDetector(
        onTap: () {
          Get.toNamed(Routes.RINGS);
        },
        child:
            Icon(Icons.bus_alert, size: 3.5.h, color: const Color(0xff4a148c))),
    GestureDetector(
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

  merkezModal(BuildContext context) {
    showModalBottomSheet(
        context: context,
        isDismissible: true,
        isScrollControlled: true,
        enableDrag: true,
        elevation: 1,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(5.w))),
        builder: (context) => Container(
              decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [
                    Color(0xff4fc3f7),
                    Color(0xff82e9de),
                  ], begin: Alignment.topLeft, end: Alignment.topRight),
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(5.w))),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sıhhiye Kampüs Haritası",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 3.h),
                  ),
                  Image.asset("assets/merkez kroki.jpg")
                ],
              ),
            ));

    //"assets/merkez kroki.jpg"
  }

  beyTepeModal(BuildContext context) {
    showModalBottomSheet(
        context: context,
        isDismissible: true,
        isScrollControlled: true,
        enableDrag: true,
        elevation: 1,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(5.w))),
        builder: (context) => Container(
              decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [
                    Color(0xff4fc3f7),
                    Color(0xff82e9de),
                  ], begin: Alignment.topLeft, end: Alignment.topRight),
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(5.w))),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Beytepe Kampüs Haritası",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 3.h),
                  ),
                  Image.asset("assets/beytepe_kroki.jpg")
                ],
              ),
            ));

    //"assets/merkez kroki.jpg"
  }
}
