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
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          toolbarHeight: 0,
          toolbarOpacity: 0,
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FadeInLeftBig(
                child: Container(
                  //Login en üst fotoğraf
                  height: 60.h,
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
                          "Login to your account",
                          style: TextStyle(
                              color: Color(0xffe53935),
                              fontSize: 3.h,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          //controller.email = value;
                        },
                        style: TextStyle(color: Color(0xff263238)),
                        keyboardType: TextInputType.emailAddress,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (!GetUtils.isEmail(value!)) {
                            return "Email isn't valid";
                          } else if (value.isEmpty) {
                            return "Empty field";
                          } else {
                            return null;
                          }
                        },
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          isDense: true,
                          prefixIcon: Icon(
                            Icons.email,
                            color: Color(0xffe53935),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Password",
                            style: TextStyle(
                                color: Color(0xffFFFFFF),
                                letterSpacing: 1,
                                fontWeight: FontWeight.w600,
                                fontSize: 2.h),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Obx(() => Padding(
                            padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).viewInsets.bottom > 0
                                        ? 7.h
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
                                    return "Field is empty";
                                  }
                                },
                                textAlignVertical: TextAlignVertical.center,
                                decoration: InputDecoration(
                                  isDense: true,
                                  prefixIcon: Icon(
                                    Icons.key_sharp,
                                    color: Color(0xffe53935),
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
                                  hintText: "Password",
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
                        height: 6.h,
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
                                  color: Color(0xff00e676),
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
        ));
  }
}
