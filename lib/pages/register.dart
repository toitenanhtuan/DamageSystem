import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFFFFFFF)),
        borderRadius: BorderRadius.circular(27.6),
        color: Color(0xFFF2F2F2),
        boxShadow: [
          BoxShadow(
            color: Color(0x26000000),
            offset: Offset(0, 11.9),
            blurRadius: 7.2982006073,
          ),
        ],
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(1.6, 11.3, 1.6, 0.9),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(6, 0, 5.2, 102.6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 4.9, 0, 4.9),
                    child: SizedBox(
                      width: 30.5,
                      height: 9,
                      child: SvgPicture.asset(
                        'assets/vectors/image_5_x2.svg',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 60.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 4.5, 7.3, 3.3),
                          width: 18,
                          height: 18,
                          child: SizedBox(
                            width: 15.3,
                            height: 10.9,
                            child: SvgPicture.asset(
                              'assets/vectors/vector_10_x2.svg',
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 3.4, 7.3, 3.4),
                          child: SizedBox(
                            width: 18,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 8, 1, 0),
                                  child: SizedBox(
                                    width: 2,
                                    height: 4,
                                    child: SvgPicture.asset(
                                      'assets/vectors/rectangle_5805_x2.svg',
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 6, 1, 0),
                                  child: SizedBox(
                                    width: 2,
                                    height: 6,
                                    child: SvgPicture.asset(
                                      'assets/vectors/rectangle_581_x2.svg',
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 3, 1, 0),
                                  child: SizedBox(
                                    width: 2,
                                    height: 9,
                                    child: SvgPicture.asset(
                                      'assets/vectors/rectangle_5822_x2.svg',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2,
                                  height: 12,
                                  child: SvgPicture.asset(
                                    'assets/vectors/rectangle_5838_x2.svg',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 18.7,
                          height: 18.7,
                          child: SvgPicture.asset(
                            'assets/vectors/battery_2_x2.svg',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0.2, 61),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Color(0xFFDB6767),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x40000000),
                    offset: Offset(2, 4),
                    blurRadius: 2,
                  ),
                ],
              ),
              child: Container(
                width: 140,
                padding: EdgeInsets.fromLTRB(0, 14, 0, 14),
                child: Text(
                  'SIGN UP',
                  style: GoogleFonts.getFont(
                    'Inter',
                    fontWeight: FontWeight.w500,
                    fontSize: 10,
                    letterSpacing: 0.5,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0.2, 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 12, 0),
                      height: 49,
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
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 49,
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
                            'Last Name',
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
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(1, 0, 0.2, 22),
              padding: EdgeInsets.fromLTRB(15.2, 15.2, 15.2, 15.2),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF000000)),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                'Email or Phone Number',
                style: GoogleFonts.getFont(
                  'Inter',
                  fontWeight: FontWeight.w300,
                  fontSize: 14,
                  letterSpacing: 0.7,
                  color: Color(0xFF333333),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(1, 0, 0.2, 22),
              padding: EdgeInsets.fromLTRB(15.2, 15.2, 15.2, 15.2),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF000000)),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Text(
                    'Password',
                    style: GoogleFonts.getFont(
                      'Inter',
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                      letterSpacing: 0.7,
                      color: Color(0xFF333333),
                    ),
                  ),
                  Positioned(
                    right: -1.2,
                    child: Container(
                      width: 16,
                      height: 16,
                      child: SizedBox(
                        width: 12,
                        height: 8,
                        child: SvgPicture.asset(
                          'assets/vectors/vector_7_x2.svg',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(1, 0, 0.2, 61),
              padding: EdgeInsets.fromLTRB(15.2, 15.2, 15.2, 15.2),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF000000)),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Text(
                    'Confirm Pass',
                    style: GoogleFonts.getFont(
                      'Inter',
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                      letterSpacing: 0.7,
                      color: Color(0xFF333333),
                    ),
                  ),
                  Positioned(
                    right: -1.2,
                    child: Container(
                      width: 16,
                      height: 16,
                      child: SizedBox(
                        width: 12,
                        height: 8,
                        child: SvgPicture.asset(
                          'assets/vectors/vector_5_x2.svg',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(1, 0, 0.2, 23),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                color: Color(0xFF85DB67),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x40000000),
                    offset: Offset(2, 4),
                    blurRadius: 2,
                  ),
                ],
              ),
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 10.5, 0, 10.5),
                child: Text(
                  'Sign Up',
                  style: GoogleFonts.getFont(
                    'Inter',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    letterSpacing: 0.8,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(1.1, 0, 1.1, 136),
              child: Align(
                alignment: Alignment.topLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 2.4, 0),
                      child: Text(
                        'Do you already have an account?',
                        style: GoogleFonts.getFont(
                          'Inter',
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          letterSpacing: 0.5,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                    Text(
                      'Sign In',
                      style: GoogleFonts.getFont(
                        'Inter',
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        letterSpacing: 0.5,
                        color: Color(0xFFFE480F),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 1.2, 0),
              width: 65,
              height: 2,
              child: Container(
                width: 65,
                height: 2,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF000000)),
                  borderRadius: BorderRadius.circular(11),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}