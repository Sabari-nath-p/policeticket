import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myapp/firebase_options.dart';
import 'package:myapp/page-1/homescreen.dart';
import 'package:myapp/page-1/login.dart';
import 'package:myapp/page-1/testpage.dart/testpage.dart';
import 'package:myapp/page-1/ticket.dart';
import 'package:myapp/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

// import 'package:myapp/page-1/ticket.dart';
// import 'package:myapp/page-1/dubai.dart';
// import 'package:myapp/page-1/login.dart';
String log = "";
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences pref = await SharedPreferences.getInstance();
  log = pref.getString("LOGIN").toString();

  Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

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
      home: homescreen()
    );
  }
}
