import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color kPrimaryColor = Color(0xFFD92525);
const Color kOnPrimaryColor = Color(0xFFFFFCFC);
const Color kErrorColor = Color(0xFFB00020);
const Color kCorrectColor = Color(0xFF00DB09);
const Color kBackgroundColor = Color(0xFF141414);
const Color kSurfaceColor = Color(0xFF1E1E1E);

TextStyle kAppBarTS = GoogleFonts.montserrat(fontWeight: FontWeight.w600);
TextStyle kNavbarTS = GoogleFonts.montserrat(fontWeight: FontWeight.w500);
TextStyle kHeadlineTS =
    GoogleFonts.montserrat(fontWeight: FontWeight.w500, fontSize: 32);
TextStyle kHeadline2TS =
    GoogleFonts.montserrat(fontWeight: FontWeight.w500, fontSize: 24);
TextStyle kHeadline3TS =
    GoogleFonts.montserrat(fontWeight: FontWeight.w500, fontSize: 16);
TextStyle kBody1TS =
    GoogleFonts.montserrat(fontWeight: FontWeight.w500, fontSize: 14);
TextStyle kBody2TS =
    GoogleFonts.montserrat(fontWeight: FontWeight.w500, fontSize: 12);

SizedBox kVerticalPadding = const SizedBox(height: 16);
Container kVerticalDivider = Container(
  color: kSurfaceColor,
  width: 3,
  height: double.infinity,
);
