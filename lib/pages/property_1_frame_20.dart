import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class Property1Frame20 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF6DB262)),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Positioned(
        left: 9,
        top: -8,
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
          ),
          child: Container(
            height: 16,
            padding: EdgeInsets.fromLTRB(2, 2, 2.4, 2),
            child: Text(
              'Email or Phone Number',
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
    );
  }
}