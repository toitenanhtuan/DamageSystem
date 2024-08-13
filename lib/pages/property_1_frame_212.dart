import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class Property1Frame212 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF000000)),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Positioned(
        left: 16,
        bottom: 16,
        child: SizedBox(
          height: 17,
          child: Text(
            'First Name',
            style: GoogleFonts.getFont(
              'Inter',
              fontWeight: FontWeight.w300,
              fontSize: 14,
              letterSpacing: 0.7,
              color: Color(0xFF333333),
            ),
          ),
        ),
      ),
    );
  }
}