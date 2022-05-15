import 'package:calcubes/app/presentation/controllers/hundreds_tens_ones/add/hundreds_tens_ones_add_controller.dart';
import 'package:get/get.dart';

class HundredsTensOnesAddDependencies implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HundredsTensOnesAddController>(
        () => HundredsTensOnesAddController());
  }
}
