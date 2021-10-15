import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color primaryClr = Color(0xFFFFFFFF);

TextStyle get headingStyle {
  return GoogleFonts.lato(
      textStyle: (const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)));
}

TextStyle get subHeadingStyle {
  return GoogleFonts.lato(
      textStyle: (const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)));
}

TextStyle get textButton {
  return GoogleFonts.lato(
      textStyle: (const TextStyle(
          fontSize: 12, color: Colors.black, letterSpacing: 3)));
}
