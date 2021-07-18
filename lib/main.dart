import 'package:flutter/material.dart';
import 'package:flutter_onboard_demo/Screens/home.dart';
import 'Screens/home.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: IntroScreen(),
    );
  }
}
