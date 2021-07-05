import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final Color navyColor = Color(0xff0a192f);
final Color whiteColor = Color(0xffe6f1ff);
final Color cyanColor = Color(0xff64ffda);
final Color grayColor = Color(0xff8892b0);
final Color lightGrayColor = Color(0xffa8b2d1);
final Color lightestGrayColor = Color(0xffccd6f6);

final TextTheme myTextTheme = TextTheme(
  headline2: GoogleFonts.heebo(
      fontSize: 64, fontWeight: FontWeight.w700, letterSpacing: -0.5),
  headline4: GoogleFonts.heebo(
      fontSize: 32, fontWeight: FontWeight.w500, letterSpacing: 0.25),
  subtitle1: GoogleFonts.heebo(
      fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.15),
  subtitle2: GoogleFonts.heebo(
      fontSize: 13, fontWeight: FontWeight.w500, letterSpacing: 0.1),
  bodyText1: GoogleFonts.bitter(
      fontSize: 18, fontWeight: FontWeight.w400, letterSpacing: 0.5),
  bodyText2: GoogleFonts.bitter(
      fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  button: GoogleFonts.bitter(
      fontSize: 16, fontWeight: FontWeight.w500, letterSpacing: 1.25),
  caption: GoogleFonts.bitter(
      fontSize: 13, fontWeight: FontWeight.w400, letterSpacing: 0.4),
);
