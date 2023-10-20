import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test2/main.dart';
import 'dart:async';
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:permission_handler/permission_handler.dart';




//---------------------------CLASS POST-----------------------
class Post extends StatefulWidget {

  @override
  post_page createState() => post_page();
}


class post_page extends State<Post>  {

  File ? _selectimg;

  @override

  Future _pickImage()async {



    final img = await ImagePicker().pickImage(source: ImageSource.gallery);

    setState((){

      _selectimg= File(img!.path);
    }


    );
  }

  Future upload() async{


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
                onPressed: (){

                },
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

      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterTop,
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            _pickImage();
          },
          child: Icon(Icons.image_search)
      ),

    );
  }

}







