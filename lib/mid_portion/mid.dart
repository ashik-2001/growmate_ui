import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MiddlePortion extends StatelessWidget {
  const MiddlePortion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [Container(
        height: height * 0.1,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/portfoliobg.png'),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    width: width * 0.05,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'CHANCE',
                        style: TextStyle(fontSize: 12),
                      ),
                      Text('11%',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 28))
                    ],
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                    child: Image(image: AssetImage('assets/uparrow.png')),
                  ),
                  SizedBox(
                    width: width * 0.04,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 3),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          '24H',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.normal),
                        ),
                        Text(
                          '+25495\$',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ]),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text(
                          '\$09',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Transform.scale(
                          scale: 2.5,
                          child: IconButton(
                            onPressed: () {},
                            icon: new Image.asset("assets/icons/yesB.png"),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: width * 0.07,
                    ),
                    Column(
                      children: [
                        Text(
                          '\$89',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Transform.scale(
                          scale: 2.5,
                          child: IconButton(
                            onPressed: () {},
                            icon: new Image.asset("assets/icons/noB.png"),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
      Container(
        height: height * 0.1,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fitHeight,
            colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.7)  , BlendMode.dstOut),
            image: AssetImage('assets/coins.png'),
          ),
        ),)
      ]

    );
  }
}
