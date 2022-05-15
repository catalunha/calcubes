import 'package:calcubes/app/presentation/controllers/hundreds_tens_ones/count/hundreds_tens_ones_count_controller.dart';
import 'package:calcubes/app/presentation/views/utils/app_appbar.dart';
import 'package:calcubes/app/presentation/views/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class TensOnesCountPage extends StatelessWidget {
  final HundredsTensOnesCountController _hundredsTensOnesCountController =
      Get.find();
  TensOnesCountPage({Key? key}) : super(key: key);

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
              () => Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.center,
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
                  // const SizedBox(
                  //   width: 5,
                  // ),
                  Flexible(
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.center,
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Container(
                  //   color: Colors.blue,
                  //   child: Image.asset(
                  //     AppAssets.plusHundred,
                  //     // width: 200,
                  //   ),
                  // ),
                  InkWell(
                    child: Container(
                      color: Colors.blue,
                      child: Image.asset(
                        AppAssets.plusTen,
                      ),
                    ),
                    onTap: () {
                      _hundredsTensOnesCountController.plusTen();
                      print(_hundredsTensOnesCountController.ten);
                    },
                  ),
                  InkWell(
                    child: Container(
                      color: Colors.blue,
                      child: Image.asset(
                        AppAssets.plusOne,
                      ),
                    ),
                    onTap: () {
                      _hundredsTensOnesCountController.plusOne();
                      print(_hundredsTensOnesCountController.one);
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
                  // Container(
                  //   color: Colors.blue,
                  //   child: Image.asset(
                  //     AppAssets.lessHundred,
                  //     // width: 200,
                  //   ),
                  // ),
                  InkWell(
                    child: Container(
                      color: Colors.blue,
                      child: Image.asset(
                        AppAssets.lessTen,
                      ),
                    ),
                    onTap: () {
                      _hundredsTensOnesCountController.lessTen();
                    },
                  ),
                  InkWell(
                    child: Container(
                      color: Colors.blue,
                      child: Image.asset(
                        AppAssets.lessOne,
                      ),
                    ),
                    onTap: () {
                      _hundredsTensOnesCountController.lessOne();
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
