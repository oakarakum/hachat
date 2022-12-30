import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../controllers/register_controller.dart';

class RegisterPage extends GetView<RegisterController> {
  const RegisterPage({super.key});

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FadeInLeftBig(
                child: Container(
                  //Register en üst fotoğraf
                  height: 20.h,
                  width: 100.w,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/register.jpeg"),
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
                          "Hesap Oluştur",
                          style: TextStyle(
                              color: const Color(0xffe53935),
                              fontSize: 3.h,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      TextFormField(
                         maxLength: 25,
                        maxLengthEnforcement: MaxLengthEnforcement.enforced,
                        style: const TextStyle(color: Color(0xff263238)),
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
                          prefixIcon: const Icon(
                            Icons.email,
                            color: const Color(0xff000a12),
                          ),
                          hintText: "E-Mail",
                          hintStyle: const TextStyle(
                              color: Color(0xffe53935),
                              letterSpacing: 2.5,
                              fontWeight: FontWeight.w500),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: const Color(0xff000a12),
                                  width: 0.2.w)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: const Color(0xff000a12),
                                  width: 0.2.w)),
                        ),
                      ),
                      /*Kenarda dursun
                  padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).viewInsets.bottom > 0
                                        ? 7.h
                                        : 0), */
                      Obx(() => Padding(
                            padding: EdgeInsets.symmetric(vertical: 2.h),
                            child: SizedBox(
                              height: 9.4.h,
                              width: 100.w,
                              child: TextFormField(
                                /* onChanged: (value) {
                              controller.password = value;
                            }, */
                                maxLength: 25,
                                maxLengthEnforcement:
                                    MaxLengthEnforcement.enforced,
                                style:
                                    const TextStyle(color: Color(0xff263238)),
                                obscureText:
                                    controller.registerVisibilityVariable.value,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (value) {
                                  if (value!.length < 4) {
                                    return "Şifre dört karakterden kısa olamaz";
                                  } else if (value.isEmpty) {
                                    return "Alan boş bırakılamaz.";
                                  } else {
                                    return null;
                                  }
                                },
                                textAlignVertical: TextAlignVertical.center,
                                decoration: InputDecoration(
                                  isDense: true,
                                  prefixIcon: const Icon(
                                    Icons.key_sharp,
                                    color: Color(0xff000a12),
                                  ),
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      controller.registerVisible();
                                    },
                                    child: Icon(
                                      controller.registerVisiblityIcon(),
                                      color: const Color(0xff263238),
                                      size: 3.3.h,
                                    ),
                                  ),
                                  hintText: "Şifre",
                                  hintStyle: const TextStyle(
                                      color: Color(0xffe53935),
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.w500),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: const Color(0xff000a12),
                                          width: 0.2.w)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: const Color(0xff000a12),
                                          width: 0.2.w)),
                                ),
                              ),
                            ),
                          )),
                      //--------------ISIM-SOYISIM------------------
                      TextFormField(
                        //ad
                        maxLength: 25,
                        maxLengthEnforcement: MaxLengthEnforcement.enforced,
                        style: const TextStyle(color: Color(0xff263238)),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value!.length < 2) {
                            return "İsim iki harften kısa olamaz";
                          } else if (value.isEmpty) {
                            return "Alan boş bırakılamaz.";
                          } else {
                            return null;
                          }
                        },
                        textAlignVertical: TextAlignVertical.center,
                        inputFormatters: [
                          FilteringTextInputFormatter(RegExp("[a-zA-Z]"),
                              allow: true),
                        ],
                        decoration: InputDecoration(
                          isDense: true,
                          prefixIcon: const Icon(
                            Icons.account_circle,
                            color: Color(0xff000a12),
                          ),
                          hintText: "İsim-Soyisim",
                          hintStyle: const TextStyle(
                              color: Color(0xffe53935),
                              letterSpacing: 1.3,
                              fontWeight: FontWeight.w500),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: const Color(0xff000a12),
                                  width: 0.2.w)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: const Color(0xff000a12),
                                  width: 0.2.w)),
                        ),
                      ),
                      //--------------ISIM-SOYISIM------------------
                      TextFormField(
                        //ad
                        maxLength: 25,
                        maxLengthEnforcement: MaxLengthEnforcement.enforced,
                        style: const TextStyle(color: Color(0xff263238)),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value!.length < 2) {
                            return "İsim iki harften kısa olamaz";
                          } else if (value.isEmpty) {
                            return "Alan boş bırakılamaz.";
                          } else {
                            return null;
                          }
                        },
                        textAlignVertical: TextAlignVertical.center,
                        inputFormatters: [
                          FilteringTextInputFormatter(RegExp("[a-zA-Z]"),
                              allow: true),
                        ],
                        decoration: InputDecoration(
                          isDense: true,
                          prefixIcon: const Icon(
                            Icons.account_circle,
                            color: Color(0xff000a12),
                          ),
                          hintText: "İsim-Soyisim",
                          hintStyle: const TextStyle(
                              color: Color(0xffe53935),
                              letterSpacing: 1.3,
                              fontWeight: FontWeight.w500),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: const Color(0xff000a12),
                                  width: 0.2.w)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: const Color(0xff000a12),
                                  width: 0.2.w)),
                        ),
                      ),
                      //--------------ISIM-SOYISIM------------------
                      TextFormField(
                        //ad
                        maxLength: 25,
                        maxLengthEnforcement: MaxLengthEnforcement.enforced,
                        style: const TextStyle(color: Color(0xff263238)),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value!.length < 2) {
                            return "İsim iki harften kısa olamaz";
                          } else if (value.isEmpty) {
                            return "Alan boş bırakılamaz.";
                          } else {
                            return null;
                          }
                        },
                        textAlignVertical: TextAlignVertical.center,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          isDense: true,
                          prefixIcon: const Icon(
                            Icons.account_circle,
                            color: Color(0xff000a12),
                          ),
                          hintText: "İsim-Soyisim",
                          hintStyle: const TextStyle(
                              color: Color(0xffe53935),
                              letterSpacing: 1.3,
                              fontWeight: FontWeight.w500),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: const Color(0xff000a12),
                                  width: 0.2.w)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: const Color(0xff000a12),
                                  width: 0.2.w)),
                        ),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Hesabınız var mı?",
                              style: TextStyle(
                                  color: const Color(0xff000a12),
                                  fontSize: 2.h,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.3.w)),
                          SizedBox(
                            width: .8.w,
                          ),
                          GestureDetector(
                            onTap: () {
                              //Get.to(() => RegisterScreen());
                              controller.returnToLogin();
                            },
                            child: Text("Giriş yapın.",
                                style: TextStyle(
                                    color: const Color(0xff00e676),
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
