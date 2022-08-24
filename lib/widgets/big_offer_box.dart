import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OfferFirst extends StatelessWidget {
  const OfferFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10, left: 5),
      alignment: Alignment.topCenter,
      height: 345,
      width: 304,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xFFFFFFFF),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 1),
              blurRadius: 8,
              color: Colors.grey.withOpacity(0.5)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            width: 304,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Color(0xFFEEEEEE),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            '   A rewarding Celebration',
            style: GoogleFonts.poppins(
                fontSize: 18,
                color: Color(0xFF0C0C0C),
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            '    Win rewards from Citizen,peter \n    england, and More',
            style: GoogleFonts.poppins(
                color: Color(0xFF0C0C0C),
                fontSize: 14,
                fontWeight: FontWeight.w400),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 52),
            height: 40,
            width: 272,
            margin: const EdgeInsets.only(left: 13, right: 12, top: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Color(0xFF303F9F).withOpacity(0.9)),
            ),
            child: Row(
              children: [
                Text(
                  'Explore rewards',
                  style: GoogleFonts.poppins(
                      color: Color(0xFF303F9F),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                // Expanded(
                //   child: Container(),
                // ),
                const SizedBox(
                  width: 13,
                ),
                Icon(
                  Icons.add,
                  color: Color(0xFF303F9F),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
