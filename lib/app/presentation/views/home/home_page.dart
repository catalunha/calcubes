import 'package:calcubes/app/presentation/views/utils/app_appbar.dart';
import 'package:calcubes/app/presentation/views/utils/app_assets.dart';
import 'package:calcubes/app/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppbar(),
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              Wrap(
                // spacing: 5,
                // runSpacing: 5,
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
                ],
              ),
              Wrap(
                // spacing: 5,
                // runSpacing: 5,
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.center,
                children: [
                  itemGrid(
                      image: AppAssets.tensOnes,
                      text: 'Input Tens',
                      onTap: () => Get.toNamed(Routes.tensOnesCount)),
                  itemGrid(
                      image: AppAssets.hundredsTensOnes,
                      text: 'Input Hundreds',
                      onTap: () => Get.toNamed(Routes.hundredsTensOnesCount)),
                ],
              ),
              Wrap(
                // spacing: 5,
                // runSpacing: 5,
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.center,
                children: [
                  itemGrid(
                    image: AppAssets.addHundreds,
                    text: 'Addition',
                    onTap: () =>
                        Get.toNamed(Routes.dataForOperation, arguments: '+'),
                  ),
                  itemGrid(
                    image: AppAssets.subHundreds,
                    text: 'Subtraction',
                    onTap: () =>
                        Get.toNamed(Routes.dataForOperation, arguments: '-'),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Developed with ❤️ by brintec.org',
                style:
                    GoogleFonts.pacifico(fontSize: 12.0, color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }

  SizedBox itemGrid(
      {required String image, required String text, Function()? onTap}) {
    return SizedBox(
      width: 130, //WEB=300,
      height: 140,
      // padding: const EdgeInsets.all(5),
      // color: Colors.tealAccent,
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
              scale: .75,
            ),
            Text(text,
                textAlign: TextAlign.center,
                style:
                    GoogleFonts.pacifico(fontSize: 16.0, color: Colors.black)),
          ],
        ),
      ),
    );
  }
}
