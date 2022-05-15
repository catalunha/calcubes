import 'package:calcubes/app/presentation/controllers/tens/count/tens_count_controller.dart';
import 'package:calcubes/app/presentation/views/utils/app_appbar.dart';
import 'package:calcubes/app/presentation/views/utils/app_assets.dart';
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
              () => Container(
                // color: Colors.blue,
                child: Image.asset(
                  _tensCountController.tensList[_tensCountController.ten],
                  gaplessPlayback: true,
                ),
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
                  // Container(
                  //   color: Colors.blue,
                  //   child: Image.asset(
                  //     AppAssets.plusTen,
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
                      _tensCountController.plusTen();
                      print(_tensCountController.ten);
                    },
                  ),
                ],
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
                  // Container(
                  //   color: Colors.blue,
                  //   child: Image.asset(
                  //     AppAssets.lessTen,
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
                      _tensCountController.lessTen();
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
