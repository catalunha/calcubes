import 'package:calcubes/app/presentation/views/utils/app_assets.dart';
import 'package:get/get.dart';

class OnesCountController extends GetxController {
  final _one = 0.obs;
  get one {
    return _one.value;
  }

  plusOne() {
    if (_one.value >= 10) {
      _one.value = 10;
    } else {
      _one.value++;
    }
  }

  lessOne() {
    if (_one.value <= 0) {
      _one.value = 0;
    } else {
      _one.value--;
    }
  }

  resetOne() {
    _one.value = 0;
  }

  List<String> onesList = [
    AppAssets.one00,
    AppAssets.one01,
    AppAssets.one02,
    AppAssets.one03,
    AppAssets.one04,
    AppAssets.one05,
    AppAssets.one06,
    AppAssets.one07,
    AppAssets.one08,
    AppAssets.one09,
    AppAssets.one10,
  ];
}
