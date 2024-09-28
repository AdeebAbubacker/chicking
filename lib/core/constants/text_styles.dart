import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  static final rubik = GoogleFonts.rubik();

  // Naming convention: [fontFamily]_[fontSize]_[color]_[fontWeight]

  static final TextStyle rubik16WhiteW500 = rubik.copyWith(
    fontSize: 16,
    color: Colors.white,
  );

  static final TextStyle rubik18WhiteW500 = rubik.copyWith(
    fontSize: 18,
    color: Colors.white,
  );

  static final TextStyle rubik23WhiteW700 = rubik.copyWith(
    fontSize: 23,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  static final TextStyle rubik12WredeW500 = rubik.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: Color(0XFFC7838E),
  );
  static final TextStyle rubik14WredeW600 = rubik.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Color(0XFFE01741),
  );

    static final TextStyle rubik16blackW600 = rubik.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );
}
