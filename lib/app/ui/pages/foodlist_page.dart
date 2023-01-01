// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../controllers/foodlist_controller.dart';

class FoodlistPage extends GetView<FoodlistController> {
  const FoodlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: const Color(0xffb3e5fc),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          height: 57,
          items: controller.items,
          index: controller.tabIndex.value,
          onTap: (value) {
            controller.changeTabsIndex;
          },
          backgroundColor: const Color(0xffd7ccc8),
          color: const Color(0xffe0f7fa),
        ),
        body: SingleChildScrollView(
          child: Container(
              height: 119.h,
              width: 100.w,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color(0xffe1bee7),
                Color(0xffd1c4e9),
                Color(0xffd7ccc8),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
              child: Column(
                children: [
                  SizedBox(
                    height: 30.h,
                    width: 100.w,
                    child: Image.asset(
                      "assets/dining_hall2.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    //resim altındaki column
                    padding: EdgeInsets.symmetric(horizontal: 3.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 1.5.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Ocak 2023 Yemek Listesi",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 3.5.h,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 21.h,
                          width: 100.w,
                          child: FoodList(context),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 1.5.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Kafeteryalar Yemek Saatleri",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 3.5.h,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 18.h,
                          width: 100.w,
                          child: Image.asset(
                            "assets/dining_hall4.jpg",
                            fit: BoxFit.fitWidth,
                          ),
                        ), //assets\food_cafe.jpg

                        //---------------BEYTEPE---------------//
                        Padding(
                          padding: EdgeInsets.only(top: 1.h),
                          child: Text("Beytepe",
                              style: TextStyle(
                                  color: Color(0xff6200ea),
                                  fontSize: 2.5.h,
                                  fontWeight: FontWeight.w500)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 1.h),
                          child: Text("Sabah:   08:00 - 09:15",
                              style: TextStyle(
                                  color: Color(0xff6200ea),
                                  fontSize: 1.7.h,
                                  fontWeight: FontWeight.w400)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 13.w),
                          child: Text("(Hafta Sonu- Resmi Tatil 09:00 - 10:00)",
                              style: TextStyle(
                                  color: Color(0xff6200ea),
                                  fontSize: 1.7.h,
                                  fontWeight: FontWeight.w400)),
                        ),

                        ///
                        Padding(
                          padding: EdgeInsets.only(top: 1.h),
                          child: Text("Öğle:      11:30 - 14:00",
                              style: TextStyle(
                                  color: Color(0xff6200ea),
                                  fontSize: 1.7.h,
                                  fontWeight: FontWeight.w400)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 13.w),
                          child: Text(
                              "(Hafta Sonu - Resmi Tatil 09:00 - 10:00)",
                              style: TextStyle(
                                  color: Color(0xff6200ea),
                                  fontSize: 1.7.h,
                                  fontWeight: FontWeight.w400)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 1.h),
                          child: Text("Akşam:  17:00 - 19:00",
                              style: TextStyle(
                                  color: Color(0xff6200ea),
                                  fontSize: 1.7.h,
                                  fontWeight: FontWeight.w400)),
                        ),
                        //---------------SIHHIYE---------------//
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 1.h),
                          child: Text("Sıhhiye",
                              style: TextStyle(
                                  color: Color(0xff6200ea),
                                  fontSize: 2.5.h,
                                  fontWeight: FontWeight.w500)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 1.h),
                          child: Text("Sabah:   08:00 - 09:00",
                              style: TextStyle(
                                  color: Color(0xff6200ea),
                                  fontSize: 1.7.h,
                                  fontWeight: FontWeight.w400)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 13.w),
                          child: Text("(Hafta Sonu- Resmi Tatil 09:00 - 10:00)",
                              style: TextStyle(
                                  color: Color(0xff6200ea),
                                  fontSize: 1.7.h,
                                  fontWeight: FontWeight.w400)),
                        ),

                        ///
                        Padding(
                          padding: EdgeInsets.only(top: 1.h),
                          child: Text("Öğle:      11:30 - 14:00",
                              style: TextStyle(
                                  color: Color(0xff6200ea),
                                  fontSize: 1.7.h,
                                  fontWeight: FontWeight.w400)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 13.w),
                          child: Text(
                              "(Hafta Sonu - Resmi Tatil 09:00 - 10:00)",
                              style: TextStyle(
                                  color: Color(0xff6200ea),
                                  fontSize: 1.7.h,
                                  fontWeight: FontWeight.w400)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 1.h),
                          child: Text("Akşam:  17:00 - 18:30",
                              style: TextStyle(
                                  color: Color(0xff6200ea),
                                  fontSize: 1.7.h,
                                  fontWeight: FontWeight.w400)),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ));
  }

  ListView FoodList(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      //padding: EdgeInsets.symmetric(horizontal: 5.w),
      shrinkWrap: true,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 2.w),
          child: GestureDetector(
            //pzt modal
            onTap: () {
              controller.foodPzModal(context);
            },
            child: Column(
              //1. listview column'ı
              children: [
                Text(
                  "Pazar",
                  style: TextStyle(
                      color: Color(0xffff6f60),
                      fontSize: 2.2.h,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 1.h),
                Container(
                  //Listview içindeki köşeli container
                  height: 17.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.3.w,
                      color: Color(0xffff5252),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(1.w),
                    child: Column(
                      //container içindeki column
                      children: [
                        Row(
                          //tarih yazısı
                          mainAxisAlignment: //
                              MainAxisAlignment.end,
                          children: [
                            Text(
                              "1",
                              style: TextStyle(
                                  color: Color(0xffff5252),
                                  fontSize: 1.8.h,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        Text(
                          "Şehriye Çorba (A)",
                          style: TextStyle(
                              color: Color(0xff6200ea),
                              fontSize: 1.8.h,
                              fontWeight: FontWeight.w400),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 0.5.h),
                          child: Text("Etli Nohut (A)",
                              style: TextStyle(
                                  color: Color(0xff6200ea),
                                  fontSize: 1.8.h,
                                  fontWeight: FontWeight.w400)),
                        ),
                        Text("Bulgur Pilavı (A)",
                            style: TextStyle(
                                color: Color(0xff6200ea),
                                fontSize: 1.8.h,
                                fontWeight: FontWeight.w400)),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 0.5.h),
                          child: Text("-Ayran (D)",
                              style: TextStyle(
                                  color: Color(0xff6200ea),
                                  fontSize: 1.8.h,
                                  fontWeight: FontWeight.w400)),
                        ),
                        Text("Sıhhiye Üzüm Hoşafı",
                            style: TextStyle(
                                color: Color(0xff6200ea),
                                fontSize: 1.8.h,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          //2. listview padding'i
          padding: EdgeInsets.only(right: 2.w),
          child: GestureDetector(
            onTap: () {
              controller.foodPztModal(context);
            },
            child: Column(
              //2. listview column'ı
              children: [
                Text(
                  "Pazartesi",
                  style: TextStyle(
                      color: Color(0xff455a64),
                      fontSize: 2.2.h,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 1.h),
                Container(
                  //Listview içindeki köşeli container
                  height: 17.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                      border:
                          Border.all(width: 0.3.w, color: Color(0xff455a64))),
                  child: Padding(
                    padding: EdgeInsets.all(1.w),
                    child: Column(
                      //container içindeki column
                      children: [
                        Row(
                          //tarih yazısı
                          mainAxisAlignment: //
                              MainAxisAlignment.end,
                          children: [
                            Text(
                              "2",
                              style: TextStyle(
                                  color: Color(0xff455a64),
                                  fontSize: 1.8.h,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        Text(
                          "Tarhana Çorba (A*D)",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Color(0xff6200ea),
                              fontSize: 1.8.h,
                              fontWeight: FontWeight.w400),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 0.5.h),
                          child: Text(
                              "Tavuk Şinitsel (bulgur pilavı garni) (A*C)",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Color(0xff6200ea),
                                  fontSize: 1.8.h,
                                  fontWeight: FontWeight.w400)),
                        ),
                        Text("Havuç Salata",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Color(0xff6200ea),
                                fontSize: 1.8.h,
                                fontWeight: FontWeight.w400)),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 0.5.h),
                          child: Text("Sıhhiye Ege Salata",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Color(0xff6200ea),
                                  fontSize: 1.8.h,
                                  fontWeight: FontWeight.w400)),
                        ),
                        Text("Meyve",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Color(0xff6200ea),
                                fontSize: 1.8.h,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 2.w),
          child: GestureDetector(
            onTap: () {
              controller.foodSaModal(context);
            },
            child: Column(
              //3. listview column'ı
              children: [
                Text(
                  "Salı",
                  style: TextStyle(
                      color: Color(0xff455a64),
                      fontSize: 2.2.h,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 1.h),
                Container(
                  //Listview içindeki köşeli container
                  height: 17.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                      border:
                          Border.all(width: 0.3.w, color: Color(0xff455a64))),
                  child: Padding(
                    padding: EdgeInsets.all(1.w),
                    child: Column(
                      //container içindeki column
                      children: [
                        Row(
                          //tarih yazısı
                          mainAxisAlignment: //
                              MainAxisAlignment.end,
                          children: [
                            Text(
                              "3",
                              style: TextStyle(
                                  color: Color(0xff455a64),
                                  fontSize: 1.8.h,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        Text(
                          "Ezogelin Çorba (A)",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Color(0xff6200ea),
                              fontSize: 1.8.h,
                              fontWeight: FontWeight.w400),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 0.5.h),
                          child: Text("Yumurtalı Ispanak (C)",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Color(0xff6200ea),
                                  fontSize: 1.8.h,
                                  fontWeight: FontWeight.w400)),
                        ),
                        Text("Spagetti Napoliten (A)",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Color(0xff6200ea),
                                fontSize: 1.8.h,
                                fontWeight: FontWeight.w400)),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 0.5.h),
                          child: Text("Ayran (D)",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Color(0xff6200ea),
                                  fontSize: 1.8.h,
                                  fontWeight: FontWeight.w400)),
                        ),
                        Text("Sıhhiye Ayva Komposto",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Color(0xff6200ea),
                                fontSize: 1.8.h,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
