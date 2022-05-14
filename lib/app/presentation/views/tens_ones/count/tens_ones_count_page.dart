import 'package:calcubes/app/presentation/controllers/tens_ones/count/tens_ones_count_controller.dart';
import 'package:calcubes/app/presentation/views/utils/app_appbar.dart';
import 'package:calcubes/app/presentation/views/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class TensOnesCountPage extends StatelessWidget {
  final TensOnesCountController _tensOnesCountController = Get.find();
  TensOnesCountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppbar(
        onTapTitle: _tensOnesCountController.resetTensOnes,
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
                          '${_tensOnesCountController.ten}',
                          style: GoogleFonts.pacifico(fontSize: 50.0),
                        ),
                        Image.asset(
                          _tensOnesCountController
                              .tensList[_tensOnesCountController.ten],
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
                          '${_tensOnesCountController.one}',
                          style: GoogleFonts.pacifico(fontSize: 50.0),
                        ),
                        Image.asset(
                          _tensOnesCountController
                              .onesList[_tensOnesCountController.one],
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
                      _tensOnesCountController.plusTen();
                      print(_tensOnesCountController.ten);
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
                      _tensOnesCountController.plusOne();
                      print(_tensOnesCountController.one);
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
                      _tensOnesCountController.lessTen();
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
                      _tensOnesCountController.lessOne();
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
