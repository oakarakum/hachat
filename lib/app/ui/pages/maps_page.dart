// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../controllers/maps_controller.dart';

class MapsPage extends GetView<MapsController> {
  const MapsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: Colors.white,
        ),
        bottomNavigationBar: CurvedNavigationBar(
          height: 57,
          items: controller.items,
          index: controller.tabIndex.value,
          onTap: (value) {
            controller.changeTabsIndex;
          },
          backgroundColor: const Color(0xffb2dfdb),
          color: const Color(0xffe0f7fa),
        ),
        body: Container(
            height: 100.h,
            width: 100.w,
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color(0xffd1d9ff),
              Color(0xffb3e5fc),
              Color(0xffb2dfdb),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
            child: Column(
              children: [
                Column(
                  children: [
                    SizedBox(
                        height: 33.h,
                        width: 100.w,
                        child: Image.asset(
                          "assets/hacettepe-universitesi-sıhhiye-kampusu.jpg",
                          fit: BoxFit.fill,
                        )),
                    Padding(
                      padding: EdgeInsets.only(left: 5.w, right: 5.w, top: 2.h),
                      child: Container(
                        height: 7.5.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xff4fc3f7), Color(0xff82e9de)],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight),
                          borderRadius: BorderRadius.circular(3.w),
                        ),
                        child: Center(
                            child: GestureDetector(
                          onTap: () {
                            //controller.merkezModal();
                            controller.merkezModal(context);
                          },
                          child: Text(
                            "Merkez Kampüsü",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 3.h,
                                fontWeight: FontWeight.w600),
                          ),
                        )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 2.h),
                      child: SizedBox(
                          height: 33.h,
                          width: 100.w,
                          child: Image.asset(
                            "assets/beytepe_camps.jpg",
                            fit: BoxFit.fill,
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 7.5.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Color(0xff4fc3f7), Color(0xff82e9de)],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight),
                            borderRadius: BorderRadius.circular(3.w),
                          ),
                          child: Center(
                              child: Text(
                            "Beytepe Kampüsü",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 3.h,
                                fontWeight: FontWeight.w600),
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ))
            
            );
            
  }
}
