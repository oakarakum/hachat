// ignore_for_file: prefer_const_constructors

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
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
              delay: const Duration(milliseconds: 700),
              child: Stack(
                children: [
                  Container(
                    height: 40.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/hacettepe manzara.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  Positioned(
                    left: 40.h,
                    child: SizedBox(
                        height: 15.h,
                        child: SvgPicture.asset(
                          "assets/Hacettepe_Üniversitesi_Logosu.svg",
                          height: 10.h,
                        )),
                  )
                ],
              ),
            ),
            
            Padding(
              padding: EdgeInsets.symmetric(vertical: 4.h),
              child: FadeInLeftBig(
                delay: Duration(milliseconds: 950),
                child: Text(
                  'HACHAT',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                      fontSize: 3.2.h,
                      color: Colors.red),
                ),
              ),
            ),
            
            
                  
            FadeInUpBig(
              delay: const Duration(milliseconds: 700),
              child: 
               Container(
                    height: 45.29.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/fiores.jpg"),fit: BoxFit.cover),
                            )),
                  ),
              
            /* Text(
                    'FIORES GLOBAL tarafından tasarlanmıştır.',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 2.h,
                        color: Colors.black),
                  ), */
          ],
        ),
      ),
    );
  }
}
