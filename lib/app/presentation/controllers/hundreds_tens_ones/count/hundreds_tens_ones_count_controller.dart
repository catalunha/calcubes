import 'package:calcubes/app/presentation/views/utils/app_assets.dart';
import 'package:get/get.dart';

class HundredsTensOnesCountController extends GetxController {
  // ====================== HUNDREDS =============================================
  final _hundreds = 0.obs;
  get hundred {
    return _hundreds.value;
  }

  plusHundred() {
    if (_hundreds.value >= 9) {
      _hundreds.value = 9;
    } else {
      _hundreds.value++;
    }
  }

  lessHundred() {
    if (_hundreds.value <= 0) {
      _hundreds.value = 0;
    } else {
      _hundreds.value--;
    }
  }

  resetHundred() {
    _hundreds.value = 0;
  }

  List<String> hundredsList = [
    AppAssets.hundreds0,
    AppAssets.hundreds1,
    AppAssets.hundreds2,
    AppAssets.hundreds3,
    AppAssets.hundreds4,
    AppAssets.hundreds5,
    AppAssets.hundreds6,
    AppAssets.hundreds7,
    AppAssets.hundreds8,
    AppAssets.hundreds9,
  ];
  // ====================== TENS =============================================
  final _tens = 0.obs;
  get ten {
    return _tens.value;
  }

  plusTen() {
    if (_tens.value >= 9) {
      _tens.value = 0;
      plusHundred();
    } else {
      _tens.value++;
    }
  }

  lessTen() {
    if (_tens.value <= 0) {
      if (_hundreds.value > 0) {
        _tens.value = 9;
        lessHundred();
      } else {
        _tens.value = 0;
      }
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
  // ====================== ONES =============================================
  final _one = 0.obs;
  get one {
    return _one.value;
  }

  plusOne() {
    if (_one.value >= 9) {
      _one.value = 0;
      plusTen();
    } else {
      _one.value++;
    }
  }

  lessOne() {
    if (_one.value <= 0) {
      if (_tens.value > 0) {
        _one.value = 9;
        lessTen();
      } else if (_hundreds.value > 0) {
        _tens.value = 9;
        lessHundred();
        _one.value = 9;
      } else {
        _one.value = 0;
      }
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
    AppAssets.ones0,
  ];
  //================
  resetHundredsTensOnes() {
    resetHundred();
    resetTen();
    resetOne();
  }
}
