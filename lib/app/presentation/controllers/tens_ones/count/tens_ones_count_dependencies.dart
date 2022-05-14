import 'package:calcubes/app/presentation/controllers/tens_ones/count/tens_ones_count_controller.dart';
import 'package:get/get.dart';

class TensOnesCountDependencies implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TensOnesCountController>(() => TensOnesCountController());
  }
}
