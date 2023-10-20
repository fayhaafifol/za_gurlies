import 'package:flutter/material.dart';


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
                content: const Text("Do you wanna logout NOLFYMOS ＞︿＜",style: TextStyle(fontSize: 20),),
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
                MaterialPageRoute(builder: (context) =>  about()),
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
      //TODO  profile page
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

      body:   Container(

          padding:const EdgeInsets.all(15),

          child:const SingleChildScrollView(
            child:
            Text('''''''''Nolfymos is an application that helps you communicate with your pet  .

Many things can be done through this application.

Nolfymos is the first social media for your pet, 

through which you can communicate with owners pet and you can talk to the doctor and consult him. 

You can posting any thing for you pet . 

There is also all information about all pets, 
Such as what is favorite food ?  
What is the normal length and all of that inside Nolfymos . 

If you always forget the time to vaccinate your pet,there is an schedule that reminds you of the time to vaccinate your pet .''''''''''',
              style: TextStyle(color: Colors.black, fontSize: 30 ,height: 1.5),),
          )

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
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
            children: [
              const SizedBox(height: 15),
              TextButton(onPressed: () {  showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: const Text("Delete Your Account",style: TextStyle(fontSize: 20),),
                  content: const Text("Do you wanna Delete Your Account （︶^︶）",style: TextStyle(fontSize: 20),),
                  actions: <Widget>[

                    // -------SURE text button------------

                    TextButton(
                      onPressed: () {

                        //TODO  go to Log in new account (same page for create new account)
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
                      Icons.delete_forever_outlined,
                      color: Colors.deepOrange,
                      size:35 ,
                    ),
                    SizedBox(width: 20),
                    Text("Delete Your Account" ,style: TextStyle( color:Colors.black ,fontSize:25,fontWeight:FontWeight.normal ))
                  ],
                ),
              ),
            ]
        ),
      ),
    );
  }
}
