//import 'package:ffi/ffi.dart';
//import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
//import 'package:test/main.dart';
import 'dart:async';
import 'dart:io';
//import 'package:get/get.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
//import 'package:intl/intl.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:flutter/foundation.dart' show kIsWeb;



//Error: Unsupported operation: Platform._operatingSystem




//---------------------------CLASS POST-----------------------
class Post extends StatefulWidget {

  @override
  post_page createState() => post_page();
}


class post_page extends State<Post>  {

  //final void Function()? onPressed; // Good
  //final VoidCallback? onPressed; // Good
  //final valuechanged<t?>? onchanged;

  File ? _selectimg;

  //Rx<File> _selectimg = File("").obs;

  @override

  Future<void> _pickImage()async {



    final img = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (img != null) {
        _selectimg = File(img.path);
    }
    print(_selectimg);
  }



  Future upload() async {
print(_selectimg?.path  .toString());
    FirebaseStorage.instance
        .ref('images')
        .child('${_selectimg?.path.toString()  }')
        .putFile(_selectimg!)
        .then((value) {value.ref.getDownloadURL();});

   // final storage = FirebaseStorage.instance;

    //final storageRef = FirebaseStorage.instance.ref();

   // final spaceRef = storageRef.child("images/game.png");





    /*var imgName = DateTime.now().microsecondsSinceEpoch.toString();

    //Error: [firebase_storage/no-bucket] No default storage bucket could be found. Ensure you have correctly followed the Getting Started guide.

    var reference = FirebaseStorage.instance.ref().child('images/${Uri.file(_selectimg!.path).pathSegments.last}');


    var uploadPhoto  = reference.putFile(_selectimg!);

    var downloadUrl= await(await uploadPhoto).ref.getDownloadURL();*/

        }



  Widget build(BuildContext context){

    final _textController = TextEditingController();

    String post = " ";

    return Scaffold(
      appBar: AppBar(
        title: const Text("Posts",style: TextStyle(fontSize:26)),
      ),

      body:

      Container(
        padding: const EdgeInsets.all(100),

        child:// Column(
        // mainAxisAlignment:MainAxisAlignment.center,
        //crossAxisAlignment:CrossAxisAlignment.end,
        ListView(
          children: <Widget>[

            //Text("hi",style: TextStyle(fontSize: 35),),
            /*const SizedBox(width: 100,),
            Row(
              children:[
            Image:image.assets(),
              ],
            ),*/
            

            const SizedBox(height: 250),
            Expanded(child:Container(

              child: TextField(
                controller:_textController,
                decoration:  InputDecoration(
                  hintText: "Write what's on your mind (^u^)",
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: (){
                      _textController.clear();
                    },
                    icon: const Icon(Icons.clear,color: Colors.black,),
                  ),
                ),
              ),

            ),
            ),

            /*const SizedBox(height: 1),
            Expanded(child:Container(
              child: Center(
                child: IconButton(
                  icon: const Icon(Icons.image_search),
                  color: Colors.black,
                  onPressed: () {

                  },
                ),
              ),
            ),
            ),*/

            const SizedBox(height: 230),
              MaterialButton(
                onPressed:upload,
                padding: EdgeInsets.zero,
                child:Container(
                  alignment: Alignment.center,
                  width: 180,
                  height: 60,
                  decoration: BoxDecoration(color: Colors.orange,
                    borderRadius: BorderRadius.circular(37),
                  ),
                  child:Row(

                      mainAxisAlignment: MainAxisAlignment.center,

                      children:const [

                        Icon(
                          Icons.add,
                          color: Colors.black,
                          size:35 ,
                        ),
                        Text("Post" ,style: TextStyle( color:Colors.black ,fontSize:25,fontWeight:FontWeight.normal ,)),


                    ]
                ),
              ),
            ),
            //const SizedBox(height: 20,),
            //_selectimg != null ? Image.file(_selectimg!) : const Text("pls pick img"),
          ],
        ),
        //),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: FloatingActionButton(
          onPressed: (){
           _pickImage();
          },
          child: Icon(Icons.image_search)
      ),
      /*Obx(() {
        Image.network(photo.value.toString());
        ,
      }),*/
    );
  }


}

//class UploadPhoto {

  //final FirebaseFirestore _firestore = FirebaseFirestore.instance;


//}






