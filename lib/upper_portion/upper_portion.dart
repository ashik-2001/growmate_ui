import 'package:flutter/material.dart';


class UpperPortion extends StatelessWidget {
  const UpperPortion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
              height: height * 0.4,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/Vector.png'),
                ),
              ),
            );
  }
}