import 'package:calcubes/app/presentation/views/utils/app_assets.dart';
import 'package:get/get.dart';

class TensCountController extends GetxController {
  final _tens = 0.obs;
  get ten {
    return _tens.value;
  }

  plusTen() {
    if (_tens.value >= 10) {
      _tens.value = 10;
    } else {
      _tens.value++;
    }
  }

  lessTen() {
    if (_tens.value <= 0) {
      _tens.value = 0;
    } else {
      _tens.value--;
    }
  }

  resetTen() {
    _tens.value = 0;
  }

  List<String> tensList = [
    AppAssets.ten00,
    AppAssets.ten01,
    AppAssets.ten02,
    AppAssets.ten03,
    AppAssets.ten04,
    AppAssets.ten05,
    AppAssets.ten06,
    AppAssets.ten07,
    AppAssets.ten08,
    AppAssets.ten09,
    AppAssets.ten10,
  ];
}
