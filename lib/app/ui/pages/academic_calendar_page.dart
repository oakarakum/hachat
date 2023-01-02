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

                //Eczacılık
                Padding(
                  padding: EdgeInsets.only(left: 5.w, right: 5.w),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(100.w, 7.h),
                        elevation: 1.2.h,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3.w)),
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.w, vertical: 2.h),
                        backgroundColor: const Color(0xff80cbc4),
                        side: BorderSide(
                            width: .4.w, color: const Color(0xff4f9a94))),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 1.w),
                        child: Text(
                          "Fen Fakültesi",
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
                )
                //tıp
                ,
                Padding(
                  padding: EdgeInsets.only(top: 3.h, left: 5.w, right: 5.w),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(100.w, 7.h),
                        elevation: 1.2.h,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3.w)),
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.w, vertical: 2.h),
                        backgroundColor: const Color(0xff80cbc4),
                        side: BorderSide(
                            width: .4.w, color: const Color(0xff4f9a94))),
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
                ),
                Padding(
                  padding: EdgeInsets.only(top: 3.h, left: 5.w, right: 5.w),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(100.w, 7.h),
                        elevation: 1.2.h,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3.w)),
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.w, vertical: 2.h),
                        backgroundColor: const Color(0xff80cbc4),
                        side: BorderSide(
                            width: .4.w, color: const Color(0xff4f9a94))),
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
                ),
                Padding(
                  padding: EdgeInsets.only(top: 3.h, left: 5.w, right: 5.w),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(100.w, 7.h),
                        elevation: 1.2.h,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3.w)),
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.w, vertical: 2.h),
                        backgroundColor: const Color(0xff80cbc4),
                        side: BorderSide(
                            width: .4.w, color: const Color(0xff4f9a94))),
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
                )
              ],
            ),
          ),
        ));
  }
}
