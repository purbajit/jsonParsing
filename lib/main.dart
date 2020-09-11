import 'package:flutter/material.dart';
import 'package:jsonparsing/pages/homePage.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of our application.
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 4,
      backgroundColor: Colors.black,
      image: Image.asset('assets/giphy.gif'),
      loaderColor: Colors.white,
      photoSize: 260.0,
      navigateAfterSeconds: MyHomePage(),
    );
  }
}
