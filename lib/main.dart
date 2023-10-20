//import 'dart:ui_web';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:test2/post.dart';
import 'package:test2/settings.dart';
import 'package:test2/schedule.dart';
import 'package:permission_handler/permission_handler.dart';


void main () async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(

        apiKey: "AIzaSyDMBH9PXHX5mdg-eOa77Are10Eq-XfbJTs",
        appId: "1:877282308511:android:4bd35d981bc7feb95bcdaa",
        messagingSenderId: "877282308511",
        projectId: "pet-project-de9a5",

    ),
  );
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override

  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Nolfymos " ,
      theme: ThemeData(primarySwatch: Colors.orange),
      home: homePage(),
    );

  }

}
// ---------------- CLASS HOME PAGE -----------------


class  homePage extends StatefulWidget {
  @override
  _homePageUISate createState () => _homePageUISate ();



}

class _homePageUISate extends State<homePage>{



  @override
  Widget build(BuildContext context)=>Scaffold(

    appBar: AppBar(
      title: const Text("Nolfymos",style: TextStyle(fontSize:26)),
    ),
    drawer: const NavigationDrawer(),

    body: Container(
      padding: const EdgeInsets.all(10),
      child: ListView(
          children:const [  SizedBox(height: 30),
          ]

      ),
    ),
    floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Post ()),
          );
        },
        child: Icon(Icons.add)
    ),
  );

}

//---------------------------CLASS MENU-----------------------
class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) =>
      Drawer(

          child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  buildHeader(context),
                  buildMenuItems(context),
                ],
              )
          )
      );

  Widget buildHeader(BuildContext context) =>
      Container(
        color: Colors.orange.shade700,
        padding: EdgeInsets.only(
          top: MediaQuery
              .of(context)
              .padding
              .top,
        ),
      );

  Widget buildMenuItems(BuildContext context) =>
      Container(
          padding: const EdgeInsets.all(10),
          child: Wrap(
            runSpacing: 10,
            children: [

//------------------HOME IN MENU----------------------

              ListTile(
                leading: const Icon(
                  Icons.home, size: 30, color: Colors.pinkAccent,),
                title: const Text("Home", style: TextStyle(fontSize: 23),),
                onTap: () =>
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => homePage(),)),
              ),

//------------------GAMES IN MENU----------------------

              ListTile(
                leading: const Icon(FontAwesomeIcons.gamepad, size: 25,
                  color: Colors.pinkAccent,),
                title: const Text("Games", style: TextStyle(fontSize: 23),),
                onTap: () {},
              ),

//------------------SCHEDULE IN MENU----------------------

              ListTile(
                leading: const Icon(FontAwesomeIcons.calendarDay, size: 30,
                  color: Colors.pinkAccent,),
                title: const Text("Schedule", style: TextStyle(fontSize: 23),),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SchedulePage(),));
                },
              ),

//------------------INFORMATION IN MENU----------------------

              ListTile(
                leading: const Icon(
                  Icons.pets_outlined, size: 25, color: Colors.pinkAccent,),
                title: const Text(
                  "Information", style: TextStyle(fontSize: 23),),
                onTap: () {},
              ),

//-------------------------------CHAT IN MENU-----------------------------------

              ListTile(
                leading: const Icon(FontAwesomeIcons.solidComments, size: 25,
                  color: Colors.pinkAccent,),
                title: const Text("Chat", style: TextStyle(fontSize: 23),),
                onTap: () {},
              ),

//------------------CLASS SETTINGS IN MENU----------------------

              ListTile(
                leading: const Icon(
                  Icons.settings, size: 30, color: Colors.pinkAccent,),
                title: const Text("Settings", style: TextStyle(fontSize: 23),),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SettingsPage(),));
                },
              ),
            ],
          )
      );
}











