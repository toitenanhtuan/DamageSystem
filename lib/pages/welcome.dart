import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatelessWidget {
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
        padding: EdgeInsets.fromLTRB(17.4, 213.6, 13, 99.9),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(26.7, 0, 26.7, 38),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Welcome to Vehicle Damage Assessment System ',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Inter',
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w800,
                          fontSize: 17.4,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(28, 0, 28, 32),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFF000000)),
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFFFFFFF),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x40000000),
                              offset: Offset(7, 8),
                              blurRadius: 3.6500000954,
                            ),
                          ],
                        ),
                        child: SizedBox(
                          width: 256,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(0, 31, 0, 18),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 6),
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
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24),
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
                                    width: 140,
                                    padding: EdgeInsets.fromLTRB(0, 14, 0, 14),
                                    child: Text(
                                      'SIGN IN',
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
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 10, 0, 11),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF000000),
                            ),
                            child: Container(
                              width: 124,
                              height: 0,
                            ),
                          ),
                        ),
                        Text(
                          'or',
                          style: GoogleFonts.getFont(
                            'Inter',
                            fontWeight: FontWeight.w700,
                            fontSize: 17.4,
                            color: Color(0xFF000000),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 10, 0, 11),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF000000),
                            ),
                            child: Container(
                              width: 124,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 9, 31),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        'To connect a sign in method the email must match the one on your account.',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Inter',
                          fontWeight: FontWeight.w100,
                          fontSize: 10,
                          letterSpacing: 0.5,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 6, 0),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        width: 245,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                              width: 245,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xFF000000)),
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(0, 9.5, 0, 9.5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 10.2, 0),
                                      child: SizedBox(
                                        width: 20,
                                        height: 19,
                                        child: SvgPicture.asset(
                                          'assets/vectors/social_icons_x2.svg',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 3.5, 0, 3.5),
                                      child: Text(
                                        'Continue with Facebook',
                                        style: GoogleFonts.getFont(
                                          'Inter',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 10,
                                          letterSpacing: 0.5,
                                          color: Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 245,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xFF000000)),
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(0, 8.5, 0, 8.5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 10.5, 0),
                                      width: 20,
                                      height: 21,
                                      child: SizedBox(
                                        width: 19.6,
                                        height: 21,
                                        child: SvgPicture.asset(
                                          'assets/vectors/vector_23_x2.svg',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 4.5, 0, 4.5),
                                      child: Text(
                                        'Continue with Google',
                                        style: GoogleFonts.getFont(
                                          'Inter',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 10,
                                          letterSpacing: 0.5,
                                          color: Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: -1.6,
              right: 0.4,
              top: -195,
              bottom: -91.6,
              child: SizedBox(
                width: 365,
                height: 765,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 737.6),
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
                                'assets/vectors/image_6_x2.svg',
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
                                      'assets/vectors/vector_27_x2.svg',
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
                                              'assets/vectors/rectangle_58010_x2.svg',
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 6, 1, 0),
                                          child: SizedBox(
                                            width: 2,
                                            height: 6,
                                            child: SvgPicture.asset(
                                              'assets/vectors/rectangle_5819_x2.svg',
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 3, 1, 0),
                                          child: SizedBox(
                                            width: 2,
                                            height: 9,
                                            child: SvgPicture.asset(
                                              'assets/vectors/rectangle_5825_x2.svg',
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 2,
                                          height: 12,
                                          child: SvgPicture.asset(
                                            'assets/vectors/rectangle_58311_x2.svg',
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
                                    'assets/vectors/battery_x2.svg',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 2, 0),
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
            ),
          ],
        ),
      ),
    );
  }
}