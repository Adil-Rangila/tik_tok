import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tik_tok/variables.dart';

class AddVideo extends StatefulWidget {
  @override
  _AddVideoState createState() => _AddVideoState();
}

class _AddVideoState extends State<AddVideo> {
  showUploadOptions() {
    return showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            children: [
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context);
                  pickVideo(ImageSource.camera);
                },
                child: Text('Camra', style: myStyle(20)),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context);
                  pickVideo(ImageSource.gallery);
                },
                child: Text('Gallery', style: myStyle(20)),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancil', style: myStyle(20)),
              ),
            ],
          );
        });
  }

  pickVideo(ImageSource src) async {
    //Navigator.pop(context);
    final video = await ImagePicker().getVideo(source: src);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () => showUploadOptions(),
        child: Center(
          child: Container(
            height: 90,
            width: 190,
            color: Colors.red[200],
            child: Center(
              child: Text(
                'Add Video',
                style: myStyle(30),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
