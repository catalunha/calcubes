import 'package:calcubes/app/presentation/controllers/hundreds_tens_ones/count/hundreds_tens_ones_count_controller.dart';
import 'package:get/get.dart';

class HundredsTensOnesCountDependencies implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HundredsTensOnesCountController>(
        () => HundredsTensOnesCountController());
  }
}
