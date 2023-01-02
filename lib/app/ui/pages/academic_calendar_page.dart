import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../controllers/academic_calendar_controller.dart';

class AcademicCalendarPage extends GetView<AcademicCalendarController> {
  const AcademicCalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: Colors.black,
        ),
        bottomNavigationBar: CurvedNavigationBar(
          height: 57,
          items: controller.items,
          index: controller.tabIndex.value,
          onTap: (value) {
            controller.changeTabsIndex;
          },
          backgroundColor: const Color(0xff5be3ab),
          color: const Color(0xffe0f7fa),
        ),
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Container(
            height: 100.h,
            width: 100.w,
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color(0xffe2faea),
              Color(0xff5be3ab),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 35.h,
                  width: 100.w,
                  child: Image.asset(
                    "assets/academic.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.h),
                  child: Text(
                    "Akademik Takvimler",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 4.7.h,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  //genel
                  height: 9.h,
                  width: 100.w,
                  margin: EdgeInsets.only(top: 1.h, left: 5.w, right: 5.w),
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: [
                        Color(0xff80deea),
                        Color(0xff26c6da),
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                      borderRadius: BorderRadius.circular(4.w),
                      image: const DecorationImage(
                          image: AssetImage("assets/beytepe-anit.jpg"))),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 1.w),
                      child: Text(
                        "Eczacılık Fakültesi",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 3.4.h,
                          fontWeight: FontWeight.w400,
                          letterSpacing: .5.w,
                        ),
                      ),
                    ),
                  ),
                ),
                //tıp
                Container(
                  height: 9.h,
                  width: 100.w,
                  margin: EdgeInsets.only(top: 2.h, left: 5.w, right: 5.w),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [
                      Color(0xff80deea),
                      Color(0xff26c6da),
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    borderRadius: BorderRadius.circular(4.w),
                  ),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 1.w),
                      child: Text(
                        "Tıp Fakültesi",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 3.4.h,
                          fontWeight: FontWeight.w400,
                          letterSpacing: .5.w,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 9.h,
                  width: 100.w,
                  margin: EdgeInsets.only(top: 2.h, left: 5.w, right: 5.w),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [
                      Color(0xff80deea),
                      Color(0xff26c6da),
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    borderRadius: BorderRadius.circular(4.w),
                  ),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 1.w),
                      child: Text(
                        "Diş Fakültesi",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 3.4.h,
                          fontWeight: FontWeight.w400,
                          letterSpacing: .5.w,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 9.h,
                  width: 100.w,
                  margin: EdgeInsets.only(top: 2.h, left: 5.w, right: 5.w),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [
                      Color(0xff80deea),
                      Color(0xff26c6da),
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    borderRadius: BorderRadius.circular(4.w),
                  ),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 1.w),
                      child: Text(
                        "Eğitim Fakültesi",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 3.4.h,
                          fontWeight: FontWeight.w400,
                          letterSpacing: .5.w,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
