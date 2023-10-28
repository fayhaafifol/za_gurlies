import 'package:flutter/material.dart';
import 'package:test2/cat.dart';
import 'package:test2/dog.dart';
import 'package:test2/bird.dart';
import 'package:test2/hamster.dart';
import 'package:test2/owl.dart';
import 'package:test2/fish.dart';
import 'package:test2/turtle.dart';
import 'package:test2/monkey.dart';
import 'package:test2/lizard.dart';


class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Information",style: TextStyle(fontSize:26)),
        
      ),
      body:
        Container(
        padding: const EdgeInsets.all(100),

        child:


            ListView(



              children:<Widget>[
                Column(

                  mainAxisAlignment:MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children:<Widget>[
//=========================CAT BUTTON==============================
      SizedBox(height: 100,width: 100,),

        Row(
            children : <Widget>[
        SizedBox(height: 100,width: 100,),
        Center(
        child: Material(
          color: Colors.orange,
        borderRadius: BorderRadius.circular(28),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: InkWell(
          splashColor: Colors.orangeAccent,
          onTap: (){ Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const cat()),
          );
    },
          child:Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.orange,width: 4),
              borderRadius: BorderRadius.circular(28),
            ),
          child:Column(
            mainAxisSize: MainAxisSize.min,
            children:[
            Ink.image(image: AssetImage("assets/cat.jpeg",),
            height: 145,
            width: 170,
            fit: BoxFit.cover,
            //child: Center(
            //child: Text("cat",style: TextStyle(fontSize: 37),),
           // ),
          ),
              SizedBox(height: 6),
              Text("Cat",style: TextStyle(fontSize: 32),),
            ],
        ),
          ),
        ),
        ),

//=========================DOG BUTTON==============================

      ),


                SizedBox(height: 50,width: 100,),
                Center(
                  child: Material(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(28),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.orangeAccent,
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Dog()),
                        );
                      },
                      child:Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange,width: 4),
                          borderRadius: BorderRadius.circular(28),
                        ),
                        child:Column(
                          mainAxisSize: MainAxisSize.min,
                          children:[
                            Ink.image(image: AssetImage("assets/dog.jpeg",),
                              height: 145,
                              width: 170,
                              fit: BoxFit.cover,
                              //child: Center(
                              //child: Text("cat",style: TextStyle(fontSize: 37),),
                              // ),
                            ),
                            SizedBox(height: 6),
                            Text("Dog",style: TextStyle(fontSize: 32),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

 //=========================HAMSTER BUTTON==============================

                SizedBox(height: 50,width: 100,),
                Center(
                  child: Material(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(28),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.orangeAccent,
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const hamster()),
                        );
                      },
                      child:Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange,width: 4),
                          borderRadius: BorderRadius.circular(28),
                        ),
                        child:Column(
                          mainAxisSize: MainAxisSize.min,
                          children:[
                            Ink.image(image: AssetImage("assets/hamster.jpeg",),
                              height: 145,
                              width: 170,
                              fit: BoxFit.cover,
                              //child: Center(
                              //child: Text("cat",style: TextStyle(fontSize: 37),),
                              // ),
                            ),
                            SizedBox(height: 6),
                            Text("Hamster",style: TextStyle(fontSize: 32),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
        ],
                ),

//=========================BIRD BUTTON==============================

           SizedBox(height: 100,),
           Row(
             children : <Widget>[
                SizedBox(height: 50,width: 100,),
                Center(
                  child: Material(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(28),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.orangeAccent,
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const bird()),
                        );
                      },
                      child:Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange,width: 4),
                          borderRadius: BorderRadius.circular(28),
                        ),
                        child:Column(
                          mainAxisSize: MainAxisSize.min,
                          children:[
                            Ink.image(image: AssetImage("assets/bird.jpeg",),
                              height: 145,
                              width: 170,
                              fit: BoxFit.cover,
                              //child: Center(
                              //child: Text("cat",style: TextStyle(fontSize: 37),),
                              // ),
                            ),
                            SizedBox(height: 6),
                            Text("Bird",style: TextStyle(fontSize: 32),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

//=========================OWL BUTTON==============================

                SizedBox(height: 50,width: 100,),
                Center(
                  child: Material(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(28),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.orangeAccent,
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const owl()),
                        );
                      },
                      child:Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange,width: 4),
                          borderRadius: BorderRadius.circular(28),
                        ),
                        child:Column(
                          mainAxisSize: MainAxisSize.min,
                          children:[
                            Ink.image(image: AssetImage("assets/owl.jpeg",),
                              height: 145,
                              width: 170,
                              fit: BoxFit.cover,
                              //child: Center(
                              //child: Text("cat",style: TextStyle(fontSize: 37),),
                              // ),
                            ),
                            SizedBox(height: 6),
                            Text("Owl",style: TextStyle(fontSize: 32),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

//=========================MONKEY BUTTON==============================

                SizedBox(height: 50,width: 100,),
                Center(
                  child: Material(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(28),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.orangeAccent,
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const monkey()),
                        );
                      },
                      child:Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange,width: 4),
                          borderRadius: BorderRadius.circular(28),
                        ),
                        child:Column(
                          mainAxisSize: MainAxisSize.min,
                          children:[
                            Ink.image(image: AssetImage("assets/monk.jpeg",),
                              height: 145,
                              width: 170,
                              fit: BoxFit.cover,
                              //child: Center(
                              //child: Text("cat",style: TextStyle(fontSize: 37),),
                              // ),
                            ),
                            SizedBox(height: 6),
                            Text("Monkey",style: TextStyle(fontSize: 32),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
        ],
           ),

//=========================TURTLE BUTTON==============================

        SizedBox(height: 100,),
        Row(
          children : <Widget>[

                SizedBox(height: 50,width: 100,),
                Center(
                  child: Material(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(28),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.orangeAccent,
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const turtle()),
                        );
                      },
                      child:Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange,width: 4),
                          borderRadius: BorderRadius.circular(28),
                        ),
                        child:Column(
                          mainAxisSize: MainAxisSize.min,
                          children:[
                            Ink.image(image: AssetImage("assets/tur.jpeg",),
                              height: 145,
                              width: 170,
                              fit: BoxFit.cover,
                              //child: Center(
                              //child: Text("cat",style: TextStyle(fontSize: 37),),
                              // ),
                            ),
                            SizedBox(height: 6),
                            Text("Turtle",style: TextStyle(fontSize: 32),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

//=========================LIZARD BUTTON==============================

                SizedBox(height: 50,width: 100,),
                Center(
                  child: Material(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(28),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.orangeAccent,
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const lizard()),
                        );
                      },
                      child:Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange,width: 4),
                          borderRadius: BorderRadius.circular(28),
                        ),
                        child:Column(
                          mainAxisSize: MainAxisSize.min,
                          children:[
                            Ink.image(image: AssetImage("assets/liz.jpeg",),
                              height: 145,
                              width: 170,
                              fit: BoxFit.cover,
                              //child: Center(
                              //child: Text("cat",style: TextStyle(fontSize: 37),),
                              // ),
                            ),
                            SizedBox(height: 6),
                            Text("Lizard",style: TextStyle(fontSize: 32),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

//=========================FISH BUTTON==============================

                SizedBox(height: 50,width: 100,),
                Center(
                  child: Material(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(28),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.orangeAccent,
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const fish()),
                        );
                      },
                      child:Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange,width: 4),
                          borderRadius: BorderRadius.circular(28),
                        ),
                        child:Column(
                          mainAxisSize: MainAxisSize.min,
                          children:[
                            Ink.image(image: AssetImage("assets/fish.jpeg",),
                              height: 145,
                              width: 170,
                              fit: BoxFit.cover,
                              //child: Center(
                              //child: Text("cat",style: TextStyle(fontSize: 37),),
                              // ),
                            ),
                            SizedBox(height: 6),
                            Text("Fish",style: TextStyle(fontSize: 32),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
        ],
      ),
],
                ),
              ],
      ),
            ),

    );
  }
}
