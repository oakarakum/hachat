// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../controllers/gpacalc_controller.dart';

class GpaCalcPage extends GetView<GpaCalcController> {
  const GpaCalcPage({super.key});
//koyu yeşiş 125a64
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 178, 213, 210),
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 5.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "GPA CALCULATOR",
                      style: TextStyle(
                          color: Color(0xff1a237e),
                          fontSize: 3.h,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                //beyaz kont
                height: 44.h,
                width: 100.w,
                margin: EdgeInsets.symmetric(vertical: 2.h),
                decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    border: Border.all(width: 0.5.w, color: Color(0xff006064))),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 2.w, top: 1.5.h),
                          child: Text("Sömestır I",
                              style: TextStyle(
                                  color: Color(0xff1a237e),
                                  fontSize: 3.h,
                                  fontWeight: FontWeight.w500)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.h, right: 1.w),
                          child: Icon(
                            Icons.close,
                            color: Colors.red,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 2.w, top: 1.8),
                      child: Row(
                        children: [
                          Text("Ders",
                              style: TextStyle(
                                  color: Color(0xff125a64),
                                  fontSize: 2.4.h,
                                  fontWeight: FontWeight.w600)),
                          Padding(
                            padding: EdgeInsets.only(left: 20.5.w),
                            child: Text("Harf Notu",
                                style: TextStyle(
                                    color: Color(0xff125a64),
                                    fontSize: 2.4.h,
                                    fontWeight: FontWeight.w600)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 6.w),
                            child: Text("Notlar",
                                style: TextStyle(
                                    color: Color(0xff125a64),
                                    fontSize: 2.4.h,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                      width: 100.w,
                      child: ListView.builder(
                        itemCount: 6,
                        itemBuilder: (context, index) {
                        return Padding(//
                      padding: EdgeInsets.only(left: 2.w, top: 1.5,bottom: 1.5.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            //ders field
                            height: 3.5.h,
                            width: 28.w,
                            child: TextFormField(
                              textAlignVertical: TextAlignVertical.center,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color.fromARGB(255, 178, 213, 210),
                                  hintText: "Ör. Matematik",
                                  hintStyle: TextStyle(
                                      color: Color(0xff125a64),
                                      fontSize: 1.5.h,
                                      fontWeight: FontWeight.w300)),
                            ),
                          ),
                          Padding(
                            //harf notu
                            padding: EdgeInsets.only(left: 3.w),
                            child: SizedBox(
                              height: 3.5.h,
                              width: 21.w,
                              child: TextFormField(
                                textAlignVertical: TextAlignVertical.center,
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor:
                                        Color.fromARGB(255, 178, 213, 210),
                                    hintText: "Ör. A",
                                    hintStyle: TextStyle(
                                        color: Color(0xff125a64),
                                        fontSize: 1.5.h,
                                        fontWeight: FontWeight.w300)),
                              ),
                            ),
                          ),
                          //not
                          Padding(
                            //harf notu
                            padding: EdgeInsets.only(left: 6.5.w),
                            child: SizedBox(
                              height: 3.5.h,
                              width: 14.w,
                              child: TextFormField(
                                textAlignVertical: TextAlignVertical.center,
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor:
                                        Color.fromARGB(255, 178, 213, 210),
                                    hintText: "Ör 50",
                                    hintStyle: TextStyle(
                                        color: Color(0xff125a64),
                                        fontSize: 1.5.h,
                                        fontWeight: FontWeight.w300)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 4.w),
                            child: SizedBox(
                              height: 2.h,
                              width: 5.w,
                              child: SvgPicture.asset("assets/close.svg")
                            )
                            /* Icon(
                              Icons.close,
                              color: Color(0xff125a64),
                            ), */
                          )
                        ],
                      ),
                    );
                      },),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 1.2.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                                height: 2.h,
                                width: 5.w,
                                child: SvgPicture.asset("assets/plus.svg",color: Color(0xff125a64))
                              ),
                          Padding(padding: EdgeInsets.only(left: 2.w,right: 5.w),
                          child: Text("Add Course",style: TextStyle(
                                          color: Color(0xff125a64),
                                          fontSize: 2.h,
                                          fontWeight: FontWeight.w600),),
                          
                          ),
                          SizedBox(
                                height: 2.h,
                                width: 5.w,
                                child: SvgPicture.asset("assets/close.svg",color: Colors.red,)
                              ),
                              Padding(padding: EdgeInsets.only(left: 2.w,right: 5.w),
                          child: Text("Clear All",style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 2.h,
                                          fontWeight: FontWeight.w600),),
                          
                          ),
                        ],
                      ),
                    )
                    
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
