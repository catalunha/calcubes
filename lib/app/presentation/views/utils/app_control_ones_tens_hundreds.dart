import 'package:flutter/material.dart';

import 'package:calcubes/app/presentation/views/utils/app_assets.dart';

class AppControlOnesTensHundreds extends StatelessWidget {
  final bool isOnes;
  final bool isTens;
  final bool isHundreds;
  final Function? plusOnes;
  final Function? plusTens;
  final Function? plusHundreds;
  final Function? minusOnes;
  final Function? minusTens;
  final Function? minusHundreds;
  const AppControlOnesTensHundreds({
    Key? key,
    this.isOnes = false,
    this.isTens = false,
    this.isHundreds = false,
    this.plusOnes,
    this.plusTens,
    this.plusHundreds,
    this.minusOnes,
    this.minusTens,
    this.minusHundreds,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isHundreds
                ? SizedBox(
                    width: 130,
                    height: 40,
                    child: InkWell(
                      child: Image.asset(AppAssets.plusHundred),
                      onTap: () {
                        if (isHundreds) plusHundreds!();
                      },
                    ),
                  )
                : const SizedBox(),
            isTens
                ? SizedBox(
                    width: 140,
                    height: 40,
                    child: InkWell(
                      child: Image.asset(AppAssets.plusTen),
                      onTap: () {
                        if (isTens) plusTens!();
                      },
                    ),
                  )
                : const SizedBox(),
            isOnes
                ? SizedBox(
                    width: 130,
                    height: 40,
                    child: InkWell(
                      child: Image.asset(
                        AppAssets.plusOne,
                      ),
                      onTap: () {
                        if (isOnes) plusOnes!();
                      },
                    ),
                  )
                : const SizedBox(),
          ],
        ),
        const SizedBox(height: 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isHundreds
                ? SizedBox(
                    width: 130,
                    height: 40,
                    child: InkWell(
                      child: Image.asset(
                        AppAssets.lessHundred,
                      ),
                      onTap: () {
                        if (isHundreds) minusHundreds!();
                      },
                    ))
                : const SizedBox(),
            isTens
                ? SizedBox(
                    width: 140,
                    height: 40,
                    child: InkWell(
                      child: Image.asset(
                        AppAssets.lessTen,
                      ),
                      onTap: () {
                        if (isTens) minusTens!();
                      },
                    ))
                : const SizedBox(),
            isOnes
                ? SizedBox(
                    width: 130,
                    height: 40,
                    child: InkWell(
                      child: Image.asset(
                        AppAssets.lessOne,
                      ),
                      onTap: () {
                        if (isOnes) minusOnes!();
                      },
                    ))
                : const SizedBox(),
          ],
        ),
        const SizedBox(height: 2)
      ],
    );
  }
}
