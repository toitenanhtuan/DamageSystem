import 'package:flutter/material.dart';

import 'package:flutter_app/pages/camera.dart';
import 'package:flutter_app/pages/check.dart';
import 'package:flutter_app/pages/compare.dart';
import 'package:flutter_app/pages/compare_1.dart';
import 'package:flutter_app/pages/converter.dart';
import 'package:flutter_app/pages/default.dart';
import 'package:flutter_app/pages/file.dart';
import 'package:flutter_app/pages/file_1.dart';
import 'package:flutter_app/pages/fluenteye_off_16_filled.dart';
import 'package:flutter_app/pages/list_op.dart';
import 'package:flutter_app/pages/list_op_1.dart';
import 'package:flutter_app/pages/list_op_3.dart';
import 'package:flutter_app/pages/list_op_4.dart';
import 'package:flutter_app/pages/loadinggg.dart';
import 'package:flutter_app/pages/loadinggg_1.dart';
import 'package:flutter_app/pages/login.dart';
import 'package:flutter_app/pages/main_screen.dart';
import 'package:flutter_app/pages/nha.dart';
import 'package:flutter_app/pages/profile.dart';
import 'package:flutter_app/pages/property_1_default.dart';
import 'package:flutter_app/pages/property_1_default_1.dart';
import 'package:flutter_app/pages/property_1_default_2.dart';
import 'package:flutter_app/pages/property_1_default_3.dart';
import 'package:flutter_app/pages/property_1_default_4.dart';
import 'package:flutter_app/pages/property_1_default_5.dart';
import 'package:flutter_app/pages/property_1_default_6.dart';
import 'package:flutter_app/pages/property_1_default_7.dart';
import 'package:flutter_app/pages/property_1_frame_20.dart';
import 'package:flutter_app/pages/property_1_frame_201.dart';
import 'package:flutter_app/pages/property_1_frame_202.dart';
import 'package:flutter_app/pages/property_1_frame_203.dart';
import 'package:flutter_app/pages/property_1_frame_204.dart';
import 'package:flutter_app/pages/property_1_frame_205.dart';
import 'package:flutter_app/pages/property_1_frame_206.dart';
import 'package:flutter_app/pages/property_1_frame_21.dart';
import 'package:flutter_app/pages/property_1_frame_211.dart';
import 'package:flutter_app/pages/property_1_frame_212.dart';
import 'package:flutter_app/pages/property_1_frame_213.dart';
import 'package:flutter_app/pages/property_1_frame_214.dart';
import 'package:flutter_app/pages/property_1_frame_215.dart';
import 'package:flutter_app/pages/property_1_frame_216.dart';
import 'package:flutter_app/pages/property_1_hh.dart';
import 'package:flutter_app/pages/property_1_variant_2.dart';
import 'package:flutter_app/pages/property_1_variant_21.dart';
import 'package:flutter_app/pages/property_1_variant_22.dart';
import 'package:flutter_app/pages/property_1_variant_23.dart';
import 'package:flutter_app/pages/property_1_variant_24.dart';
import 'package:flutter_app/pages/property_1_variant_25.dart';
import 'package:flutter_app/pages/property_1_variant_3.dart';
import 'package:flutter_app/pages/rectangle_584.dart';
import 'package:flutter_app/pages/register.dart';
import 'package:flutter_app/pages/service.dart';
import 'package:flutter_app/pages/thongbao.dart';
import 'package:flutter_app/pages/welcome.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: Scaffold(

        // body: Calculate(),
        // body: Camera(),
        // body: Check(),
        // body: Compare(),
        // body: Compare1(),
        // body: Converter(),
        // body: Default(),
        // body: File(),
        // body: File1(),
        // body: FluenteyeOff16Filled(),
        // body: ListOp(),
        // body: ListOp1(),
        // body: ListOp3(),
        // body: ListOp4(),
        // body: Loadinggg(),
        // body: Loadinggg1(),
        // body: Login(),
        body: MainScreen(),
        // body: Nha(),

        // body: Welcome(),

      ),
    );
  }
}
