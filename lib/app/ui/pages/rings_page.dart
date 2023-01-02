// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../controllers/rings_controller.dart';

class RingsPage extends GetView<RingsController> {
  const RingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff000000),
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: Color(0xff000000),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          height: 57,
          items: controller.items,
          index: controller.tabIndex.value,
          onTap: (value) {
            controller.changeTabsIndex;
          },
          backgroundColor: const Color(0xff000000),
          color: const Color(0xffe0f7fa),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/hac_ring.jpg"),
              Padding(
                padding: EdgeInsets.only(left: 2.w, right: 2.w, top: 1.h),
                child: SizedBox(
                    height: 2.1.h,
                    width: 100.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("GÜZERGAH ADI",
                            style: TextStyle(
                                color: Color(0xffffee58),
                                fontSize: 2.h,
                                fontWeight: FontWeight.w500)),
                        Padding(
                          padding: EdgeInsets.only(left: 2.w),
                          child: Text("HAREKET SAATİ",
                              style: TextStyle(
                                  color: Color(0xfffff59d),
                                  fontSize: 2.h,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ],
                    )),
              ),

              //veri
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 2.w,
                ),
                child: Divider(
                  color: Colors.white,
                  thickness: 0.5.w,
                ),
              ),
              //Listview
              SizedBox(
                height: 50.h,
                width: 100.w,
                child: ListView(
                  children: [
                    //1-S.NO
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("AYRANCI - HOŞDERE CAD. ORAN SİTESİ",
                              style: TextStyle(
                                  color: Color(0xff42a5f5),
                                  fontSize: 1.7.h,
                                  fontWeight: FontWeight.w500)),
                          Padding(
                            padding: EdgeInsets.only(left: 6.w),
                            child: Text("08:00 | 16:00",
                                style: TextStyle(
                                    color: Color(0xff42a5f5),
                                    fontSize: 1.8.h,
                                    fontWeight: FontWeight.w500)),
                          ),
                        ],
                      ),
                    ),
                    //2-S.NO
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("BAHÇELİ - EMEK",
                              style: TextStyle(
                                  color: Color(0xff42a5f5),
                                  fontSize: 1.7.h,
                                  fontWeight: FontWeight.w500)),
                          Text("08:10 | 16:00",
                              style: TextStyle(
                                  color: Color(0xff42a5f5),
                                  fontSize: 1.8.h,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                    //3-S.NO
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("BATIKENT-1",
                              style: TextStyle(
                                  color: Color(0xff42a5f5),
                                  fontSize: 1.7.h,
                                  fontWeight: FontWeight.w500)),
                          Text("08:10 | 16:00",
                              style: TextStyle(
                                  color: Color(0xff42a5f5),
                                  fontSize: 1.8.h,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                    //4-S.NO
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("BATIKENT-2/ÇAKIRLAR",
                              style: TextStyle(
                                  color: Color(0xff42a5f5),
                                  fontSize: 1.7.h,
                                  fontWeight: FontWeight.w500)),
                          Text("08:10 | 16:00",
                              style: TextStyle(
                                  color: Color(0xff42a5f5),
                                  fontSize: 1.8.h,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                    //5-S.NO
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("DİKMEN",
                              style: TextStyle(
                                  color: Color(0xff42a5f5),
                                  fontSize: 1.7.h,
                                  fontWeight: FontWeight.w500)),
                          Text("08:10 | 16:00",
                              style: TextStyle(
                                  color: Color(0xff42a5f5),
                                  fontSize: 1.8.h,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                    //6-S.NO
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("ERYAMAN - 1",
                              style: TextStyle(
                                  color: Color(0xff42a5f5),
                                  fontSize: 1.7.h,
                                  fontWeight: FontWeight.w500)),
                          Text("07:55 | 15:40",
                              style: TextStyle(
                                  color: Color(0xff42a5f5),
                                  fontSize: 1.8.h,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                    //7-S.NO
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("ERYAMAN - 2",
                              style: TextStyle(
                                  color: Color(0xff42a5f5),
                                  fontSize: 1.7.h,
                                  fontWeight: FontWeight.w500)),
                          Text("08:10 | 16:00",
                              style: TextStyle(
                                  color: Color(0xff42a5f5),
                                  fontSize: 1.8.h,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                    //8-S.NO
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("ETLİK",
                              style: TextStyle(
                                  color: Color(0xff42a5f5),
                                  fontSize: 1.7.h,
                                  fontWeight: FontWeight.w500)),
                          Text("08:10 | 16:00",
                              style: TextStyle(
                                  color: Color(0xff42a5f5),
                                  fontSize: 1.8.h,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                    //9-S.NO
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("ELVANKENT - ETİMESGUT-BAĞLICA",
                              style: TextStyle(
                                  color: Color(0xff42a5f5),
                                  fontSize: 1.7.h,
                                  fontWeight: FontWeight.w500)),
                          Text("08:10 | 16:00",
                              style: TextStyle(
                                  color: Color(0xff42a5f5),
                                  fontSize: 1.8.h,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                    //10-S.NO
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("GÖLBAŞI - 1",
                              style: TextStyle(
                                  color: Color(0xff42a5f5),
                                  fontSize: 1.7.h,
                                  fontWeight: FontWeight.w500)),
                          Text("08:10 | 16:00",
                              style: TextStyle(
                                  color: Color(0xff42a5f5),
                                  fontSize: 1.8.h,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                    //11-S.NO
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("GÖLBAŞI-2/TOKİ",
                              style: TextStyle(
                                  color: Color(0xff42a5f5),
                                  fontSize: 1.7.h,
                                  fontWeight: FontWeight.w500)),
                          Text("08:10 | 16:00",
                              style: TextStyle(
                                  color: Color(0xff42a5f5),
                                  fontSize: 1.8.h,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                    //12-S.NO
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("KEÇİÖREN - 1 ",
                              style: TextStyle(
                                  color: Color(0xff42a5f5),
                                  fontSize: 1.7.h,
                                  fontWeight: FontWeight.w500)),
                          Text("08:10 | 16:00",
                              style: TextStyle(
                                  color: Color(0xff42a5f5),
                                  fontSize: 1.8.h,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                    //13-S.NO
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("KEÇİÖREN - 2 ",
                              style: TextStyle(
                                  color: Color(0xff42a5f5),
                                  fontSize: 1.7.h,
                                  fontWeight: FontWeight.w500)),
                          Text("08:10 | 16:00",
                              style: TextStyle(
                                  color: Color(0xff42a5f5),
                                  fontSize: 1.8.h,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
