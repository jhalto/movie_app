import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle globalTextStyle({
  double size = 12,
  FontWeight fw= FontWeight.w400,
  Color color = Colors.black
   }

){
  return GoogleFonts.inter(
  fontSize: size,
  fontWeight: fw,
  color: color,
  );
}