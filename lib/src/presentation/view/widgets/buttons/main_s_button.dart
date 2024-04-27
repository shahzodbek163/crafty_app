import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainSButton extends StatelessWidget {
  final Color color;
  final Color textColor;
  final String text;
  const MainSButton(
      {super.key,
      required this.color,
      required this.textColor,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 154,
      height: 44,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            color: Colors.black.withOpacity(0.25),
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Text(
        text,
        style: GoogleFonts.scada(
          fontSize: 17,
          color: textColor,
        ),
      ),
    );
  }
}
