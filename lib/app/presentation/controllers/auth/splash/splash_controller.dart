import 'package:calcubes/app/routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() async {
    super.onInit();
    await Future.delayed(const Duration(seconds: 1), () {
      print('delayed execution');
    });

    Get.offAllNamed(Routes.home);
  }
}
