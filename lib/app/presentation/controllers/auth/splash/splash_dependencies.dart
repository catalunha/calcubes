import 'package:calcubes/app/presentation/controllers/auth/splash/splash_controller.dart';
import 'package:get/get.dart';

class SplashDependencies implements Bindings {
  @override
  void dependencies() {
    Get.put<SplashController>(SplashController());
  }
}
