import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplargeText extends StatelessWidget {
  final double size;
  final String text;
  final Color color;

  const ApplargeText({
    Key? key,
    this.size = 30,
    this.color = Colors.black,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.bold,
        fontFamily: GoogleFonts.dmSans().fontFamily,
      ),
    );
  }
}
