// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../controllers/login_controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          toolbarHeight: 0,
          toolbarOpacity: 0,
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
            child: Container(
          height: 150.h,
          width: 100.w,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [Color(0xffcfd8dc), Color(0xfffafafa), Color(0xffffa4a2)],
            begin: Alignment.bottomLeft,
            end: Alignment.centerRight,
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              FadeInLeftBig(
                child: Container(
                  //Login en üst fotoğraf
                  height: 52.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/login_pic.jpg"),
                          fit: BoxFit.cover)),
                ),
              ),
              FadeInRightBig(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 1.2.h, bottom: 1.2.h),
                        child: Text(
                          "Hesabına giriş yap",
                          style: TextStyle(
                              color: Color(0xffe53935),
                              fontSize: 3.h,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "E-mail:",
                            style: TextStyle(
                                color: Color(0xff000a12),
                                letterSpacing: 1,
                                fontWeight: FontWeight.w600,
                                fontSize: 2.h),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 1.h),
                        child: TextFormField(
                          style: TextStyle(color: Color(0xff263238)),
                          keyboardType: TextInputType.emailAddress,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (!GetUtils.isEmail(value!)) {
                              return "Email formatına uygun değil";
                            } else if (value.isEmpty) {
                              return "Alan boş bırakılamaz.";
                            } else {
                              return null;
                            }
                          },
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            isDense: true,
                            prefixIcon: Icon(
                              Icons.email,
                              color: const Color(0xff000a12),
                            ),
                            hintText: "E-Mail",
                            hintStyle: TextStyle(
                                color: Color(0xffe53935),
                                letterSpacing: 2.5,
                                fontWeight: FontWeight.w500),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xff000a12), width: 0.2.w)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xff000a12), width: 0.2.w)),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Şifre:",
                            style: TextStyle(
                                color: Color(0xff000a12),
                                letterSpacing: 1,
                                fontWeight: FontWeight.w600,
                                fontSize: 2.h),
                          ),
                        ],
                      ),
                      SizedBox(
                        //
                        height: 1.h,
                      ),
                      Obx(() => Padding(
                            padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).viewInsets.top > 0
                                        ? 20.h
                                        : 0),
                            child: SizedBox(
                              height: 6.5.h,
                              width: 100.w,
                              child: TextFormField(
                                onChanged: (value) {
                                  controller.password = value;
                                },
                                style: TextStyle(color: Color(0xff263238)),
                                obscureText: controller.isPasswordHidden.value,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Alan boş bırakılamaz.";
                                  }
                                  return null;
                                },
                                textAlignVertical: TextAlignVertical.center,
                                decoration: InputDecoration(
                                  isDense: true,
                                  prefixIcon: Icon(
                                    Icons.key_sharp,
                                    color: const Color(0xff000a12),
                                  ),
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      controller.visible();
                                    },
                                    child: Icon(
                                      controller.visibleIcon(),
                                      color: Color(0xff263238),
                                      size: 3.3.h,
                                    ),
                                  ),
                                  hintText: "Şifre",
                                  hintStyle: TextStyle(
                                      color: Color(0xffe53935),
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.w500),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xff000a12),
                                          width: 0.2.w)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xff000a12),
                                          width: 0.2.w)),
                                ),
                              ),
                            ),
                          )),
                      SizedBox(
                        height: 1.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Şifremi Unuttum",
                              style: TextStyle(
                                  color: Color(0xffEA4335),
                                  fontSize: 2.h,
                                  fontWeight: FontWeight.w400))
                        ],
                      ),
                      SizedBox(
                        height: 1.5.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.goHomepage();
                        },
                        child: Container(
                          height: 7.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.w),
                              gradient: LinearGradient(
                                colors: [Color(0xfffafafa),
                                 Color(0xffffa4a2)],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                              )
                              ),
                          child: Center(
                            child: Text(
                              "Giriş yap",
                              style: TextStyle(
                                  color: Color(0xffe53935),
                                  fontSize: 2.7.h,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Üye değil misiniz?",
                              style: TextStyle(
                                  color: Color(0xff000a12),
                                  fontSize: 2.h,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.3.w)),
                          SizedBox(
                            width: .8.w,
                          ),
                          GestureDetector(
                            onTap: () {
                              //Get.to(() => RegisterScreen());
                              controller.pageChanger();
                            },
                            child: Text("Buradan oluşturun.",
                                style: TextStyle(
                                    color: Color(0xffe53935),
                                    fontSize: 2.h,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )));
  }
}
