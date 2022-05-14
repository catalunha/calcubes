import 'package:calcubes/app/presentation/views/utils/app_assets.dart';
import 'package:get/get.dart';

class HundredsCountController extends GetxController {
  final _hundreds = 0.obs;
  get hundred {
    return _hundreds.value;
  }

  plusHundred() {
    if (_hundreds.value >= 10) {
      _hundreds.value = 10;
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
    AppAssets.hundred00,
    AppAssets.hundred01,
    AppAssets.hundred02,
    AppAssets.hundred03,
    AppAssets.hundred04,
    AppAssets.hundred05,
    AppAssets.hundred06,
    AppAssets.hundred07,
    AppAssets.hundred08,
    AppAssets.hundred09,
    AppAssets.hundred10,
  ];
}
