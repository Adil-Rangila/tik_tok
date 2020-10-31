import 'package:flutter/material.dart';
import 'package:tik_tok/pages/add_video.dart';
import 'package:tik_tok/pages/messages.dart';
import 'package:tik_tok/pages/profile.dart';
import 'package:tik_tok/pages/search.dart';
import 'package:tik_tok/pages/videos.dart';
import 'package:tik_tok/variables.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pageOptions = [AddVideo(), Search(), Videos(), Messages(), Profile()];

  int page = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageOptions[page],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            page = value;
          });
        },
        currentIndex: page,
        selectedLabelStyle: myStyle(12),
        selectedItemColor: Colors.lightBlue,
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: myStyle(12),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add Video'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
