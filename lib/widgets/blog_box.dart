import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BlogBox extends StatelessWidget {
  const BlogBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10, left: 5),
      padding: const EdgeInsets.all(16),
      alignment: Alignment.topCenter,
      height: 310,
      width: 312,
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
            height: 135,
            width: 280,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Color(0xFFEEEEEE),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            '4 methods of calculating Network,Which no one will \ntell you',
            style: GoogleFonts.poppins(
                fontSize: 18,
                color: Color(0xFF000000),
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Read Time: 8 mins',
            style: GoogleFonts.poppins(
                color: Color(0xFF303F9F),
                fontSize: 12,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Container(
                // padding: const EdgeInsets.only(right: 10),
                height: 24,
                width: 24,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(70),
                    child: Image.asset('assets/images/avatar.jpg')),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                'Ann Korkowski',
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF525251)),
              ),
              Expanded(child: Container()),
              Text(
                '08/09/2022   ',
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF525251)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
