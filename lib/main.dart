import 'package:flutter/material.dart';
import 'pages/intro_Page.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: IntroPage(),
    );
  }
}


// https://www.figma.com/file/gsUD481ivEjk18e5HYGLQK/Finance-App-with-Illustrations-(Community)?node-id=28%3A462