import 'package:calcubes/app/presentation/views/utils/app_assets.dart';
import 'package:get/get.dart';

class TensOnesCountController extends GetxController {
  final _tens = 0.obs;
  get ten {
    return _tens.value;
  }

  plusTen() {
    if (_tens.value >= 9) {
      _tens.value = 9;
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
    AppAssets.tens0,
    AppAssets.tens1,
    AppAssets.tens2,
    AppAssets.tens3,
    AppAssets.tens4,
    AppAssets.tens5,
    AppAssets.tens6,
    AppAssets.tens7,
    AppAssets.tens8,
    AppAssets.tens9,
  ];
  // ===================================================================
  final _one = 0.obs;
  get one {
    return _one.value;
  }

  plusOne() {
    if (_one.value >= 9) {
      _one.value = 9;
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
    AppAssets.ones0,
    AppAssets.ones1,
    AppAssets.ones2,
    AppAssets.ones3,
    AppAssets.ones4,
    AppAssets.ones5,
    AppAssets.ones6,
    AppAssets.ones7,
    AppAssets.ones8,
    AppAssets.ones9,
  ];
  //================
  resetTensOnes() {
    resetTen();
    resetOne();
  }
}