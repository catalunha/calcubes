import 'package:calcubes/app/presentation/controllers/hundreds_tens_ones/add/hundreds_tens_ones_add_controller.dart';
import 'package:calcubes/app/presentation/views/utils/app_appbar.dart';
import 'package:calcubes/app/presentation/views/utils/app_assets.dart';
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
                  Container(
                    // color: Colors.black,
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Obx(() => Container(
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                // mainAxisAlignment: MainAxisAlignment.center,
                                child:
                                    // Text(
                                    //   '${_hundredsTensOnesAddController.hundred}',
                                    //   style: GoogleFonts.pacifico(fontSize: 50.0),
                                    // ),
                                    _hundredsTensOnesAddController
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
                                            onTap:
                                                _hundredsTensOnesAddController
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
                                          _hundredsTensOnesAddController
                                                  .tensList[
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
                                          _hundredsTensOnesAddController
                                                  .onesList[
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
                  ),
                  //
                  Text(_hundredsTensOnesAddController.partsSum.operation == '+'
                      ? 'plus'
                      : 'minus'),
                  // number 2
                  Container(
                    color: Colors.black,
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Text(
                              //   '${_hundredsTensOnesAddController.hundred}',
                              //   style: GoogleFonts.pacifico(fontSize: 50.0),
                              // ),
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
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Text(
                              //   '${_hundredsTensOnesAddController.ten}',
                              //   style: GoogleFonts.pacifico(fontSize: 50.0),
                              // ),
                              Image.asset(
                                _hundredsTensOnesAddController.tensList[
                                    _hundredsTensOnesAddController.partsSum
                                        .number2Tens()],
                                gaplessPlayback: true,
                              ),
                            ],
                          ),
                        ),
                        // const SizedBox(
                        //   width: 5,
                        // ),
                        Flexible(
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Text(
                              //   '${_hundredsTensOnesAddController.one}',
                              //   style: GoogleFonts.pacifico(fontSize: 50.0),
                              // ),
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
                  ),
                  const Text('equals'),
                  Obx(
                    () => Column(
                      children: [
                        // soma
                        Container(
                          // color: Colors.black,
                          child: Row(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Column(
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    // Text(
                                    //   '${_hundredsTensOnesAddController.hundred}',
                                    //   style: GoogleFonts.pacifico(fontSize: 50.0),
                                    // ),
                                    Image.asset(
                                      _hundredsTensOnesAddController
                                              .hundredsList[
                                          _hundredsTensOnesAddController
                                              .hundred],
                                      gaplessPlayback: true,
                                    ),
                                  ],
                                ),
                              ),
                              Flexible(
                                child: Column(
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    // Text(
                                    //   '${_hundredsTensOnesAddController.ten}',
                                    //   style: GoogleFonts.pacifico(fontSize: 50.0),
                                    // ),
                                    Image.asset(
                                      _hundredsTensOnesAddController.tensList[
                                          _hundredsTensOnesAddController.ten],
                                      gaplessPlayback: true,
                                    ),
                                  ],
                                ),
                              ),
                              // const SizedBox(
                              //   width: 5,
                              // ),
                              Flexible(
                                child: Column(
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    // Text(
                                    //   '${_hundredsTensOnesAddController.one}',
                                    //   style: GoogleFonts.pacifico(fontSize: 50.0),
                                    // ),
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
                      ], //I'm sorry! Your answer can't be above 999.
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    child: Container(
                      // color: Colors.blue,
                      child: Image.asset(
                        AppAssets.plusHundred,
                      ),
                    ),
                    onTap: () {
                      _hundredsTensOnesAddController.plusHundred();
                      print(_hundredsTensOnesAddController.hundred);
                    },
                  ),
                  InkWell(
                    child: Container(
                      // color: Colors.blue,
                      child: Image.asset(
                        AppAssets.plusTen,
                      ),
                    ),
                    onTap: () {
                      _hundredsTensOnesAddController.plusTen();
                      print(_hundredsTensOnesAddController.ten);
                    },
                  ),
                  InkWell(
                    child: Container(
                      // color: Colors.blue,
                      child: Image.asset(
                        AppAssets.plusOne,
                      ),
                    ),
                    onTap: () {
                      _hundredsTensOnesAddController.plusOne();
                      print(_hundredsTensOnesAddController.one);
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    child: Container(
                      // color: Colors.blue,
                      child: Image.asset(
                        AppAssets.lessHundred,
                      ),
                    ),
                    onTap: () {
                      _hundredsTensOnesAddController.lessHundred();
                    },
                  ),
                  InkWell(
                    child: Container(
                      // color: Colors.blue,
                      child: Image.asset(
                        AppAssets.lessTen,
                      ),
                    ),
                    onTap: () {
                      _hundredsTensOnesAddController.lessTen();
                    },
                  ),
                  InkWell(
                    child: Container(
                      // color: Colors.blue,
                      child: Image.asset(
                        AppAssets.lessOne,
                      ),
                    ),
                    onTap: () {
                      _hundredsTensOnesAddController.lessOne();
                    },
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 20)
        ],
      ),
    );
  }
}
