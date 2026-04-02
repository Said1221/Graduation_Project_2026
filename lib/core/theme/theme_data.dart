import 'dart:ui';

import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class ThemeFonts{
  final TextStyle red = GoogleFonts.cairo(color: HexColor('#c2175b'));
  final TextStyle gray = GoogleFonts.cairo(color: HexColor('#b8bbbd'));
  final TextStyle gray2 = GoogleFonts.cairo(color: HexColor('#e8e8e8'));
  final TextStyle black = GoogleFonts.cairo(color: HexColor('#5e6167'));
  final TextStyle white = GoogleFonts.cairo(color: HexColor('#ffff'));
  final TextStyle yellow = GoogleFonts.cairo(color: HexColor('#c7ad59'));
}

class ThemeColors{
  final Color red = HexColor('#c2175b');
  final Color gray = HexColor('#b8bbbd');
  final Color gray2 = HexColor('#e8e8e8');
  final Color black = HexColor('#5e6167');
  final Color white = HexColor('#ffff');
  final Color yellow = HexColor('#c7ad59');
  final Color grayBackground = HexColor('#f9fafb');
}