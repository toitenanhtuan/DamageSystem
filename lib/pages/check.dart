import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class Check extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF000000)),
        borderRadius: BorderRadius.circular(4),
        color: Color(0xFF020202),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(3, 3, 3, 3),
        child: SizedBox(
          width: 6,
          height: 6,
          child: SvgPicture.asset(
            'assets/vectors/vector_31_x2.svg',
          ),
        ),
      ),
    );
  }
}