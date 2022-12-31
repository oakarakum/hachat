// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
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
          backgroundColor: Colors.white,
        ),
        bottomNavigationBar: CurvedNavigationBar(
          height: 57,
          items: controller.items,
          index: controller.index.value,
          onTap: (value) {
            controller.index.value = value;
          },
          backgroundColor: Colors.deepOrange,
          color: Colors.pink,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 1.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        height: 2.6.h,
                        width: 10.w,
                        child: Image.asset(
                          "assets/menu-bar.png",
                        )),
                    SizedBox(width: 25.w),
                    SizedBox(width: 30.w),
                    Icon(
                      Icons.settings,
                      color: Colors.black,
                      size: 3.4.h,
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
