import 'package:calcubes/app/presentation/views/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AppAssets.logoSplash,
            height: 200,
          ),
          const CircularProgressIndicator(),
          const SizedBox(height: 20),
          Text(
            'Developed with ❤️ by brintec.org',
            style: GoogleFonts.pacifico(fontSize: 12.0, color: Colors.black),
          )
        ],
      ),
    ));
  }
}
