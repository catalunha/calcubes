import 'package:calcubes/app/presentation/controllers/tens/count/tens_count_controller.dart';
import 'package:get/get.dart';

class TensCountDependencies implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TensCountController>(() => TensCountController());
  }
}
