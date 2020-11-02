import 'package:flutter/material.dart';
import 'package:tik_tok/variables.dart';

class Videos extends StatefulWidget {
  @override
  _VideosState createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  buildProfile() {
    return Container(
      width: 60,
      height: 60,
      child: Stack(
        children: [
          Container(
            child: ClipRRect(
              child: Image.network(''),
            ),
          )
        ],
      ),
    );
  }

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
              Container(
                color: Colors.red,
                height: 100,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Following',
                      style: myStyle(17, Colors.white),
                    ),
                    SizedBox(width: 15),
                    Text(
                      'Followers',
                      style: myStyle(17, Colors.white),
                    )
                  ],
                ),
              ),
              //middle Section
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 20, bottom: 10),
                  color: Colors.orange,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Adil',
                        style: myStyle(20, Colors.white),
                      ),
                      Text(
                        'Cool Video keep up the good work',
                        style: myStyle(15, Colors.white),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.music_note_rounded,
                            color: Colors.white,
                          ),
                          Text(
                            'Enriq Iqlius',
                            style: myStyle(
                              15,
                              Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.blue,
                width: 100,
                //  height: 100,
                child: Column(
                  children: [
                    buildProfile(),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
