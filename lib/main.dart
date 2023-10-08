//import 'dart:ui_web';
import 'package:flutter/cupertino.dart';
//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

void main () {
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
const MyApp({super.key});

@override

Widget build(BuildContext context){
  return MaterialApp(
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
    );
}


//---------------------------CLASS MENU-----------------------
class NavigationDrawer extends StatelessWidget{
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(

      child: SingleChildScrollView(
    child:Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        buildHeader(context),
        buildMenuItems(context),
      ],  
    )
  )
  ); 

Widget buildHeader(BuildContext context)=>Container(
  color: Colors.orange.shade700,
  padding: EdgeInsets.only(
  top:MediaQuery.of(context).padding.top,
),
);

Widget buildMenuItems(BuildContext context)=> Container(
  padding:const EdgeInsets.all(10),
  child:Wrap(
   runSpacing: 10,
  children: [

//------------------HOME IN MENU----------------------    

    ListTile(
      leading: const Icon(Icons.home_outlined,size: 30,),
      title: const Text("Home",style: TextStyle(fontSize: 23),),
      onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) =>  homePage(),)),
    ),

//------------------GAMES IN MENU----------------------    

    ListTile(
      leading: const Icon(Icons.gamepad_outlined,size: 30,),
      title: const Text("Games",style: TextStyle(fontSize: 23),),
      onTap: (){},
    ),    

//------------------SCHEDULE IN MENU----------------------    

    ListTile(
      leading: const Icon(Icons.calendar_month_outlined,size: 30,),
      title: const Text("Schedule",style: TextStyle(fontSize: 23),),
      onTap: (){
         Navigator.pop(context);
        Navigator.of(context).push(MaterialPageRoute(builder:(context) =>  SchedulePage(),));
      },
    ),

//------------------INFORMATION IN MENU----------------------    

    ListTile(
      leading: const Icon(Icons.article_outlined ,size: 30,),
      title: const Text("Information",style: TextStyle(fontSize: 23),),
      onTap: (){},
    ),

//------------------CLASS SETTINGS IN MENU----------------------    

    ListTile(
      leading: const Icon(Icons.settings,size: 30,),
      title: const Text("Settings",style: TextStyle(fontSize: 23),),
      onTap: () {
        Navigator.pop(context);
        Navigator.of(context).push(MaterialPageRoute(builder:(context) =>  SettingsPage(),));
      },
    ),
  ],
  )
);
}
//------------------CLASS SCHEDULE---------------------- 


class SchedulePage extends StatelessWidget{  

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Schedule",style: TextStyle(fontSize:26)),
       ),
      body: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(DateFormat.yMMMMd().format(DateTime.now()),style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black54)),
                    Text('Today',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:Colors.black)),
                    TableCalendar(
                      //locale: "eu_US",
                      rowHeight: 43,
                      headerStyle: HeaderStyle(formatButtonVisible: false , titleCentered: true),
                      focusedDay: DateTime.now(),
                      firstDay:DateTime.utc (2010,1,1),
                      lastDay: DateTime.utc(2040,1,1),
                      )
                  ],
                ),
     );
    }
  }
 

//---------------------------CLASS SETTINGS-----------------------

class SettingsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings",style: TextStyle(fontSize:26)),
       
        

      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
             const SizedBox(height: 30),

           const Text('Account',style: TextStyle(color:Colors.blueGrey,fontSize:25 )),

// ----------------NEW ACCOUNT-----------------
            TextButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const new_accounts()),
            );
          },
           child:const Row(
              children: [
                Icon(
                  Icons.add_circle_outline_rounded,
                  color: Colors.deepOrange,
                  size:35 ,
                ),
                SizedBox(width: 20),
                Text("create new account" ,style: TextStyle( color:Colors.black ,fontSize:25,fontWeight:FontWeight.normal ))
              ],
            ),
          ),

// ----------------YOUR ACCOUNT-----------------

            TextButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const accounts()),
            );
          },
           child: const Row(
              children: [
                Icon(
                  Icons.account_circle_outlined ,
                  color: Colors.deepOrange,
                  size:35 ,
                ),
                SizedBox(width: 20),
                Text("Your Account" ,style: TextStyle(color: Colors.black,fontSize:25,fontWeight:FontWeight.normal ))
              ],
            ),
            ),

           const Text('Login',style: TextStyle(color:Colors.blueGrey,fontSize:25 )),

// ----------------LOG OUT-----------------
            TextButton(onPressed: () {  showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: const Text("Log Out",style: TextStyle(fontSize: 20),),
                  content: const Text("Do you wanna logout NOLFYMOS ?",style: TextStyle(fontSize: 20),),
                  actions: <Widget>[

                  // -------SURE text button------------

                    TextButton(
                      onPressed: () {
                        
                        //TODO  go to sign in (first page)
                      },
                      child: Container(
                        color: Colors.white,
                        padding: const EdgeInsets.all(14),
                        child: const Text("sure" ,style: TextStyle(color: Colors.black,fontSize: 20),),
                      ),
                    ),

                    // -------SURE text button------------

                    TextButton(
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                      child: Container(
                        color: Colors.white,
                        padding: const EdgeInsets.all(14),
                        child: const Text("Cancel" ,style: TextStyle(color: Colors.black,fontSize: 20),),
                      ),
                    ),
                  ],
                ),
              );
            },
           child:const Row(
              children: [
                Icon(
                  Icons.logout_rounded,
                  color: Colors.deepOrange,
                  size:35 ,
                ),
                SizedBox(width: 20),
                Text("Logout" ,style: TextStyle( color:Colors.black ,fontSize:25,fontWeight:FontWeight.normal ))
              ],
            ),
          ),
         const Text('Support',style: TextStyle(color:Colors.blueGrey,fontSize:25 )),
            
// ----------------ABOUT-----------------
            TextButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const about()),
            );
          },
           child:const Row(
              children: [
                Icon(
                  Icons.info_outline_rounded ,
                  color: Colors.deepOrange,
                  size:35 ,
                ),
                SizedBox(width: 20),
                Text("About" ,style: TextStyle( color:Colors.black ,fontSize:25,fontWeight:FontWeight.normal ))
              ],
            ),
          ),

                      
// ----------------PRIVACY-----------------
            TextButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const privacy()),
            );
          },
           child: const Row(
              children: [
                Icon(
                  Icons.https_outlined ,
                  color: Colors.deepOrange,
                  size:35 ,
                ),
                SizedBox(width: 20),
                Text("Privacy and Data" ,style: TextStyle( color:Colors.black ,fontSize:25,fontWeight:FontWeight.normal ))
              ],
            ),
          ),

          ],
        ),
      ),
    );
  }
}

//---------------------------CLASS NEW ACCOUNT-----------------------
class new_accounts extends StatelessWidget {
  const new_accounts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Accounts',style: TextStyle(fontSize:26)),
      ),
     
    );
  }
}

//---------------------------CLASS ACCOUNT-----------------------

class accounts extends StatelessWidget {
  const accounts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Account',style: TextStyle(fontSize:26)),
      ),
     
    );
  }
}

//---------------------------CLASS LOGOUT-----------------------

class logout extends StatelessWidget {
  const logout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

    );
  }
}

//---------------------------CLASS ABOUT-----------------------

class about extends StatelessWidget {
  const about({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About',style: TextStyle(fontSize:26)),
      ),
     
    );
  }
}

//---------------------------CLASS PRIVACY-----------------------

class privacy extends StatelessWidget {
  const privacy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy and Data',style: TextStyle(fontSize:26)),
      ),
    );
  }
}

