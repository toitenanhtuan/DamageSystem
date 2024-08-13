import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class Property1Frame203 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      padding: EdgeInsets.fromLTRB(13.2, 17.2, 13.2, 17.2),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF000000)),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            left: -4.2,
            top: -25.2,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
              ),
              child: Container(
                height: 16,
                padding: EdgeInsets.fromLTRB(2, 2, 2.1, 2),
                child: Text(
                  'Password',
                  style: GoogleFonts.getFont(
                    'Inter',
                    fontWeight: FontWeight.w300,
                    fontSize: 10,
                    letterSpacing: 0.5,
                    color: Color(0xFF333333),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 12,
            height: 8,
            child: SvgPicture.asset(
              'assets/vectors/vector_1_x2.svg',
            ),
          ),
        ],
      ),
    );
  }
}