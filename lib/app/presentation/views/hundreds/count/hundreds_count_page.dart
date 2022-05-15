import 'package:calcubes/app/presentation/controllers/hundreds/count/hundreds_count_controller.dart';
import 'package:calcubes/app/presentation/views/utils/app_appbar.dart';
import 'package:calcubes/app/presentation/views/utils/app_assets.dart';
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
              () => Container(
                // color: Colors.blue,
                child: Image.asset(
                  _hundredsCountController
                      .hundredsList[_hundredsCountController.hundred],
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
                      // color: Colors.blue,
                      child: Image.asset(
                        AppAssets.plusHundred,
                      ),
                    ),
                    onTap: () {
                      _hundredsCountController.plusHundred();
                      print(_hundredsCountController.hundred);
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
                        AppAssets.lessHundred,
                      ),
                    ),
                    onTap: () {
                      _hundredsCountController.lessHundred();
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
