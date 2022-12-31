import 'package:get/get.dart';
import '../controllers/rings_controller.dart';

class RingsBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(RingsController());
  }
}
