import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppAppbar extends AppBar {
  AppAppbar({
    Key? key,
    Function()? logout,
    Function()? onTapTitle,
  }) : super(
            key: key,
            backgroundColor: Colors.white,
            centerTitle: true,
            title: InkWell(
              onTap: onTapTitle,
              child: Text(
                'CalCubes',
                style:
                    GoogleFonts.pacifico(fontSize: 50.0, color: Colors.black),
              ),
            ),
            iconTheme: const IconThemeData(
              color: Colors.black,
            ),
            actions: [
              logout != null
                  ? IconButton(
                      onPressed: logout, icon: const Icon(Icons.exit_to_app))
                  : const SizedBox()
            ]);
}
