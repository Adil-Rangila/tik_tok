import 'package:flutter/material.dart';
import 'package:tik_tok/variables.dart';

class Videos extends StatefulWidget {
  @override
  _VideosState createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          //video
          Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(color: Colors.black),
          ),
          Column(
            children: [
              //top section
              Row(
                children: [
                  Text(
                    'Followers',
                    style: myStyle(17, Colors.white),
                  ),
                  SizedBox(width: 15),
                  Text(
                    'Following',
                    style: myStyle(17, Colors.white),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
