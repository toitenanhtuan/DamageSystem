import 'package:flutter/material.dart';

import 'package:flutter_app/pages/loadinggg.dart';
import 'package:flutter_app/pages/loadinggg_1.dart';
import 'package:flutter_app/pages/login.dart';
import 'package:flutter_app/pages/main_screen.dart';
import 'package:flutter_app/pages/nha.dart';
import 'package:flutter_app/pages/profile.dart';
import 'package:flutter_app/pages/register.dart';
import 'package:flutter_app/pages/welcome.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: Scaffold(

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
