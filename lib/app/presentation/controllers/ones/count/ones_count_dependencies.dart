import 'package:calcubes/app/presentation/controllers/ones/count/ones_count_controller.dart';
import 'package:get/get.dart';

class OnesCountDependencies implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnesCountController>(() => OnesCountController());
  }
}
