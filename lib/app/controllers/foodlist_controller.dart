import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../routes/app_pages.dart';

class FoodlistController extends GetxController {
  RxInt tabIndex = 4.obs;
  RxList<Widget> items = [
    GestureDetector(
      onTap: () {
        Get.toNamed(Routes.ACADEMIC);
        
      },
      child: Icon(Icons.calendar_month,
          size: 3.5.h, color: const Color(0xff4a148c)),
    ),
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
    GestureDetector(
        onTap: () {
          Get.toNamed(Routes.HOME);
        },
        child: Icon(Icons.home, size: 3.5.h, color: const Color(0xff4a148c))),
    GestureDetector(
      onTap: () {
        Get.toNamed(Routes.RINGS);
      },
      child: Icon(Icons.bus_alert, size: 3.5.h, color: const Color(0xff4a148c))),
    SizedBox(
        height: 3.5.h,
        child: Image.asset("assets/icons8-school-cafeteria-50.png",color: const Color(0xff4a148c)))
  ].obs;
  void changeTabsIndex(int index) {
    tabIndex = index.obs;
    update();
  }
  foodPzModal(BuildContext context) {
    showModalBottomSheet(
        context: context,
        isDismissible: true,
        isScrollControlled: true,
        enableDrag: true,
        elevation: 1,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(5.w))),
        builder: (context) => Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color(0xffe1bee7),
              Color(0xffd1c4e9),
              Color(0xffd7ccc8),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Detaylar:",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 3.h),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:1.w),
                    child: Text(
                      "Vegan:Hayır",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 2.h),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:1.w),
                    child: Text(
                      "Gluten:Yok",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 2.h),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:1.w),
                    child: Text(
                      "Kalori:1019",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 2.h),
                    ),
                  ),
                  Image.asset("assets/beytepe_kroki.jpg")
                ],
              ),
            ));

  }
  foodPztModal(BuildContext context) {
    showModalBottomSheet(
        context: context,
        isDismissible: true,
        isScrollControlled: true,
        enableDrag: true,
        elevation: 1,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(5.w))),
        builder: (context) => Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color(0xffe1bee7),
              Color(0xffd1c4e9),
              Color(0xffd7ccc8),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Detaylar:",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 3.h),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:1.w),
                    child: Text(
                      "Vegan:Hayır",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 2.h),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:1.w),
                    child: Text(
                      "Gluten:Var",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 2.h),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:1.w),
                    child: Text(
                      "Kalori:1385",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 2.h),
                    ),
                  ),
                  Image.asset("assets/tabildot_pzt.jpg")
                ],
              ),
            ));

  }
  foodSaModal(BuildContext context) {
    showModalBottomSheet(
        context: context,
        isDismissible: true,
        isScrollControlled: true,
        enableDrag: true,
        elevation: 1,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(5.w))),
        builder: (context) => Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color(0xffe1bee7),
              Color(0xffd1c4e9),
              Color(0xffd7ccc8),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Detaylar:",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 3.h),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:1.w),
                    child: Text(
                      "Vegan:Hayır",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 2.h),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:1.w),
                    child: Text(
                      "Gluten:Var",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 2.h),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:1.w),
                    child: Text(
                      "Kalori:1385",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 2.h),
                    ),
                  ),
                  Image.asset("assets/tablot_paz.jpg")
                ],
              ),
            ));

  }
}
