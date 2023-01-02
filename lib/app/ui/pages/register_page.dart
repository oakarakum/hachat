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
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            child: Container(
              height: 135.h,
              width: 100.w,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  Color(0xffcfd8dc),
                  Color(0xfff5f5f5),
                  Color(0xfffafafa),
                  Color(0xffffebee),
                  Color(0xffffa4a2),
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.centerRight,
              )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  FadeInLeftBig(
                    child: Container(
                      //Register en üst fotoğraf
                      height: 25.h,
                      width: 100.w,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/register.jpeg"),
                              fit: BoxFit.fill)),
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
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          //Email
                          TextFormField(
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(20),
                            ],
                            style: const TextStyle(color: Color(0xff263238)),
                            keyboardType: TextInputType.emailAddress,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
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
                                color: Color(0xff000a12),
                              ),
                              hintText: "E-Mail",
                              hintStyle: const TextStyle(
                                  color: Color(0xffe53935),
                                  letterSpacing: 2.5,
                                  fontWeight: FontWeight.w500),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: const Color(0xff000a12),
                                      width: 0.4.w)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: const Color(0xff000a12),
                                      width: 0.6.w)),
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
                                child: TextFormField(
                                  /* onChanged: (value) {
                            controller.password = value;
                            }, */

                                  style:
                                      const TextStyle(color: Color(0xff263238)),
                                  obscureText: controller
                                      .registerVisibilityVariable.value,
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
                                            width: 0.4.w)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: const Color(0xff000a12),
                                            width: 0.6.w)),
                                  ),
                                ),
                              )),
                          //--------------ISIM-------------------//
                          /* padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).viewInsets.top > 0
                                        ? 20.h
                                        : 0), */
                          TextFormField(
                            style: const TextStyle(color: Color(0xff263238)),
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
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
                              hintText: "İsim",
                              hintStyle: const TextStyle(
                                  color: Color(0xffe53935),
                                  letterSpacing: 1.3,
                                  fontWeight: FontWeight.w500),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: const Color(0xff000a12),
                                      width: 0.4.w)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: const Color(0xff000a12),
                                      width: 0.6.w)),
                            ),
                          ),
                          //--------------SOYISIM------------------//
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 2.h),
                            child: TextFormField(
                              style: const TextStyle(color: Color(0xff263238)),
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (value) {
                                if (value!.length < 2) {
                                  return "Soyad iki harften kısa olamaz";
                                } else if (value.isEmpty) {
                                  return "Alan boş bırakılamaz.";
                                } else {
                                  return null;
                                }
                              },
                              textAlignVertical: TextAlignVertical.center,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(15),
                                FilteringTextInputFormatter(RegExp("[a-zA-Z]"),
                                    allow: true),
                              ],
                              decoration: InputDecoration(
                                isDense: true,
                                prefixIcon: const Icon(
                                  Icons.account_circle,
                                  color: Color(0xff000a12),
                                ),
                                hintText: "Soyad",
                                hintStyle: const TextStyle(
                                    color: Color(0xffe53935),
                                    letterSpacing: 1.3,
                                    fontWeight: FontWeight.w500),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: const Color(0xff000a12),
                                        width: 0.4.w)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: const Color(0xff000a12),
                                        width: 0.6.w)),
                              ),
                            ),
                          ),
                          //--------------BABA Adı------------------//
                          TextFormField(
                            style: const TextStyle(color: Color(0xff263238)),
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
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
                              LengthLimitingTextInputFormatter(15),
                              FilteringTextInputFormatter(RegExp("[a-zA-Z]"),
                                  allow: true),
                            ],
                            decoration: InputDecoration(
                              isDense: true,
                              prefixIcon: const Icon(
                                Icons.account_circle,
                                color: Color(0xff000a12),
                              ),
                              hintText: "Baba Adı",
                              hintStyle: const TextStyle(
                                  color: Color(0xffe53935),
                                  letterSpacing: 1.3,
                                  fontWeight: FontWeight.w500),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: const Color(0xff000a12),
                                      width: 0.4.w)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: const Color(0xff000a12),
                                      width: 0.6.w)),
                            ),
                          ),
                          //--------------Okul No------------------//
                          Padding(
                            padding: EdgeInsets.only(top: 2.h, bottom: 1.1.h),
                            child: TextFormField(
                              style: const TextStyle(color: Color(0xff263238)),
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (value) {
                                if (value!.length < 2) {
                                  return "İsim iki harften kısa olamaz";
                                } else if (value.length > 15) {
                                  return "İsim on beş harften uzun olamaz";
                                } else if (value.isEmpty) {
                                  return "Alan boş bırakılamaz.";
                                } else {
                                  return null;
                                }
                              },
                              textAlignVertical: TextAlignVertical.center,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              decoration: InputDecoration(
                                isDense: true,
                                prefixIcon: const Icon(
                                  Icons.numbers_sharp,
                                  color: Color(0xff000a12),
                                ),
                                hintText: "Okul Numarası",
                                hintStyle: const TextStyle(
                                    color: Color(0xffe53935),
                                    letterSpacing: 1.3,
                                    fontWeight: FontWeight.w500),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: const Color(0xff000a12),
                                        width: 0.4.w)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: const Color(0xff000a12),
                                        width: 0.6.w)),
                              ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 1.7.h),
                            child: GestureDetector(
                              onTap: () {
                                controller.dialog();
                                //controller.snackBar();
                              },
                              child: Container(
                                height: 7.h,
                                width: 100.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.w),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: .5.w,
                                        blurRadius: 2,
                                        offset: Offset(
                                            0, 1), // changes position of shadow
                                      ),
                                    ],
                                    gradient: const LinearGradient(
                                      colors: [
                                        Color(0xfffafafa),
                                        Color(0xffffa4a2)
                                      ],
                                      begin: Alignment.bottomLeft,
                                      end: Alignment.topRight,
                                    )),
                                child: Center(
                                  child: Text(
                                    "Hesap Oluştur",
                                    style: TextStyle(
                                        color: const Color(0xffe53935),
                                        fontSize: 2.7.h,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 1),
                                  ),
                                ),
                              ),
                            ),
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
                                        color: const Color(0xffe53935),
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
