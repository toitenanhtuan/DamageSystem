import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
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
        padding: EdgeInsets.fromLTRB(1.6, 169.6, 2.8, 0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 63),
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
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 23),
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
                                    'assets/vectors/vector_8_x2.svg',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              left: 7.4,
              right: 7.4,
              top: -151,
              bottom: 8.2,
              child: SizedBox(
                width: 365,
                height: 765,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(6, 0, 4, 374.6),
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
                                'assets/vectors/image_9_x2.svg',
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
                                      'assets/vectors/vector_22_x2.svg',
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
                                              'assets/vectors/rectangle_5807_x2.svg',
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 6, 1, 0),
                                          child: SizedBox(
                                            width: 2,
                                            height: 6,
                                            child: SvgPicture.asset(
                                              'assets/vectors/rectangle_5814_x2.svg',
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 3, 1, 0),
                                          child: SizedBox(
                                            width: 2,
                                            height: 9,
                                            child: SvgPicture.asset(
                                              'assets/vectors/rectangle_58210_x2.svg',
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 2,
                                          height: 12,
                                          child: SvgPicture.asset(
                                            'assets/vectors/rectangle_5839_x2.svg',
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
                                    'assets/vectors/battery_7_x2.svg',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(9, 0, 0.4, 29),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 1),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 3.7, 0),
                                  width: 14,
                                  height: 14,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Color(0xFF000000)),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 2, 0, 2),
                                  child: Text(
                                    'Remember Me',
                                    style: GoogleFonts.getFont(
                                      'Inter',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10,
                                      height: 1,
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                            child: Text(
                              'Forgot Password?',
                              style: GoogleFonts.getFont(
                                'Inter',
                                fontWeight: FontWeight.w500,
                                fontSize: 10,
                                letterSpacing: 0.5,
                                color: Color(0xFFFF3D00),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 23),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Color(0xFFEE8B8B),
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
                          'Sign In',
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
                      margin: EdgeInsets.fromLTRB(2.4, 0, 2.4, 244),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 3.7, 0),
                              child: Text(
                                'Don’t have an Account?',
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
                              'Sign Up',
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
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
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