import 'package:flutter/material.dart';
import 'package:tik_tok/variables.dart';
import 'package:tik_tok/widgets/circle_animation.dart';

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
          Positioned(
            left: (60 / 2) - (50 / 2),
            child: Container(
              width: 50,
              height: 50,
              padding: EdgeInsets.all(1),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(25)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.network(
                  'https://www.pngkey.com/png/detail/115-1150152_default-profile-picture-avatar-png-green.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: (60 / 2) - (20 / 2),
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 20,
              ),
            ),
          )
        ],
      ),
    );
  }

  buildMusicAlbum() {
    return Container(
      width: 60,
      height: 60,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(11),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.grey[800],
                  Colors.grey[700],
                ],
              ),
              borderRadius: BorderRadius.circular(25),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image(
                image: NetworkImage(
                    'https://www.pngkey.com/png/detail/115-1150152_default-profile-picture-avatar-png-green.png'),
                fit: BoxFit.cover,
              ),
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
              //right section
              Container(
                color: Colors.blue,
                width: 100,
                margin: EdgeInsets.only(top: 150),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildProfile(),
                    Column(
                      children: [
                        Icon(Icons.favorite, size: 55, color: Colors.white),
                        SizedBox(height: 7),
                        Text('10', style: myStyle(20, Colors.white)),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.comment, size: 55, color: Colors.white),
                        SizedBox(height: 7),
                        Text('69', style: myStyle(20, Colors.white)),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.replay, size: 55, color: Colors.white),
                        SizedBox(height: 7),
                        Text('5', style: myStyle(20, Colors.white)),
                      ],
                    ),
                    CircleAnimation(buildMusicAlbum()),
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
