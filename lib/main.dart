

import 'package:flutter/material.dart';
import 'package:growmate_ui/lower_portion/low.dart';
import 'package:growmate_ui/mid_portion/mid.dart';
import 'package:growmate_ui/upper_portion/upper_portion.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(brightness: Brightness.dark, primaryColor: Colors.blueGrey),
      home: const Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(child: HomePage()),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
   return Column(
      children: [
        UpperPortion(),
        MiddlePortion(),
        LowerPortion(),
        Container(
          height: height*0.1,
          color: Colors.black,
        ),
      ],
    );
  }
}
