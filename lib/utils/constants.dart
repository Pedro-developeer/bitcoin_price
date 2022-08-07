import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Constants {
  static const kBlack = Color(0XFF333333);
  static const kWhite = Color(0XFFF5F5F5);
  static const kLightGrey = Color(0XFF838383);
  static const kWhiteFillColor = Color(0XFFF5F5F5);
  static const kWhiteStokerColor = Color(0XFFE3E3E3);
  static const kPinkContainer = Color(0XFFE8B3EB);
  static const kGrayContainer = Color(0XFFF3F3F3);
}

class TextStylesConstants {
  static TextStyle kDefaultTextFieldStyle = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: Constants.kBlack,
  );

  static TextStyle kDefaultTextFieldStyleGray = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: Constants.kLightGrey,
  );

  static TextStyle kDefaultHomeScreen = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: Constants.kLightGrey,
  );

  static TextStyle kDefaultTextFieldStyleBold = GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: const Color(0XFF4D4D4D),
  );

  static TextStyle kDefaultTextFieldStyleHomeBold = GoogleFonts.inter(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static TextStyle kDefaultTextFieldStyleHome = GoogleFonts.inter(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: const Color(0XFF4D4D4D),
  );

  static TextStyle kDefaultTextFieldStyleWhite = GoogleFonts.inter(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Constants.kWhite,
  );
}
