import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/login.dart';
import 'package:myapp/page-1/ticket.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/iphone-11-pro-x-14.dart';
// import 'package:myapp/page-1/ticket.dart';
// import 'package:myapp/page-1/dubai.dart';
// import 'package:myapp/page-1/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SingleChildScrollView(
          child: signup(),
        ),
      ),
    );
  }
}
