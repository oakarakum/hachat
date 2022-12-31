// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
          index: controller.index.value,
          onTap: (value) {
            controller.index.value = value;
          },
          backgroundColor: Color(0xffb2dfdb),
          color: Color(0xffe0f7fa),
        ),
        body: Container(
          height: 100.h,
          width: 100.w,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xffd1d9ff),
                Color(0xffb3e5fc),
                Color(0xffb2dfdb),
               
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
            )
          ),
          child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 1.4.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      height: 2.6.h,
                      width: 10.w,
                      child: Image.asset(
                        "assets/menu-bar.png",
                      )),
                  Icon(
                    Icons.settings,
                    color: Colors.black,
                    size: 3.4.h,
                  )
                ],
              ),
            ),
           
            Container(
              height: 30.h,
              width: 100.w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/homepage_pic.jpg",),fit: BoxFit.cover)),
              //child: Image.asset("assets/2202_w037_n003_224b_p1_224.jpg"))
            )
          ],
        ),
        )
         );
  }
}
