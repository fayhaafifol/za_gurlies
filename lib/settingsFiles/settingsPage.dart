import 'package:flutter/material.dart';
import 'package:test/account/choice.dart';
import 'package:test/account/profile.dart';
import 'package:test/main.dart';
import 'package:test/settingsFiles/about_set.dart';
import 'package:test/settingsFiles/privacy_set.dart';


//---------------------------CLASS SETTINGS-----------------------
class SettingsPage extends StatelessWidget{
   SettingsPage ({Key? key}):super(key: key);
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
              MaterialPageRoute(builder: (context) => const Choice()),
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
              MaterialPageRoute(builder: (context) => const Profile()),
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
                  content: const Text("Do you wanna logout NOLFYMOS ＞︿＜",style: TextStyle(fontSize: 20),),
                  actions: <Widget>[

                  // -------SURE text button------------

                    TextButton(
                      onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),);
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
              MaterialPageRoute(builder: (context) =>  About()),
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


