import 'package:calcubes/app/presentation/controllers/ones/count/ones_count_controller.dart';
import 'package:calcubes/app/presentation/views/utils/app_appbar.dart';
import 'package:calcubes/app/presentation/views/utils/app_assets.dart';
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 5),
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
                      // color: Colors.blue,
                      child: Image.asset(
                        AppAssets.plusOne,
                      ),
                    ),
                    onTap: () {
                      _onesCountController.plusOne();
                      print(_onesCountController.one);
                    },
                  ),
                ],
              ),
              const SizedBox(height: 5),
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
                      // color: Colors.blue,
                      child: Image.asset(
                        AppAssets.lessOne,
                      ),
                    ),
                    onTap: () {
                      _onesCountController.lessOne();
                    },
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 5)
        ],
      ),
    );
  }
}
