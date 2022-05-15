import 'package:calcubes/app/presentation/controllers/tens/count/tens_count_controller.dart';
import 'package:calcubes/app/presentation/views/utils/app_appbar.dart';
import 'package:calcubes/app/presentation/views/utils/app_control_ones_tens_hundreds.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TensCountPage extends StatelessWidget {
  final TensCountController _tensCountController = Get.find();
  TensCountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppbar(
        onTapTitle: _tensCountController.resetTen,
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(
              () => Image.asset(
                _tensCountController.tensList[_tensCountController.ten],
                gaplessPlayback: true,
              ),
            ),
          ),
          AppControlOnesTensHundreds(
            isTens: true,
            plusTens: _tensCountController.plusTen,
            minusTens: _tensCountController.lessTen,
          ),
        ],
      ),
    );
  }
}
