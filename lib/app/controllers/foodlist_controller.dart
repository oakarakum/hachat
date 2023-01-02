// ignore_for_file: prefer_const_constructors

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
        child:
            Icon(Icons.bus_alert, size: 3.5.h, color: const Color(0xff4a148c))),
    SizedBox(
        height: 3.5.h,
        child: Image.asset("assets/icons8-school-cafeteria-50.png",
            color: const Color(0xff4a148c)))
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
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color(0xffe1bee7),
                    Color(0xffd1c4e9),
                    Color(0xffd7ccc8),
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(5.w))),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 1.5.w, top: 1.h),
                        child: Text(
                          "Detaylar:",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 3.h),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.w),
                child: Divider(
                  thickness: .4.h,
                  color: Color(0xffFFFFFF),
                ),
              ),
                  Padding(
                    padding: EdgeInsets.only(left: 3.5.w, top: 1.5.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Vegan:",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 2.h),
                        ),
                        const Icon(
                          Icons.close,
                          color: Colors.red,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 1.5.h, horizontal: 3.5.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Gluten:",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 2.h),
                        ),
                        const Icon(
                          Icons.close,
                          color: Colors.red,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 3.5.w, bottom: 1.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Kalori:1019 kcal",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 2.h),
                        ),
                        //Icon(Icons.cal,color: Colors.red,)
                      ],
                    ),
                  ),
                  Image.asset("assets/tablot_paz.jpg")
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
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: const [
                    Color(0xffe1bee7),
                    Color(0xffd1c4e9),
                    Color(0xffd7ccc8),
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(5.w))),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 1.w, top: 1.h),
                        child: Text(
                          "Detaylar:",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 3.h),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w),
                child: Divider(
                  thickness: .4.h,
                  color: Color(0xffFFFFFF),
                ),
              ),
                  Padding(
                    padding: EdgeInsets.only(left: 3.w, top: 1.5.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Vegan:",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 2.h),
                        ),
                        const Icon(
                          Icons.close,
                          color: Colors.red,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 1.5.h, horizontal: 3.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Gluten:",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 2.h),
                        ),
                        const Icon(
                          Icons.check,
                          color: Colors.green,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 3.w, bottom: 1.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Kalori:1385 kcal",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 2.h),
                        ),
                        //Icon(Icons.cal,color: Colors.red,)
                      ],
                    ),
                  ),
                  Container(
                      height: 40.h,
                      width: 100.w,
                      child: Image.asset(
                        "assets/tabildot_pzt.jpg",
                        fit: BoxFit.fitWidth,
                      ))
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
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: const [
                    Color(0xffe1bee7),
                    Color(0xffd1c4e9),
                    Color(0xffd7ccc8),
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(5.w))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 1.w, top: 1.h),
                            child: Text(
                              "Detaylar:",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 3.h),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w),
                child: Divider(
                  thickness: .4.h,
                  color: Color(0xffFFFFFF),
                ),
              ),
                      Padding(
                        padding: EdgeInsets.only(left: 3.w, top: 1.5.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Vegan:",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 2.h),
                            ),
                            const Icon(
                              Icons.close,
                              color: Colors.red,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 1.5.h, horizontal: 3.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Gluten:",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 2.h),
                            ),
                            const Icon(
                              Icons.check,
                              color: Colors.green,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 3.w, bottom: 1.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Kalori:1385 kcal",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 2.h),
                            ),
                            //Icon(Icons.cal,color: Colors.red,)
                          ],
                        ),
                      ),
                    ],
                  ),
                  Image.asset("assets/tablot_sali.jpg")
                ],
              ),
            ));
  }
}
