// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../controllers/gpacalc_controller.dart';

class GpaCalcPage extends GetView<GpaCalcController> {
  const GpaCalcPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color.fromARGB(255, 178, 213, 210),
        appBar: AppBar(
          backgroundColor: Color(0xff125a64),
          centerTitle: true,
          title: Text("GPA Calculator",style: TextStyle(letterSpacing: .7.w,fontWeight: FontWeight.w700),),
          elevation: .5.w,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w),
          child: Column(
            children: [
              semesterBlock(),
              addCalcRow(),
              resultContainer()],
          ),
        ));
  }

  Container semesterBlock() {
    return Container(
    //beyaz kont
    height: 48.8.h,
    width: 100.w,
    margin: EdgeInsets.symmetric(vertical: 1.5.h),
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
              child: Text("I.Sömestır ",
                  style: TextStyle(
                      color: Color(0xff1a237e),
                      fontSize: 4.h,
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
          padding: EdgeInsets.only(left: 2.w,top: .5.h),
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
                padding: EdgeInsets.only(left: 4.5.w),
                child: Text("Notlar",
                    style: TextStyle(
                        color: Color(0xff125a64),
                        fontSize: 2.4.h,
                        letterSpacing: .6.w,
                        fontWeight: FontWeight.w600)),
              ),
            ],
          ),
        ),
        dataListView(),
        Padding(
          padding: EdgeInsets.only(top: 1.2.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: 2.h,
                  width: 5.w,
                  child: SvgPicture.asset("assets/plus.svg",
                      color: Color(0xff125a64))),
              Padding(
                padding: EdgeInsets.only(left: 2.w, right: 10.w),
                child: Text(
                  "Ders Ekle",
                  style: TextStyle(
                      color: Color(0xff125a64),
                      fontSize: 2.h,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                  height: 2.h,
                  width: 5.w,
                  child: SvgPicture.asset(
                    "assets/close.svg",
                    color: Colors.red,
                  )),
              Padding(
                padding: EdgeInsets.only(left: 2.w, right: 5.w),
                child: Text(
                  "Hepsini Sil",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 2.h,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 2.w, top: 1.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("I. Sömestır GPA: ",
                  style: TextStyle(
                      color: Color(0xff125a64),
                      fontSize: 1.8.h,
                      fontWeight: FontWeight.w400)),
              Text("0.00",
                  style: TextStyle(
                      color: Color(0xff1a237e),
                      fontSize: 1.8.h,
                      fontWeight: FontWeight.w600))
            ],
          ),
        )
      ],
    ),
  );
  }

  Row addCalcRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 4.h,
          width: 30.w,
          decoration: BoxDecoration(
              color: Color(0xff125a64),
              borderRadius: BorderRadius.circular(1.w)),
          child: Center(
            child: Text(
              "Hesapla",
              style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 1.5.h,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
        Container(
          height: 4.h,
          width: 30.w,
          margin: EdgeInsets.only(left: 5.w),
          decoration: BoxDecoration(
              color: Color(0xff1a237e),
              borderRadius: BorderRadius.circular(1.w)),
          child: Center(
            child: Text(
              "Sömestır Ekle",
              style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 1.5.h,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ],
    );
  }

  Container resultContainer() {
    return Container(
      height: 7.h,
      width: 100.w,
      margin: EdgeInsets.only(top: 1.5.h),
      decoration: BoxDecoration(
          color: Color(0xff125a64), borderRadius: BorderRadius.circular(1.w)),
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Ortalama GPA",
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 2.h,
                      fontWeight: FontWeight.w700)),
              Text("0.00",
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 2.h,
                      fontWeight: FontWeight.w700)),
            ],
          ),
        ),
      ),
    );
  }

  
  SizedBox dataListView() {
    return SizedBox(
      height: 32.h,
      width: 100.w,
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            //
            padding: EdgeInsets.only(left: 2.w, top: 1.5, bottom: 1.5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  //ders field
                  height: 5.h,
                  width: 28.w,
                  child: TextFormField(
                    //textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 1.h, left: 3.w),
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Color.fromARGB(255, 178, 213, 210),
                        hintText: "Ör. Fizik",
                        hintStyle: TextStyle(
                            color: Color(0xff125a64),
                            fontSize: 2.h,
                            fontWeight: FontWeight.w600),
                        focusedBorder: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder()),
                  ),
                ),
                Padding(
                  //harf notu
                  padding: EdgeInsets.only(left: 3.w),
                  child: Obx(() => Container(
                        height: 5.h,
                        width: 22.w,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(1.w),
                            color: Color.fromARGB(255, 178, 213, 210)),
                        child: dropDownGrade(),
                        /* TextFormField(
                                        textAlignVertical: TextAlignVertical.center,
                                        decoration: InputDecoration(
                  
                                            /* suffixIcon: Icon(
                                                          Icons.arrow_drop_down,
                                                          size: 2.w,
                                                        ) /* /* SvgPicture.asset(
                                                            "assets/arrow_down_ios.svg",
                                                            height: 2.h,
                                                            width: 2.w,
                                                          ), */ */
                                                        , */
                                            filled: true,
                                            fillColor: Color.fromARGB(255, 178, 213, 210),
                                            hintText: "Ör. AA",
                                            hintStyle: TextStyle(
                                                color: Color(0xff125a64),
                                                fontSize: 1.5.h,
                                                fontWeight: FontWeight.w800)),
                                      ), */
                      )),
                ),
                //not
                Padding(
                  //harf notu
                  padding: EdgeInsets.only(left: 4.5.w),
                  child: SizedBox(
                    height: 5.h,
                    width: 23.w,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          filled: true,
                          fillColor: Color.fromARGB(255, 178, 213, 210),
                          hintText: "Ör.50",
                          hintStyle: TextStyle(
                              color: Color(0xff125a64),
                              fontSize: 2.h,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w600),
                          focusedBorder: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder()),
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 4.w),
                    child: SizedBox(
                        height: 2.h,
                        width: 5.w,
                        child: SvgPicture.asset("assets/close.svg"))
                    /* Icon(
                          Icons.close,
                          color: Color(0xff125a64),
                        ), */
                    )
              ],
            ),
          );
        },
      ),
    );
  }
//                        contentPadding: EdgeInsets.only(top: 1.h, left: 3.w),

//qqq
  DropdownButton<String> dropDownGrade() {
    return DropdownButton<String>(
      value: controller.dropdownvalue.value,
      icon: Padding(
        padding: EdgeInsets.only(left: 8.w, bottom: .4.h),
        child: SvgPicture.asset(
          "assets/arrow_down_ios.svg",
          height: .7.h,
          width: .7.h,
          color: Colors.black,
        ),
      ),

      //dropdownColor: Colors.green,
      style: TextStyle(color: Color(0xff125a64)),
      onChanged: (String? value) {
        // This is called when the user selects an item.

        controller.dropdownvalue.value = value!;
      },
      items: controller.grade.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Padding(
            padding: EdgeInsets.only(left: 3.w, bottom: .4.h),
            child: Text(
              value,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 2.h,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
