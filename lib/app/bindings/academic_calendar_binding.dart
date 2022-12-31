
import 'package:get/get.dart';
import '../controllers/academic_calendar_controller.dart';


class AcademicBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AcademicCalendarController());
  }
}