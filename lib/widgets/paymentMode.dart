import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentMode extends StatelessWidget {
  String text;
  PaymentMode({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      height: 32,
      width: 101,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Color(0xFF303F9F))),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: Color(0xFF303F9F),
          ),
        ),
      ),
    );
  }
}
