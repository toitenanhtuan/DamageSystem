import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class FluenteyeOff16Filled extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      child: SizedBox(
        width: 14,
        height: 14,
        child: SvgPicture.asset(
          'assets/vectors/vector_15_x2.svg',
        ),
      ),
    );
  }
}