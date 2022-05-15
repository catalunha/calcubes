import 'package:calcubes/app/presentation/controllers/hundreds/count/hundreds_count_controller.dart';
import 'package:calcubes/app/presentation/views/utils/app_appbar.dart';
import 'package:calcubes/app/presentation/views/utils/app_control_ones_tens_hundreds.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HundredsCountPage extends StatelessWidget {
  final HundredsCountController _hundredsCountController = Get.find();
  HundredsCountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppbar(
        onTapTitle: _hundredsCountController.resetHundred,
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(
              () => Image.asset(
                _hundredsCountController
                    .hundredsList[_hundredsCountController.hundred],
                gaplessPlayback: true,
              ),
            ),
          ),
          AppControlOnesTensHundreds(
            isHundreds: true,
            plusHundreds: _hundredsCountController.plusHundred,
            minusHundreds: _hundredsCountController.lessHundred,
          ),
        ],
      ),
    );
  }
}
