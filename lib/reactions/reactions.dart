import 'package:flutter/material.dart';

class Reactions extends StatelessWidget {
  const Reactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0,0,8,0),
      child: Column(
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
          
        ],
      ),
    );
  }
}
