import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget{
  final String text,font;
  final FontWeight weight;
  final double size;

  const TextWidget({super.key, required this.text, required this.weight, required this.size, required this.font});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.getFont(font,
      fontWeight: weight,
        fontSize: size
    ),);
  }

}