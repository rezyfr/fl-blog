import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final Color navyColor = Color(0xff0a192f);
final Color whiteColor = Color(0xffe6f1ff);
final Color cyanColor = Color(0xff64ffda);
final Color grayColor = Color(0xff8892b0);
final Color lightGrayColor = Color(0xffa8b2d1);
final Color lightestGrayColor = Color(0xffccd6f6);

final double headline2FontSize = 60.0;
final double headline4FontSize = 32.0;
final double subtitle1FontSize = 15.0;
final double subtitle2FontSize = 13.0;
final double body1FontSize = 18.0;
final double body2FontSize = 14.0;
final double buttonFontSize = 16.0;
final double captionFontSize = 13.0;

final TextTheme myTextTheme = TextTheme(
  headline2: GoogleFonts.heebo(
      fontSize: headline2FontSize, fontWeight: FontWeight.w700, letterSpacing: -0.5),
  headline4: GoogleFonts.heebo(
      fontSize: headline4FontSize, fontWeight: FontWeight.w500, letterSpacing: 0.25),
  subtitle1: GoogleFonts.heebo(
      fontSize: subtitle1FontSize, fontWeight: FontWeight.w400, letterSpacing: 0.15),
  subtitle2: GoogleFonts.heebo(
      fontSize: subtitle2FontSize, fontWeight: FontWeight.w500, letterSpacing: 0.1),
  bodyText1: GoogleFonts.bitter(
      fontSize: body1FontSize, fontWeight: FontWeight.w400, letterSpacing: 1),
  bodyText2: GoogleFonts.bitter(
      fontSize: body2FontSize, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  button: GoogleFonts.bitter(
      fontSize: buttonFontSize, fontWeight: FontWeight.w500, letterSpacing: 1.25),
  caption: GoogleFonts.bitter(
      fontSize: captionFontSize, fontWeight: FontWeight.w400, letterSpacing: 0.4),
);
