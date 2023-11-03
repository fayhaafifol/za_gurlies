import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test/game/game.dart';

import 'package:test/homeFiles/postPage.dart';
import 'package:test/information/info.dart';

import 'package:test/settingsFiles/settingsPage.dart';
import 'package:test/scheduleFiles/schedulePage.dart';

import 'package:test/chat/services/auth/auth_gate.dart';
//import 'package:test/chat/services/auth/auth_service.dart';

//import 'package:test/firebase_options.dart';
//import 'package:provider/provider.dart';

// ---------------- CLASS HOME PAGE -----------------



void main () async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(

        apiKey: "AIzaSyDMBH9PXHX5mdg-eOa77Are10Eq-XfbJTs",
        appId: "1:877282308511:android:4bd35d981bc7feb95bcdaa",
        messagingSenderId: "877282308511",
        projectId: "pet-project-de9a5",
        //storageBucket: "pet-project.appspot.com/images",


    ),
  );
  runApp(const MyApp(
    
  ));

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override

  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Nolly " ,
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
      padding: const EdgeInsets.all(100),
      child:  ListView(
          children: [
            Column(
                mainAxisAlignment:MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

              children:[

//======================1ST POST============================

            Row(
              children: [

            SizedBox(height: 150,),

            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage("assets/duck.jpeg",),
            ),
            SizedBox(width: 15,),
              Text("Fifol_fayhaa",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
      ]
            ),

                Container(
                  height: 500,
                  width: 500,
                  decoration: BoxDecoration(
                    border: Border.all(color:Colors.pinkAccent,width: 6),
                    //borderRadius: BorderRadius.circular(28), //<-- SEE HERE
                  ),
                  child: Image.asset("assets/mimi2.jpg",height: 500,width: 500,fit: BoxFit.fill,),
                ),

            Row(
              children: [
              SizedBox(height: 15,),
              IconButton(
                onPressed:(){

                },
                icon:Icon(FontAwesomeIcons.heart,size: 30, color: Colors.pinkAccent,),
  ),
                SizedBox(height: 15,),
                IconButton(
                  onPressed:(){

                  },
                  icon:Icon(FontAwesomeIcons.comment,size: 30, color: Colors.pinkAccent,),
                ),
                SizedBox(height: 15,),
                IconButton(
                  onPressed:(){

                  },
                  icon:Icon(Icons.send,size: 30, color: Colors.pinkAccent,),
                ),
    ],
  ),
                Text("841 likes",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                Text("Look at my mimi <3",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

//========================2ND POST========================

                Row(
                    children: [

                      SizedBox(height: 150,),

                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("assets/nour.jpeg",),
                      ),
                      SizedBox(width: 15,),
                      Text("_nourwaleed26",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                    ]
                ),

                Container(
                  height: 500,
                  width: 500,
                  decoration: BoxDecoration(
                    border: Border.all(color:Colors.pinkAccent,width: 6),
                    //borderRadius: BorderRadius.circular(28), //<-- SEE HERE
                  ),
                  child: Image.asset("assets/free.jpg",height: 500,width: 500,fit: BoxFit.fill,),
                ),

                Row(
                  children: [
                    SizedBox(height: 15,),
                    IconButton(
                      onPressed:(){

                      },
                      icon:Icon(FontAwesomeIcons.heart,size: 30, color: Colors.pinkAccent,),
                    ),
                    SizedBox(height: 15,),
                    IconButton(
                      onPressed:(){

                      },
                      icon:Icon(FontAwesomeIcons.comment,size: 30, color: Colors.pinkAccent,),
                    ),
                    SizedBox(height: 15,),
                    IconButton(
                      onPressed:(){

                      },
                      icon:Icon(Icons.send,size: 30, color: Colors.pinkAccent,),
                    ),
                  ],
                ),
                Text("374673 likes",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                Text("Free Palestine",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

//======================3RD POST============================

                Row(
                    children: [

                      SizedBox(height: 150,),

                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("assets/loji.jpeg",),
                      ),
                      SizedBox(width: 15,),
                      Text("lojin_magdy19",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                    ]
                ),

                Container(
                  height: 500,
                  width: 500,
                  decoration: BoxDecoration(
                    border: Border.all(color:Colors.pinkAccent,width: 6),
                    //borderRadius: BorderRadius.circular(28), //<-- SEE HERE
                  ),
                  child: Image.asset("assets/kiko.jpeg",height: 500,width: 500,fit: BoxFit.fill,),
                ),

                Row(
                  children: [
                    SizedBox(height: 15,),
                    IconButton(
                      onPressed:(){

                      },
                      icon:Icon(FontAwesomeIcons.heart,size: 30, color: Colors.pinkAccent,),
                    ),
                    SizedBox(height: 15,),
                    IconButton(
                      onPressed:(){

                      },
                      icon:Icon(FontAwesomeIcons.comment,size: 30, color: Colors.pinkAccent,),
                    ),
                    SizedBox(height: 15,),
                    IconButton(
                      onPressed:(){

                      },
                      icon:Icon(Icons.send,size: 30, color: Colors.pinkAccent,),
                    ),
                  ],
                ),
                Text("846 likes",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                Text("My baby ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

//======================4TH POST============================

                Row(
                    children: [

                      SizedBox(height: 150,),

                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("assets/duck.jpeg",),
                      ),
                      SizedBox(width: 15,),
                      Text("Fifol_fayhaa",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                    ]
                ),

                Container(
                  height: 500,
                  width: 500,
                  decoration: BoxDecoration(
                    border: Border.all(color:Colors.pinkAccent,width: 6),
                    //borderRadius: BorderRadius.circular(28), //<-- SEE HERE
                  ),
                  child: Image.asset("assets/toti.jpeg",height: 500,width: 500,fit: BoxFit.fill,),
                ),

                Row(
                  children: [
                    SizedBox(height: 15,),
                    IconButton(
                      onPressed:(){

                      },
                      icon:Icon(FontAwesomeIcons.heart,size: 30, color: Colors.pinkAccent,),
                    ),
                    SizedBox(height: 15,),
                    IconButton(
                      onPressed:(){

                      },
                      icon:Icon(FontAwesomeIcons.comment,size: 30, color: Colors.pinkAccent,),
                    ),
                    SizedBox(height: 15,),
                    IconButton(
                      onPressed:(){

                      },
                      icon:Icon(Icons.send,size: 30, color: Colors.pinkAccent,),
                    ),
                  ],
                ),
                Text("925 likes",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                Text("my majestic daughter",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

//======================5TH POST============================

                Row(
                    children: [

                      SizedBox(height: 150,),

                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("assets/jana.jpeg",),
                      ),
                      SizedBox(width: 15,),
                      Text("janaahmmedd",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                    ]
                ),

                Container(
                  height: 500,
                  width: 500,
                  decoration: BoxDecoration(
                    border: Border.all(color:Colors.pinkAccent,width: 6),
                    //borderRadius: BorderRadius.circular(28), //<-- SEE HERE
                  ),
                  child: Image.asset("assets/lulu.jpeg",height: 500,width: 500,fit: BoxFit.fill,),
                ),

                Row(
                  children: [
                    SizedBox(height: 15,),
                    IconButton(
                      onPressed:(){

                      },
                      icon:Icon(FontAwesomeIcons.heart,size: 30, color: Colors.pinkAccent,),
                    ),
                    SizedBox(height: 15,),
                    IconButton(
                      onPressed:(){

                      },
                      icon:Icon(FontAwesomeIcons.comment,size: 30, color: Colors.pinkAccent,),
                    ),
                    SizedBox(height: 15,),
                    IconButton(
                      onPressed:(){

                      },
                      icon:Icon(Icons.send,size: 30, color: Colors.pinkAccent,),
                    ),
                  ],
                ),
                Text("686 likes",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                Text("بوسي بوسي بوسي كات",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

//======================6TH POST============================

                Row(
                    children: [

                      SizedBox(height: 150,),

                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("assets/joudy.jpeg",),
                      ),
                      SizedBox(width: 15,),
                      Text("joudyahmeddd",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                    ]
                ),

                Container(
                  height: 500,
                  width: 500,
                  decoration: BoxDecoration(
                    border: Border.all(color:Colors.pinkAccent,width: 6),
                    //borderRadius: BorderRadius.circular(28), //<-- SEE HERE
                  ),
                  child: Image.asset("assets/po.jpeg",height: 500,width: 500,fit: BoxFit.fill,),
                ),

                Row(
                  children: [
                    SizedBox(height: 15,),
                    IconButton(
                      onPressed:(){

                      },
                      icon:Icon(FontAwesomeIcons.heart,size: 30, color: Colors.pinkAccent,),
                    ),
                    SizedBox(height: 15,),
                    IconButton(
                      onPressed:(){

                      },
                      icon:Icon(FontAwesomeIcons.comment,size: 30, color: Colors.pinkAccent,),
                    ),
                    SizedBox(height: 15,),
                    IconButton(
                      onPressed:(){

                      },
                      icon:Icon(Icons.send,size: 30, color: Colors.pinkAccent,),
                    ),
                  ],
                ),
                Text("735 likes",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                Text("Madame bella est francaise",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

//======================7TH POST============================

                Row(
                    children: [

                      SizedBox(height: 150,),

                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("assets/loji.jpeg",),
                      ),
                      SizedBox(width: 15,),
                      Text("lojin_magdy19",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                    ]
                ),

                Container(
                  height: 500,
                  width: 500,
                  decoration: BoxDecoration(
                    border: Border.all(color:Colors.pinkAccent,width: 6),
                    //borderRadius: BorderRadius.circular(28), //<-- SEE HERE
                  ),
                  child: Image.asset("assets/lola.jpeg",height: 500,width: 500,fit: BoxFit.fill,),
                ),

                Row(
                  children: [
                    SizedBox(height: 15,),
                    IconButton(
                      onPressed:(){

                      },
                      icon:Icon(FontAwesomeIcons.heart,size: 30, color: Colors.pinkAccent,),
                    ),
                    SizedBox(height: 15,),
                    IconButton(
                      onPressed:(){

                      },
                      icon:Icon(FontAwesomeIcons.comment,size: 30, color: Colors.pinkAccent,),
                    ),
                    SizedBox(height: 15,),
                    IconButton(
                      onPressed:(){

                      },
                      icon:Icon(Icons.send,size: 30, color: Colors.pinkAccent,),
                    ),
                  ],
                ),
                Text("686 likes",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                Text("يا خلاصواااا ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),


//======================8TH POST============================

                Row(
                    children: [

                      SizedBox(height: 150,),

                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("assets/bos.jpeg",),
                      ),
                      SizedBox(width: 15,),
                      Text("bbasssantttt",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                    ]
                ),

                Container(
                  height: 500,
                  width: 500,
                  decoration: BoxDecoration(
                    border: Border.all(color:Colors.pinkAccent,width: 6),
                    //borderRadius: BorderRadius.circular(28), //<-- SEE HERE
                  ),
                  child: Image.asset("assets/pup.jpeg",height: 500,width: 500,fit: BoxFit.fill,),
                ),

                Row(
                  children: [
                    SizedBox(height: 15,),
                    IconButton(
                      onPressed:(){

                      },
                      icon:Icon(FontAwesomeIcons.heart,size: 30, color: Colors.pinkAccent,),
                    ),
                    SizedBox(height: 15,),
                    IconButton(
                      onPressed:(){

                      },
                      icon:Icon(FontAwesomeIcons.comment,size: 30, color: Colors.pinkAccent,),
                    ),
                    SizedBox(height: 15,),
                    IconButton(
                      onPressed:(){

                      },
                      icon:Icon(Icons.send,size: 30, color: Colors.pinkAccent,),
                    ),
                  ],
                ),
                Text("458 likes",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                Text("el geda doody",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

              ]

            ),
          ],
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
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Game(),));
                },
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
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Info(),));
                },
              ),

//-------------------------------CHAT IN MENU-----------------------------------

              ListTile(
                leading: const Icon(FontAwesomeIcons.solidComments, size: 25,
                  color: Colors.pinkAccent,),
                title: const Text("Chat", style: TextStyle(fontSize: 23),),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => AuthGate(),));
                },
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
