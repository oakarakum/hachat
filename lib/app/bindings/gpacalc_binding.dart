import 'package:get/get.dart';
import '../controllers/gpacalc_controller.dart';

class GpaCalcBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(GpaCalcController());
  }
}
