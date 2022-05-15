import 'package:calcubes/app/domain/models/parts_of_operation.dart';
import 'package:calcubes/app/presentation/views/utils/app_assets.dart';
import 'package:get/get.dart';

class HundredsTensOnesAddController extends GetxController {
  // int number1Hundreds = 0;
  // int number1Tens = 0;
  // int number1Ones = 0;
  // int number2Hundreds = 0;
  // int number2Tens = 0;
  // int number2Ones = 0;
  // int sum = 0;

  var answer = 0.obs;
  var isAnswerCorrect = false.obs;
  late PartsOfOperation partsSum;
  @override
  void onInit() {
    partsSum = Get.arguments;
    print(partsSum.toString());
    print(partsSum.number1Hundreds());
    print(partsSum.number1Tens());
    print(partsSum.number1Ones());
    print(partsSum.number2Hundreds());
    print(partsSum.number2Tens());
    print(partsSum.number2Ones());
    print(partsSum.answer());
    ever(_hundreds, (value) => recalculateSum());
    ever(_tens, (value) => recalculateSum());
    ever(_one, (value) => recalculateSum());
    super.onInit();
  }

  recalculateSum() {
    isAnswerCorrect(false);
    answer.value = _hundreds.value * 100 + _tens.value * 10 + _one.value;
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
  //================
  resetHundredsTensOnes() {
    resetHundred();
    resetTen();
    resetOne();
  }
}
