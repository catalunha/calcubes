import 'package:calcubes/app/presentation/controllers/ones/count/ones_count_controller.dart';
import 'package:calcubes/app/presentation/views/utils/app_appbar.dart';
import 'package:calcubes/app/presentation/views/utils/app_control_ones_tens_hundreds.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnesCountPage extends StatelessWidget {
  final OnesCountController _onesCountController = Get.find();
  OnesCountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppbar(
        onTapTitle: _onesCountController.resetOne,
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(
              () => Image.asset(
                _onesCountController.onesList[_onesCountController.one],
                gaplessPlayback: true,
              ),
            ),
          ),
          AppControlOnesTensHundreds(
            isOnes: true,
            plusOnes: _onesCountController.plusOne,
            minusOnes: _onesCountController.lessOne,
          ),
        ],
      ),
    );
  }
}
