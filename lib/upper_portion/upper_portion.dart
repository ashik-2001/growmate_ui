import 'package:flutter/material.dart';

class UpperPortion extends StatelessWidget {
  const UpperPortion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    const maxline = 2;
    return Stack(children: [
      Container(
        width: width,
        height: height * 0.4,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/Vector.png'),
          ),
        ),
      ),
      Container(
        width: width,
        height: height * 0.4,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Color.fromARGB(255, 27, 26, 26), Colors.transparent]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset('assets/icons/backB.png'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(18.0, 0, 0, 8.0),
                  child: SizedBox(
                    width: width * 0.8,
                    // ignore: prefer_const_constructors
                    child: Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      'Will China invade Taiwan before end september? ',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'lato',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 5.0, 0),
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/icons/settings.png'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ]);
  }
}
