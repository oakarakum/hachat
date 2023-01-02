// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../controllers/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: Color(0xffd1d9ff),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          height: 57,
          items: controller.items,
          index: controller.tabIndex.value,
          onTap: (value) {
            controller.changeTabsIndex;
          },
          backgroundColor: Color(0xffb2dfdb),
          color: Color(0xffe0f7fa),
        ),
        body: Container(
          height: 100.h,
          width: 100.w,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color(0xffd1d9ff),
            Color(0xffb3e5fc),
            Color(0xffb2dfdb),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          child: Column(
            children: [
              Container(
                height: 45.h,
                width: 100.w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/homepage_pic.jpg",
                        ),
                        fit: BoxFit.cover)),
                //child: Image.asset("assets/2202_w037_n003_224b_p1_224.jpg"))
              ),
              Padding(
                padding: EdgeInsets.only(top: 2.h),
                child: Text(
                  "Ana Sayfa",
                  style: TextStyle(
                      color: Color(0xfffff9c4),
                      fontWeight: FontWeight.w500,
                      fontSize: 4.h,
                      letterSpacing: .5.w),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Divider(
                  thickness: .4.h,
                  color: Color(0xffFFFFFF),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Column(
                  children: [
                    ListTile(
                      onLongPress: () {},
                      leading: Padding(
                        padding: EdgeInsets.only(left: 5.w),
                        child: Icon(Icons.calculate,
                            size: 3.5.h, color: const Color(0xfffff9c4)),
                      ),
                      title: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.w),
                        child: GestureDetector(
                          onTap: () {
                            controller.gpaPage();
                          },
                          child: Text(
                            "GPA Hesaplama",
                            style: TextStyle(
                                color: Color(0xfffff9c4),
                                fontWeight: FontWeight.w500,
                                fontSize: 3.h),
                          ),
                        ),
                      ),
                      trailing: Padding(
                        padding: EdgeInsets.only(right: 5.w),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: const Color(0xfffff9c4),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2.h),
                      child: ListTile(
                        onLongPress: () {},
                        leading: Padding(
                          padding: EdgeInsets.only(left: 5.w),
                          child: Icon(Icons.announcement,
                              size: 3.5.h, color: const Color(0xfffff9c4)),
                        ),
                        title: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.w),
                          child: GestureDetector(
                            onTap: () {
                              controller.gpaPage();
                            },
                            child: Padding(
                              padding:  EdgeInsets.only(bottom: .3.h),
                              child: Text(
                                "Duyurular",
                                style: TextStyle(
                                    color: Color(0xfffff9c4),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 3.h),
                              ),
                            ),
                          ),
                        ),
                        trailing: Padding(
                          padding: EdgeInsets.only(right: 5.w),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: const Color(0xfffff9c4),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: 2.h),
                      child: ListTile(
                        onTap: () {},
                        leading: Padding(
                          padding: EdgeInsets.only(left: 5.w),
                          child: Icon(Icons.event,
                              size: 3.5.h, color: const Color(0xfffff9c4)),
                        ),
                        title: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.w),
                          child: GestureDetector(
                            onTap: () {
                              controller.gpaPage();
                            },
                            child: Padding(
                              padding:  EdgeInsets.only(bottom: .2.h),
                              child: Text(
                                "Etkinlikler",
                                style: TextStyle(
                                    color: const Color(0xfffff9c4),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 3.h),
                              ),
                            ),
                          ),
                        ),
                        trailing: Padding(
                          padding: EdgeInsets.only(right: 4.7.w),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xfffff9c4),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: 1.5.h),
                      child: ListTile(
                        onLongPress: () {},
                        leading: Padding(
                          padding: EdgeInsets.only(left: 5.w),
                          child: Icon(Icons.info,
                              size: 3.5.h, color: const Color(0xfffff9c4)),
                        ),
                        title: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.w),
                          child: GestureDetector(
                            onTap: () {
                              controller.gpaPage();
                            },
                            child: Padding(
                              padding:  EdgeInsets.only(bottom: .2.h),
                              child: Text(
                                "Hakkımızda",
                                style: TextStyle(
                                    color: const Color(0xfffff9c4),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 3.h),
                              ),
                            ),
                          ),
                        ),
                        trailing: Padding(
                          padding: EdgeInsets.only(right: 4.7.w),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xfffff9c4),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
