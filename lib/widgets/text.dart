import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText extends StatelessWidget {
  final double size;
  final String text;
  final Color color;

  const AppText({
    Key? key,
    this.size = 16,
    this.color = Colors.black54,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontFamily: GoogleFonts.dmSans().fontFamily,

        // fontWeight: FontWeight.bold,
      ),
    );
  }
}
