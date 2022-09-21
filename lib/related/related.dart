import 'package:flutter/material.dart';

class RelatedTab extends StatelessWidget {
  const RelatedTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return ListView(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 0.5, color: Colors.grey),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          alignment: Alignment.centerLeft,
          height: 70,
          child: Row(
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage('assets/girl.png'),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Container(
                height: 50,
                width: width*0.7,
                child: Text(
                  'Liz Truss will be UK’s next Prime Minister?',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              
            ],
          ),
        ),
        SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 0.5, color: Colors.grey),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          alignment: Alignment.centerLeft,
          height: 70,
          child: Row(
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage('assets/currency.png'),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Container(
                height: 50,
                width: width*0.7,
                child: Text(
                  'British Pound will fall after Prime Minister elections?',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              
            ],
          ),
        ),
        SizedBox(height: 5,),
        Align(alignment:Alignment.bottomRight,child: Text('more..',style: TextStyle(color: Colors.grey),)),
      ],
    );
  }
}
