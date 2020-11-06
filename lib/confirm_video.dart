import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class ConfirmVideo extends StatefulWidget {
  final File videoFile;
  final String videoPath;
  final ImageSource imageSource;

  ConfirmVideo(this.videoFile, this.videoPath, this.imageSource);

  @override
  _ConfirmVideoState createState() => _ConfirmVideoState();
}

class _ConfirmVideoState extends State<ConfirmVideo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.5,
              
            )
          ],
        ),
      ),
    );
  }
}
