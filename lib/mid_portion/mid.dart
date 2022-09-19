import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MiddlePortion extends StatelessWidget {
  const MiddlePortion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
          height: height * 0.1,
          decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/portfoliobg.png'),
          ),
        ),
        );
  }
}