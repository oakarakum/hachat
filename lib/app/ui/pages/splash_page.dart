// ignore_for_file: prefer_const_constructors

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../controllers/splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            FadeInDownBig(
              delay: const Duration(milliseconds: 500),
              child: Container(
                height: 40.h,
                width: 100.w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/hacettepe manzara.jpg"),
                        fit: BoxFit.cover)),
              ),
            ),
            FadeInDownBig(
              child: SizedBox(
                  height: 38.h,
                  child: SvgPicture.asset(
                    "assets/Hacettepe_Üniversitesi_Logosu.svg",
                    height: 35.h,
                  )),
            ),
            SizedBox(
              height: 1.h,
            ),
            FadeInUpBig(
              child: Text(
                'Hacettepe Üniversitesi',
                style: GoogleFonts.ptSerif(
                    fontWeight: FontWeight.w700,
                    fontSize: 3.5.h,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 9.5.h,
            ),
            FadeInUpBig(
              delay: const Duration(milliseconds: 500),
              child: Text(
                'Coded by FIORES GLOBAL',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 2.h,
                    color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
