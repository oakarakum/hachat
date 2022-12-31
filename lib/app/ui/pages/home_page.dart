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
              Padding(
                padding: EdgeInsets.symmetric(vertical: 1.4.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        height: 2.6.h,
                        width: 10.w,
                        child: Image.asset("assets/menu-bar.png",
                            color: Color(0xff4a148c))),
                    Icon(
                      Icons.settings,
                      color: Color(0xff4a148c),
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
                          "assets/homepage_pic.jpg",
                        ),
                        fit: BoxFit.cover)),
                //child: Image.asset("assets/2202_w037_n003_224b_p1_224.jpg"))
              ),
              //Text("Hoş Geldiniz",style: TextStyle(color: Color(0xff4a148c),fontWeight: FontWeight.w400,fontSize: 3.h)),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 1.5.h),
                child: GestureDetector(
                  onTap: () {
                  },
                  child: ListTile(
                    leading: Icon(Icons.calculate,
                        size: 3.5.h, color: const Color(0xff4a148c)),
                    title: Text(
                      "Ortalama Hesaplama",
                      style: TextStyle(
                          color: Color(0xff4a148c),
                          fontWeight: FontWeight.w500,
                          fontSize: 3.h),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff4a148c),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
