import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_core/firebase_core.dart';

class Post extends StatefulWidget {
  @override
  post_page createState() => post_page();
}

class post_page extends State<Post> {
  File? _selectimg;

  Future<void> _pickImage() async {
    final img = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (img != null) {
      setState(() {
        _selectimg = File(img.path);
      });
    }
  }

  Future<void> upload() async {
    if (_selectimg == null) {
      print('No image selected');
      return;
    }

    try {
      final imgName = DateTime.now().microsecondsSinceEpoch.toString();
      final reference =
          FirebaseStorage.instance.ref().child("images/$imgName.png");
      final uploadTask = reference.putFile(_selectimg!);
      final snapshot = await uploadTask.whenComplete(() {});
      final downloadUrl = await snapshot.ref.getDownloadURL();
      print('Download URL: $downloadUrl');
    } catch (error) {
      print('Error uploading image: $error');
    }
  }

  Widget build(BuildContext context) {
    final _textController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Posts", style: TextStyle(fontSize: 26)),
      ),
      body: Container(
        padding: const EdgeInsets.all(100),
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 250),
            Expanded(
              child: Container(
                child: TextField(
                  controller: _textController,
                  decoration: InputDecoration(
                    hintText: "Write what's on your mind (^u^)",
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () {
                        _textController.clear();
                      },
                      icon: const Icon(
                        Icons.clear,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 230),
            MaterialButton(
              onPressed: upload,
              padding: EdgeInsets.zero,
              child: Container(
                alignment: Alignment.center,
                width: 180,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(37),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.add,
                      color: Colors.black,
                      size: 35,
                    ),
                    Text(
                      "Post",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterTop,
      floatingActionButton: FloatingActionButton(
        onPressed: _pickImage,
        child: Icon(Icons.image_search),
      ),
    );
  }
}
