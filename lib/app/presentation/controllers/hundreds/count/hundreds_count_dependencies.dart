import 'package:calcubes/app/presentation/controllers/hundreds/count/hundreds_count_controller.dart';
import 'package:get/get.dart';

class HundredsCountDependencies implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HundredsCountController>(() => HundredsCountController());
  }
}
