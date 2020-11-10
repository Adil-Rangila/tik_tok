import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:tik_tok/variables.dart';
import 'package:video_player/video_player.dart';

class ConfirmVideo extends StatefulWidget {
  final File videoFile;
  final String videoPath;
  final ImageSource imageSource;

  ConfirmVideo(this.videoFile, this.videoPath, this.imageSource);

  @override
  _ConfirmVideoState createState() => _ConfirmVideoState();
}

class _ConfirmVideoState extends State<ConfirmVideo> {
  VideoPlayerController controller;
  var musicController = TextEditingController();
  var capstionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      controller = VideoPlayerController.file(widget.videoFile);
    });

    controller.initialize();
    controller.play();
    controller.setVolume(1);
    controller.setLooping(true);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  uploadVideo() async {
    var userId = FirebaseAuth.instance.currentUser.uid;
    var userDoc = await userCollection.doc(userId).get();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.5,
              child: VideoPlayer(controller),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                      controller: musicController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Song Name',
                        labelStyle: myStyle(20),
                        prefixIcon: Icon(Icons.music_note),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                      controller: capstionController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Capstion',
                        labelStyle: myStyle(20),
                        prefixIcon: Icon(Icons.closed_caption),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  onPressed: () => uploadVideo(),
                  child: Text('Upload'),
                ),
                MaterialButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  onPressed: () => Navigator.pop(context),
                  child: Text('Cancel'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
