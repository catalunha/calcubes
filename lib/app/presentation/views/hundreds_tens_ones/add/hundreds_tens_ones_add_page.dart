import 'package:calcubes/app/presentation/controllers/hundreds_tens_ones/add/hundreds_tens_ones_add_controller.dart';
import 'package:calcubes/app/presentation/views/utils/app_appbar.dart';
import 'package:calcubes/app/presentation/views/utils/app_control_ones_tens_hundreds.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HundredsTensOnesAddPage extends StatelessWidget {
  final HundredsTensOnesAddController _hundredsTensOnesAddController =
      Get.find();
  HundredsTensOnesAddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppbar(
        onTapTitle: _hundredsTensOnesAddController.resetHundredsTensOnes,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // number 1
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Obx(() => Container(
                              child: _hundredsTensOnesAddController
                                      .lostHundred.value
                                  ? Image.asset(
                                      _hundredsTensOnesAddController
                                              .minusMiniHundredsList[
                                          _hundredsTensOnesAddController
                                              .partsSum
                                              .number1Hundreds()],
                                      gaplessPlayback: true,
                                    )
                                  : InkWell(
                                      onTap: _hundredsTensOnesAddController
                                              .isSubtraction.value
                                          ? () {
                                              _hundredsTensOnesAddController
                                                  .lost('hundred', 1);
                                            }
                                          : null,
                                      child: Image.asset(
                                        _hundredsTensOnesAddController
                                                .hundredsList[
                                            _hundredsTensOnesAddController
                                                .partsSum
                                                .number1Hundreds()],
                                        gaplessPlayback: true,
                                      ),
                                    ),
                            )),
                      ),
                      Flexible(
                        child: Obx(() => Container(
                              child: _hundredsTensOnesAddController
                                      .lostTen.value
                                  ? Image.asset(
                                      _hundredsTensOnesAddController
                                              .minusMiniTensList[
                                          _hundredsTensOnesAddController
                                              .partsSum
                                              .number1Tens()],
                                      gaplessPlayback: true,
                                    )
                                  : InkWell(
                                      onTap: _hundredsTensOnesAddController
                                              .isSubtraction.value
                                          ? () {
                                              _hundredsTensOnesAddController
                                                  .lost('ten', 1);
                                            }
                                          : null,
                                      child: Image.asset(
                                        _hundredsTensOnesAddController.tensList[
                                            _hundredsTensOnesAddController
                                                .partsSum
                                                .number1Tens()],
                                        gaplessPlayback: true,
                                      ),
                                    ),
                            )),
                      ),
                      Flexible(
                        child: Obx(() => Container(
                              child: _hundredsTensOnesAddController
                                      .lostOne.value
                                  ? Image.asset(
                                      _hundredsTensOnesAddController
                                              .minusMiniOnesList[
                                          _hundredsTensOnesAddController
                                              .partsSum
                                              .number1Ones()],
                                      gaplessPlayback: true,
                                    )
                                  : InkWell(
                                      onTap: _hundredsTensOnesAddController
                                              .isSubtraction.value
                                          ? () {
                                              _hundredsTensOnesAddController.lost(
                                                  'one',
                                                  _hundredsTensOnesAddController
                                                      .partsSum
                                                      .number1Ones());
                                            }
                                          : null,
                                      child: Image.asset(
                                        _hundredsTensOnesAddController.onesList[
                                            _hundredsTensOnesAddController
                                                .partsSum
                                                .number1Ones()],
                                        gaplessPlayback: true,
                                      ),
                                    ),
                            )),
                      ),
                    ],
                  ),
                  //
                  Text(_hundredsTensOnesAddController.partsSum.operation == '+'
                      ? 'plus'
                      : 'minus'),
                  // number 2
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              _hundredsTensOnesAddController.hundredsList[
                                  _hundredsTensOnesAddController.partsSum
                                      .number2Hundreds()],
                              gaplessPlayback: true,
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              _hundredsTensOnesAddController.tensList[
                                  _hundredsTensOnesAddController.partsSum
                                      .number2Tens()],
                              gaplessPlayback: true,
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              _hundredsTensOnesAddController.onesList[
                                  _hundredsTensOnesAddController.partsSum
                                      .number2Ones()],
                              gaplessPlayback: true,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Text('equals'),
                  Obx(
                    () => Column(
                      children: [
                        // soma
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    _hundredsTensOnesAddController.hundredsList[
                                        _hundredsTensOnesAddController.hundred],
                                    gaplessPlayback: true,
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    _hundredsTensOnesAddController.tensList[
                                        _hundredsTensOnesAddController.ten],
                                    gaplessPlayback: true,
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    _hundredsTensOnesAddController.onesList[
                                        _hundredsTensOnesAddController.one],
                                    gaplessPlayback: true,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          color: _hundredsTensOnesAddController
                                  .isAnswerCorrect.value
                              ? Colors.green
                              : Colors.yellow,
                          width: double.infinity,
                          height: 20,
                          alignment: Alignment.center,
                          child: _hundredsTensOnesAddController
                                  .isAnswerCorrect.value
                              ? Text(
                                  'You got it! The answer is ${_hundredsTensOnesAddController.answer}.')
                              : Text(
                                  'Oops! You have ${_hundredsTensOnesAddController.answer}. Keep trying!'),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          AppControlOnesTensHundreds(
            isOnes: true,
            plusOnes: _hundredsTensOnesAddController.plusOne,
            minusOnes: _hundredsTensOnesAddController.lessOne,
            isTens: true,
            plusTens: _hundredsTensOnesAddController.plusTen,
            minusTens: _hundredsTensOnesAddController.lessTen,
            isHundreds: true,
            plusHundreds: _hundredsTensOnesAddController.plusHundred,
            minusHundreds: _hundredsTensOnesAddController.lessHundred,
          ),
        ],
      ),
    );
  }
}
