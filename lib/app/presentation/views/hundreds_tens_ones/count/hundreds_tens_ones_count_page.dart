import 'package:calcubes/app/presentation/controllers/hundreds_tens_ones/count/hundreds_tens_ones_count_controller.dart';
import 'package:calcubes/app/presentation/views/utils/app_appbar.dart';
import 'package:calcubes/app/presentation/views/utils/app_control_ones_tens_hundreds.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HundredsTensOnesCountPage extends StatelessWidget {
  final HundredsTensOnesCountController _hundredsTensOnesCountController =
      Get.find();
  HundredsTensOnesCountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppbar(
        onTapTitle: _hundredsTensOnesCountController.resetHundredsTensOnes,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Obx(
              () => SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${_hundredsTensOnesCountController.hundred}',
                            style: GoogleFonts.pacifico(fontSize: 50.0),
                          ),
                          Image.asset(
                            _hundredsTensOnesCountController.hundredsList[
                                _hundredsTensOnesCountController.hundred],
                            gaplessPlayback: true,
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${_hundredsTensOnesCountController.ten}',
                            style: GoogleFonts.pacifico(fontSize: 50.0),
                          ),
                          Image.asset(
                            _hundredsTensOnesCountController
                                .tensList[_hundredsTensOnesCountController.ten],
                            gaplessPlayback: true,
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${_hundredsTensOnesCountController.one}',
                            style: GoogleFonts.pacifico(fontSize: 50.0),
                          ),
                          Image.asset(
                            _hundredsTensOnesCountController
                                .onesList[_hundredsTensOnesCountController.one],
                            gaplessPlayback: true,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          AppControlOnesTensHundreds(
            isOnes: true,
            plusOnes: _hundredsTensOnesCountController.plusOne,
            minusOnes: _hundredsTensOnesCountController.lessOne,
            isTens: true,
            plusTens: _hundredsTensOnesCountController.plusTen,
            minusTens: _hundredsTensOnesCountController.lessTen,
            isHundreds: true,
            plusHundreds: _hundredsTensOnesCountController.plusHundred,
            minusHundreds: _hundredsTensOnesCountController.lessHundred,
          ),
        ],
      ),
    );
  }
}
