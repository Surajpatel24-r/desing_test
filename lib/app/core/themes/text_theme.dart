
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class AppTextTheme {
  static final textTheme = TextTheme(
  displayLarge: GoogleFonts.roboto(
    fontSize: 113.sp,
    fontWeight: FontWeight.w300,
    letterSpacing: -1.5
  ),
  displayMedium: GoogleFonts.roboto(
    fontSize: 70.sp,
    fontWeight: FontWeight.w300,
    letterSpacing: -0.5,
    color: Colors.black,
  ),
  displaySmall: GoogleFonts.roboto(
    fontSize: 56.sp,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  ),
  headlineMedium: GoogleFonts.roboto(
    fontSize: 40.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
    color: Colors.black,
  ),
  headlineSmall: GoogleFonts.roboto(
    fontSize: 28.sp,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  ),
  titleLarge: GoogleFonts.roboto(
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    // letterSpacing: 0.15,
    color: Colors.black,
  ),
  titleMedium: GoogleFonts.roboto(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    // letterSpacing: 0.15,
    color: Colors.black,
  ),
  titleSmall: GoogleFonts.roboto(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    // letterSpacing: 0.1,
    color: Colors.black,
  ),
  bodyLarge: GoogleFonts.roboto(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    // letterSpacing: 0.5,
    color: Colors.black,
  ),
  bodyMedium: GoogleFonts.roboto(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    // letterSpacing: 0.25,
    color: Colors.black,
  ),
  labelLarge: GoogleFonts.roboto(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    // letterSpacing: 1.25,
    color: Colors.black,
  ),
  bodySmall: GoogleFonts.roboto(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    // letterSpacing: 0.4,
    color: Colors.black,
  ),
  labelSmall: GoogleFonts.roboto(
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: 1.5,
    color: Colors.black,
  ),
);
}