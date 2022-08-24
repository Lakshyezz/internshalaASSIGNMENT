import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StackBox extends StatelessWidget {
  Color iconBox;
  Color BigNum;
  String iconText;
  String bigNumText;
  StackBox({
    Key? key,
    required this.iconBox,
    required this.BigNum,
    required this.iconText,
    required this.bigNumText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.bottomRight,
          height: 170,
          width: 165,
          color: Colors.white.withOpacity(0.98),
          child: Container(
            height: 152,
            width: 150,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]!),
              borderRadius: BorderRadius.circular(20),
              color: Colors.white.withOpacity(0.98),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 83,
                ),
                Text(
                  'Complete KYC',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color(0xFF0C0C0C)),
                ),
                Text(
                  'Create category and \n            earn ₹25',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: Color(0xFF525251)),
                ),
              ],
            ),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              padding: const EdgeInsets.only(
                  left: 30, top: 30, bottom: 15, right: 15),
              alignment: Alignment.bottomRight,
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: iconBox,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Text(
                  iconText,
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.yellow[600]!.withOpacity(0.8)),
                ),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              bigNumText,
              style: GoogleFonts.poppins(
                  fontSize: 40, color: BigNum, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ],
    );
  }
}
