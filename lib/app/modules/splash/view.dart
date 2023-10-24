import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Center(
          child: Text(
            "Desing Test",
            style: GoogleFonts.imprima(
                fontSize: 26.sp, fontWeight: FontWeight.w600),
          ),
        )
      ]),
    );
  }
}
