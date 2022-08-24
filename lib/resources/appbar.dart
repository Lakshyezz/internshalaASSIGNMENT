import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppbar extends StatelessWidget {
  String name = "";
  CustomAppbar({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white.withOpacity(0.98),
      elevation: 0,
      // shadowColor: Colors.white,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            // padding: const EdgeInsets.only(right: 10),
            height: 35,
            width: 35,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset('assets/images/avatar.jpg')),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Welcome back,',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      )),
                  Text(
                    name,
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
          Icon(
            Icons.moped_rounded,
            color: Colors.black,
          ),
          SizedBox(width: 10)
        ],
      ),
    );
  }
}
