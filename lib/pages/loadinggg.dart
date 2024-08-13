import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class Loadinggg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Container(
        // width: 1080,
        // height: ,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 362.20,
              height: 785.23,
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 7.37, color: Colors.white),
                  borderRadius: BorderRadius.circular(27.65),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x26000000),
                    blurRadius: 14.60,
                    offset: Offset(0, 11.92),
                    spreadRadius: -3.57,
                  )
                ],
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 20,
                    top: 315,
                    child: SizedBox(
                      width: 323,
                      child: Text(
                        'Welcome to\nVehicle Damage Assessment System ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17.42,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w800,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 211,
                    top: 440,
                    child: Container(
                      width: 77,
                      height: 77,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                    ),
                  ),
                  Positioned(
                    left: 99,
                    top: 357,
                    child: Container(
                      width: 83,
                      height: 83,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: FlutterLogo(),
                    ),
                  ),
                  Positioned(
                    left: 138,
                    top: 468,
                    child: Text(
                      'Loading...',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.42,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w800,
                        height: 0,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 52,
                    top: 495,
                    child: Container(
                      width: 258,
                      height: 58,
                      padding: const EdgeInsets.symmetric(horizontal: 13.34, vertical: 21.35),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 3,
                            strokeAlign: BorderSide.strokeAlignOutside,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(10.67),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 160.09,
                            height: 5.34,
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(133.41),
                              ),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 160.09,
                                    height: 5.34,
                                    decoration: BoxDecoration(color: Color(0xFF316AFF)),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 160.09,
                                    height: 5.34,
                                    decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                                  ),
                                ),
                                Positioned(
                                  left: -136.08,
                                  top: -7.38,
                                  child: Container(
                                    width: 344.27,
                                    height: 17.92,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 15.09,
                                          top: 0,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.79),
                                            child: Container(
                                              width: 4,
                                              height: 21.35,
                                              decoration: BoxDecoration(color: Color(0xFFEFEFEF)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 26.35,
                                          top: 0,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.79),
                                            child: Container(
                                              width: 4,
                                              height: 21.35,
                                              decoration: BoxDecoration(color: Color(0xFFEFEFEF)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 37.60,
                                          top: 0,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.79),
                                            child: Container(
                                              width: 4,
                                              height: 21.35,
                                              decoration: BoxDecoration(color: Color(0xFFEFEFEF)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 48.85,
                                          top: 0,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.79),
                                            child: Container(
                                              width: 4,
                                              height: 21.35,
                                              decoration: BoxDecoration(color: Color(0xFFEFEFEF)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 60.11,
                                          top: 0,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.79),
                                            child: Container(
                                              width: 4,
                                              height: 21.35,
                                              decoration: BoxDecoration(color: Color(0xFFEFEFEF)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 71.36,
                                          top: 0,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.79),
                                            child: Container(
                                              width: 4,
                                              height: 21.35,
                                              decoration: BoxDecoration(color: Color(0xFFEFEFEF)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 82.61,
                                          top: 0,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.79),
                                            child: Container(
                                              width: 4,
                                              height: 21.35,
                                              decoration: BoxDecoration(color: Color(0xFFEFEFEF)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 93.87,
                                          top: 0,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.79),
                                            child: Container(
                                              width: 4,
                                              height: 21.35,
                                              decoration: BoxDecoration(color: Color(0xFFEFEFEF)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 105.12,
                                          top: 0,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.79),
                                            child: Container(
                                              width: 4,
                                              height: 21.35,
                                              decoration: BoxDecoration(color: Color(0xFFEFEFEF)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 116.37,
                                          top: 0,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.79),
                                            child: Container(
                                              width: 4,
                                              height: 21.35,
                                              decoration: BoxDecoration(color: Color(0xFFEFEFEF)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 127.63,
                                          top: 0,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.79),
                                            child: Container(
                                              width: 4,
                                              height: 21.35,
                                              decoration: BoxDecoration(color: Color(0xFFEFEFEF)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 138.88,
                                          top: 0,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.79),
                                            child: Container(
                                              width: 4,
                                              height: 21.35,
                                              decoration: BoxDecoration(color: Color(0xFFEFEFEF)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 150.13,
                                          top: 0,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.79),
                                            child: Container(
                                              width: 4,
                                              height: 21.35,
                                              decoration: BoxDecoration(color: Color(0xFFEFEFEF)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 161.39,
                                          top: 0,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.79),
                                            child: Container(
                                              width: 4,
                                              height: 21.35,
                                              decoration: BoxDecoration(color: Color(0xFFEFEFEF)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 172.64,
                                          top: 0,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.79),
                                            child: Container(
                                              width: 4,
                                              height: 21.35,
                                              decoration: BoxDecoration(color: Color(0xFFEFEFEF)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 183.89,
                                          top: 0,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.79),
                                            child: Container(
                                              width: 4,
                                              height: 21.35,
                                              decoration: BoxDecoration(color: Color(0xFFEFEFEF)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 195.15,
                                          top: 0,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.79),
                                            child: Container(
                                              width: 4,
                                              height: 21.35,
                                              decoration: BoxDecoration(color: Color(0xFFEFEFEF)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 206.40,
                                          top: 0,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.79),
                                            child: Container(
                                              width: 4,
                                              height: 21.35,
                                              decoration: BoxDecoration(color: Color(0xFFEFEFEF)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 217.65,
                                          top: 0,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.79),
                                            child: Container(
                                              width: 4,
                                              height: 21.35,
                                              decoration: BoxDecoration(color: Color(0xFFEFEFEF)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 228.91,
                                          top: 0,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.79),
                                            child: Container(
                                              width: 4,
                                              height: 21.35,
                                              decoration: BoxDecoration(color: Color(0xFFEFEFEF)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 240.16,
                                          top: 0,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.79),
                                            child: Container(
                                              width: 4,
                                              height: 21.35,
                                              decoration: BoxDecoration(color: Color(0xFFEFEFEF)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 251.41,
                                          top: 0,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.79),
                                            child: Container(
                                              width: 4,
                                              height: 21.35,
                                              decoration: BoxDecoration(color: Color(0xFFEFEFEF)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 262.67,
                                          top: 0,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.79),
                                            child: Container(
                                              width: 4,
                                              height: 21.35,
                                              decoration: BoxDecoration(color: Color(0xFFEFEFEF)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 273.92,
                                          top: 0,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.79),
                                            child: Container(
                                              width: 4,
                                              height: 21.35,
                                              decoration: BoxDecoration(color: Color(0xFFEFEFEF)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 285.17,
                                          top: 0,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.79),
                                            child: Container(
                                              width: 4,
                                              height: 21.35,
                                              decoration: BoxDecoration(color: Color(0xFFEFEFEF)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 296.43,
                                          top: 0,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.79),
                                            child: Container(
                                              width: 4,
                                              height: 21.35,
                                              decoration: BoxDecoration(color: Color(0xFFEFEFEF)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 307.68,
                                          top: 0,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.79),
                                            child: Container(
                                              width: 4,
                                              height: 21.35,
                                              decoration: BoxDecoration(color: Color(0xFFEFEFEF)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 318.93,
                                          top: 0,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.79),
                                            child: Container(
                                              width: 4,
                                              height: 21.35,
                                              decoration: BoxDecoration(color: Color(0xFFEFEFEF)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 330.19,
                                          top: 0,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.79),
                                            child: Container(
                                              width: 4,
                                              height: 21.35,
                                              decoration: BoxDecoration(color: Color(0xFFEFEFEF)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 341.44,
                                          top: 0,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.79),
                                            child: Container(
                                              width: 4,
                                              height: 21.35,
                                              decoration: BoxDecoration(color: Color(0xFFEFEFEF)),
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
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
}