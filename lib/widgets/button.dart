import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback? onPressed; // Made onPressed nullable

  const CustomButton({
    super.key,
    required this.buttonText,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.white.withOpacity(0.3),
                Colors.white.withOpacity(0.1),
              ],
              stops: [0.0, 1.0],
            ),
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: ElevatedButton(
            onPressed: onPressed, // Use the onPressed parameter
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
            ),
            child: Text(
              buttonText,
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 18.0,
                // fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.dmSans().fontFamily,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
