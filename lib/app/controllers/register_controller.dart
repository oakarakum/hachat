// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../routes/app_pages.dart';

class RegisterController extends GetxController {
  RxBool registerVisibilityVariable = true.obs;

  void returnToLogin() {
    Get.toNamed(Routes.LOGIN);
  }

  void registerVisible() {
    registerVisibilityVariable.value = !registerVisibilityVariable.value;
  }

  registerVisiblityIcon() {
    if (registerVisibilityVariable == false) {
      return Icons.visibility;
    } else {
      return Icons.visibility_off;
    }
  }

  dialog() {
    Get.defaultDialog(
        title: "Hesap Oluşturma",
        titleStyle: const TextStyle(color: Color(0xffef5350)),
        middleText: "İşlem Başarılı",
        middleTextStyle: const TextStyle(color: Colors.white),
        backgroundColor: const Color(0xffffa4a2),
        cancel: GestureDetector(
          onTap: () {
            Get.toNamed(Routes.LOGIN);
          },
          child: Container(
            height: 6.h,
            width: 25.w,
            decoration:  BoxDecoration(
              color: Color(0xffef5350),
              borderRadius: BorderRadius.circular(5.w)
            ),
              child:  Center(
                child: Text(
            "Giriş yap",
            style: TextStyle(color: Colors.white),
          ),
              )),
        ));
  }

  /* snackBar() {
    
    Get.snackbar("Hesap Oluşturma:", "Başarılı",
        snackPosition: SnackPosition.BOTTOM,
        
        colorText: Color(0xffe53935),
        forwardAnimationCurve: Curves.decelerate,
        padding: EdgeInsets.symmetric(horizontal: 5.w,vertical: 2.h),
        borderRadius: 3.w,
        borderWidth: .3.w,
        borderColor:  Color(0xffe53935),
        backgroundGradient: const LinearGradient(
          colors: [
            Color(0xffffa4a2),
            
            Color(0xffffa4a2)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ));
  } */
}
