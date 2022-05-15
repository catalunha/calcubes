import 'package:calcubes/app/presentation/views/utils/app_appbar.dart';
import 'package:calcubes/app/presentation/views/utils/app_assets.dart';
import 'package:calcubes/app/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppbar(),
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: Wrap(
            spacing: 15,
            runSpacing: 15,
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.center,
            children: [
              itemGrid(
                  image: AppAssets.ones,
                  text: 'Ones',
                  onTap: () => Get.toNamed(Routes.onesCount)),
              itemGrid(
                  image: AppAssets.tens,
                  text: 'Tens',
                  onTap: () => Get.toNamed(Routes.tensCount)),
              itemGrid(
                  image: AppAssets.hundreds,
                  text: 'Hundreds',
                  onTap: () => Get.toNamed(Routes.hundredsCount)),
              itemGrid(
                  image: AppAssets.tensOnes,
                  text: 'Tens and ones',
                  onTap: () => Get.toNamed(Routes.tensOnesCount)),
              itemGrid(
                  image: AppAssets.hundredsTensOnes,
                  text: 'Hundreds, Tens and ones',
                  onTap: () => Get.toNamed(Routes.hundredsTensOnesCount)),
              // itemGrid(
              //   image: AppAssets.addOnes,
              //   text: 'Addition with Ones',
              // ),
              // itemGrid(
              //   image: AppAssets.subOnes,
              //   text: 'Subtraction with Ones',
              // ),
              // itemGrid(
              //   image: AppAssets.addTens,
              //   text: 'Addition with Tens',
              // ),
              // itemGrid(
              //   image: AppAssets.subTens,
              //   text: 'Subtraction with Tens',
              // ),
              itemGrid(
                image: AppAssets.addHundreds,
                text: 'Addition',
                onTap: () =>
                    Get.toNamed(Routes.dataForOperation, arguments: '+'),
                // onTap: () => Get.toNamed(Routes.hundredsTensOnesAdd,
                //     arguments: PartsOfOperation(
                //         operation: '+', number1: '123', number2: '321')),
              ),

              itemGrid(
                image: AppAssets.subHundreds,
                text: 'Subtraction',
                onTap: () =>
                    Get.toNamed(Routes.dataForOperation, arguments: '-'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container itemGrid(
      {required String image, required String text, Function()? onTap}) {
    return Container(
      width: 150, //WEB=300,
      height: 150,
      padding: const EdgeInsets.all(15),
      color: Colors.amberAccent,
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.network(
            //   image,
            //   width: 120,
            //   height: 120,
            //   fit: BoxFit.cover,
            // ),
            Image.asset(
              image,
              // height: 150,
              // width: 100,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
              // style: FlutterFlowTheme.of(context).bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}
