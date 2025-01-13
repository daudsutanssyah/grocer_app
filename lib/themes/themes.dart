import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color primaryColor = const Color(0xFFFFA726);
Color secondaryColor = const Color(0xFF757575);
Color blackColor = const Color(0XFF333333);
Color whiteColor = const Color(0XFFFFFFFF);

TextStyle primaryTextStyle = GoogleFonts.poppins(
  color: primaryColor,
);
TextStyle secondaryTextStyle = GoogleFonts.poppins(
  color: secondaryColor,
  fontWeight: FontWeight.w600,
  fontSize: 16
);
TextStyle blackTextStyle = GoogleFonts.poppins(
  color: blackColor,
  fontWeight: FontWeight.w600,
  fontSize: 18
);
TextStyle whiteTextStyle = GoogleFonts.poppins(
  color: whiteColor,
);
