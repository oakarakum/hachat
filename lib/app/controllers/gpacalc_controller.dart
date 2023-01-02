import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GpaCalcController extends GetxController {
  RxString dropdownvalue = "AA".obs;
  RxList<String> grade = [
    "AA",
    "BA",
    "BB",
    "CB",
    "CC",
    "DC",
    "DD",
    "FD",
    "FF",
  ].obs;

  /* gradeDropdownMenu() {
    DropdownButton(
      hint: Text("Ör AA"),
      onChanged: (newValue) {
          
        },
        /* value: dropdownvalue,
        icon: const Icon(Icons.keyboard_arrow_down),
        items: grade.map((String grade) {
          return DropdownMenuItem(
            child: Text(grade),
          );
        }).toList(), */
        
        );
  } */
}
