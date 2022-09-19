import 'package:flutter/material.dart';
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
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        UpperPortion(),
        MiddlePortion(),
        
        Container(
          height: height * 0.4,
          color: Colors.purple,
        )
      ],
    );
  }
}
