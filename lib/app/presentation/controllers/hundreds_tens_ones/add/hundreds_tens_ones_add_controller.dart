import 'package:calcubes/app/domain/models/parts_of_operation.dart';
import 'package:calcubes/app/presentation/views/utils/app_assets.dart';
import 'package:get/get.dart';

class HundredsTensOnesAddController extends GetxController {
  var answer = 0.obs;
  var isAnswerCorrect = false.obs;
  late PartsOfOperation partsSum;
  @override
  void onInit() {
    partsSum = Get.arguments;
    ever(_hundreds, (value) => recalculateSum());
    ever(_tens, (value) => recalculateSum());
    ever(_one, (value) => recalculateSum());
    if (partsSum.operation == '-') {
      isSubtraction(true);
    }
    super.onInit();
  }

  recalculateSum() {
    isAnswerCorrect(false);
    if (partsSum.operation == '+') {
      answer.value = _hundreds.value * 100 + _tens.value * 10 + _one.value;
    } else {
      answer.value = _hundreds.value * 100 + _tens.value * 10 + _one.value;
    }
    if (answer.value == partsSum.answer()) {
      isAnswerCorrect(true);
    }
  }

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
    AppAssets.miniHundreds0,
    AppAssets.miniHundreds1,
    AppAssets.miniHundreds2,
    AppAssets.miniHundreds3,
    AppAssets.miniHundreds4,
    AppAssets.miniHundreds5,
    AppAssets.miniHundreds6,
    AppAssets.miniHundreds7,
    AppAssets.miniHundreds8,
    AppAssets.miniHundreds9,
  ];
  // ====================== TENS =============================================
  final _tens = 0.obs;
  get ten {
    return _tens.value;
  }

  // plusTen() {
  //   if (_tens.value >= 9) {
  //     _tens.value = 9;
  //   } else {
  //     _tens.value++;
  //   }
  // }
  plusTen() {
    if (_tens.value >= 9) {
      _tens.value = 0;
      plusHundred();
    } else {
      _tens.value++;
    }
  }

  // lessTen() {
  //   if (_tens.value <= 0) {
  //     _tens.value = 0;
  //   } else {
  //     _tens.value--;
  //   }
  // }
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
    AppAssets.miniTens0,
    AppAssets.miniTens1,
    AppAssets.miniTens2,
    AppAssets.miniTens3,
    AppAssets.miniTens4,
    AppAssets.miniTens5,
    AppAssets.miniTens6,
    AppAssets.miniTens7,
    AppAssets.miniTens8,
    AppAssets.miniTens9,
  ];
  // ====================== ONES =============================================
  final _one = 0.obs;
  get one {
    return _one.value;
  }

  // plusOne() {
  //   if (_one.value >= 9) {
  //     _one.value = 9;
  //   } else {
  //     _one.value++;
  //   }
  // }
  plusOne() {
    if (_one.value >= 9) {
      _one.value = 0;
      plusTen();
    } else {
      _one.value++;
    }
  }

  // lessOne() {
  //   if (_one.value <= 0) {
  //     _one.value = 0;
  //   } else {
  //     _one.value--;
  //   }
  // }
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
    AppAssets.miniOnes0,
    AppAssets.miniOnes1,
    AppAssets.miniOnes2,
    AppAssets.miniOnes3,
    AppAssets.miniOnes4,
    AppAssets.miniOnes5,
    AppAssets.miniOnes6,
    AppAssets.miniOnes7,
    AppAssets.miniOnes8,
    AppAssets.miniOnes9,
  ];
  //=============================================
  resetHundredsTensOnes() {
    resetHundred();
    resetTen();
    resetOne();
    lostOne(false);
    lostTen(false);
    lostHundred(false);
  }

  // ====================== subtraction
  var isSubtraction = false.obs;
  var lostOne = false.obs;
  var lostTen = false.obs;
  var lostHundred = false.obs;
  void lost(String type, int value) {
    if (type == 'one') {
      lostOne(true);
      for (var i = 0; i < value; i++) {
        plusOne();
      }
    }
    if (type == 'ten') {
      lostTen(true);
      for (var i = 0; i < value; i++) {
        plusTen();
      }
    }
    if (type == 'hundred') {
      lostHundred(true);
      for (var i = 0; i < value; i++) {
        plusHundred();
      }
    }
  }

  // ====================== minus mini Ones =================
  List<String> minusMiniOnesList = [
    AppAssets.minusMiniOnes0,
    AppAssets.minusMiniOnes1,
    AppAssets.minusMiniOnes2,
    AppAssets.minusMiniOnes3,
    AppAssets.minusMiniOnes4,
    AppAssets.minusMiniOnes5,
    AppAssets.minusMiniOnes6,
    AppAssets.minusMiniOnes7,
    AppAssets.minusMiniOnes8,
    AppAssets.minusMiniOnes9,
  ];
  // ====================== minus mini Tens =================
  List<String> minusMiniTensList = [
    AppAssets.minusMiniTens0,
    AppAssets.minusMiniTens1,
    AppAssets.minusMiniTens2,
    AppAssets.minusMiniTens3,
    AppAssets.minusMiniTens4,
    AppAssets.minusMiniTens5,
    AppAssets.minusMiniTens6,
    AppAssets.minusMiniTens7,
    AppAssets.minusMiniTens8,
    AppAssets.minusMiniTens9,
  ];
  // ====================== minus mini Hundreds =================
  List<String> minusMiniHundredsList = [
    AppAssets.minusMiniHundreds0,
    AppAssets.minusMiniHundreds1,
    AppAssets.minusMiniHundreds2,
    AppAssets.minusMiniHundreds3,
    AppAssets.minusMiniHundreds4,
    AppAssets.minusMiniHundreds5,
    AppAssets.minusMiniHundreds6,
    AppAssets.minusMiniHundreds7,
    AppAssets.minusMiniHundreds8,
    AppAssets.minusMiniHundreds9,
  ];
}
