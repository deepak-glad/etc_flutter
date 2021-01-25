import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart' as syspath;
import 'package:path/path.dart' as path;
import 'package:rflutter_alert/rflutter_alert.dart';

class UserImagePicker extends StatefulWidget {
  UserImagePicker(this.imagepickFn);
  final Function imagepickFn;
  @override
  _UserImagePickerState createState() => _UserImagePickerState();
}

class _UserImagePickerState extends State<UserImagePicker> {
  File _pickedImage;
  void _pickGallery() async {
    final pickImageGallery = await ImagePicker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 100,
      maxHeight: 480,
      maxWidth: 640,
    );
    setState(() {
      _pickedImage = pickImageGallery;
    });
    final appDir = await syspath.getApplicationDocumentsDirectory();
    final filename = path.basename(pickImageGallery.path);
    final saveImage = await pickImageGallery.copy('${appDir.path}/$filename');
    widget.imagepickFn(saveImage);
    Navigator.of(context).pop();
  }

  void _alert() {
    Alert(
        context: context,
        title: 'Select Purpose',
        type: AlertType.info,
        buttons: [
          // if (_pickedImage == null)
          DialogButton(
            child: Text(
              "camera",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: _pickImage,
          ),
          // if (_pickGallery == null)
          DialogButton(
            child: Text(
              "gallery",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: _pickGallery,
          ),
        ]).show();
  }

  void _pickImage() async {
    final pickImageFile = await ImagePicker.pickImage(
      source: ImageSource.camera,
      imageQuality: 100,
      maxHeight: 150,
      maxWidth: 600,
    );
    setState(() {
      _pickedImage = pickImageFile;
    });
    final appDir = await syspath.getApplicationDocumentsDirectory();
    final filename = path.basename(pickImageFile.path);
    final saveImage = await pickImageFile.copy('${appDir.path}/$filename');
    widget.imagepickFn(saveImage);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          alignment: Alignment.bottomLeft,
          icon: Icon(Icons.edit),
          onPressed: _alert,
        ),
        GestureDetector(
          onTap: _alert,
          child: Container(
            // margin: const EdgeInsets.all(15),
            height: 120,
            width: 200,
            child: _pickedImage != null
                ? Image.file(
                    _pickedImage,
                    fit: BoxFit.cover,
                  )
                : Image.asset(
                    'assets/etc_image/pub.jpg',
                    fit: BoxFit.fitWidth,
                  ),
          ),
        ),
      ],
    );
  }
}
