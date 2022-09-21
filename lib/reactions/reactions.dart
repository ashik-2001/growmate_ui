import 'package:flutter/material.dart';

class Reactions extends StatelessWidget {
  const Reactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.fromLTRB(0,0,8,0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  Image.asset('assets/icons/mentions.png'),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    '215',
                    style: TextStyle(fontSize: 18, color: Color(0xFF687684)),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Image.asset('assets/icons/comment.png'),
                  const SizedBox(width: 5,),
                  const Text(
                    '95K',
                    style: TextStyle(fontSize: 18, color: Color(0xFF687684)),
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset('assets/icons/scroll.png')
                ],
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset('assets/picbg1.png'),
                  Image.asset('assets/pic1.png')
                ],
              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('Linda ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),),
                      Text('If China does indeed attack Taiwan soon,',style: TextStyle(fontSize: 13)),
                    ],
                  ),
                  
                  Row(
                    children: [
                      Text('October is the likely time since the...',style: TextStyle(fontSize: 13)),
                      Text('more',style: TextStyle(fontSize: 13, color: Colors.grey),)
                    ],
                  ),
                ],
              ),
            
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset('assets/picbg2.png'),
                  Image.asset('assets/pic2.png')
                ],
              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('TomBN ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),),
                      Text('I will be surprised if #China will in fact',style: TextStyle(fontSize: 13)),
                    ],
                  ),
                  
                  Row(
                    children: [
                      Text('attack Taiwan. Doing so requires lots of... ',style: TextStyle(fontSize: 13)),
                      Text('more',style: TextStyle(fontSize: 13, color: Colors.grey),)
                    ],
                  ),
                ],
              ),
            
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: width/2,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Add comment...'
                  ),
                ),
              ),
              IconButton(onPressed: (){}, icon: Image.asset('assets/icons/eyelove.png')),
              IconButton(onPressed: (){}, icon: Image.asset('assets/icons/cry.png')),
              IconButton(onPressed: (){}, icon: Image.asset('assets/icons/plus.png')),
              
            ],
          ),
        ],
      ),
    );
  }
}
