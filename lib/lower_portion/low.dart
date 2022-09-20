import 'package:flutter/material.dart';

class LowerPortion extends StatefulWidget {
  const LowerPortion({Key? key}) : super(key: key);

  @override
  State<LowerPortion> createState() => _LowerPortionState();
}

class _LowerPortionState extends State<LowerPortion>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final _tabcontroller = TabController(length: 3, vsync: this);

    return Container(
      height: height * 0.4,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            width: width,
            height: 45,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: TabBar(
                  isScrollable: true,
                  unselectedLabelColor: Color(0xFF687684),
                  indicatorColor: Color(0xFFE432C1),
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: Color(0xFFE432C1),
                  controller: _tabcontroller,
                  tabs: [
                    Container(
                      width: width / 3,
                      child: Tab(
                        text: 'Research & News',
                      ),
                    ),
                    Container(
                      width: width / 6,
                      child: Tab(
                        text: 'Reactions',
                      ),
                    ),
                    Container(
                      width: width / 6,
                      child: Tab(
                        text: 'Related',
                      ),
                    )
                  ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
            child: Container(
              height: height * 0.30,
              width: width,
              child: TabBarView(controller: _tabcontroller, children: [
                _research(context),
                Text(
                  'b',
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  'c',
                  style: TextStyle(color: Colors.black),
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }

  Widget _research(context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    String body2 = 'Most people the BBC spoke to do not believe China is about to attack Taiwan. "They\'re a bunch of gangsters," said one man fishing on the...';
    String body1 = 'Last week, the dire warnings that appeared in the Wall Street Journal, The Economist and Foreign Affairs about China\'s imminent war with or...';
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '215 Expert Opinion',
          style: TextStyle(
              color: Color(0xFF687684),
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Transform.scale(
                    scale: 1.2, child: Image.asset('assets/e1.png')),
                Transform.scale(
                    scale: 1.2, child: Image.asset('assets/e2.png')),
                Text(
                  '12%',
                  style: TextStyle(
                      color: Color(0xFFE432C1),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: width / 2.5,
                      child: LinearProgressIndicator(
                        color: Color(0xFFE432C1),
                        backgroundColor: Color(0xFFD9D9D9),
                        value: 0.12,
                        minHeight: 6,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '12% Buy Yes',
                      style: TextStyle(color: Color(0xFFE432C1)),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: width / 2.5,
                      child: LinearProgressIndicator(
                        color: Color(0xFF687684),
                        backgroundColor: Color(0xFFD9D9D9),
                        value: 0.88,
                        minHeight: 6,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '88% Buy No',
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: width / 2.5,
                      child: LinearProgressIndicator(
                        minHeight: 6,
                        color: Color(0xFF687684),
                        backgroundColor: Color(0xFFD9D9D9),
                        value: 0.7,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '1% No Resolve',
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 3, 0, 3),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _cards('Thehill', body1, '1 Sept', width),
                _cards('BBC', body2, '1 Sept', width),
                _cards('Third', 'Some para', '1 Sept', width),
                
              ],
            ),
          ),
        ),
      ],
    );
  }




  Widget _cards(String head, String body, String date,width){
    return Padding(
      padding: const EdgeInsets.fromLTRB(0,1,15,1),
      child: Container(
                    height: 8,
                    width: width / 1.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(2),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                head,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                date,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            body,
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                          Align(
                              alignment: Alignment.bottomRight,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Image.asset('assets/icons/sricon.png'))),
                        ],
                      ),
                    ),
                  ),
    );
  }
}
