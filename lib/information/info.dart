import 'package:flutter/material.dart';
import 'package:test/information/cat.dart';
import 'package:test/information/dog.dart';
import 'package:test/information/bird.dart';
import 'package:test/information/hamster.dart';
import 'package:test/information/owl.dart';
import 'package:test/information/fish.dart';
import 'package:test/information/turtle.dart';
import 'package:test/information/monkey.dart';
import 'package:test/information/lizard.dart';


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
      const SizedBox(height: 100,width: 100,),

        Row(
            children : <Widget>[
       const SizedBox(height: 100,width: 100,),
        Center(
        child: Material(
          color: Colors.orange,
        borderRadius: BorderRadius.circular(28),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: InkWell(
          splashColor: Colors.orangeAccent,
          onTap: (){ Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Cat()),
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
            Ink.image(image:const AssetImage("assets/cat.jpeg",),
            height: 145,
            width: 170,
            fit: BoxFit.cover,
            //child: Center(
            //child: Text("cat",style: TextStyle(fontSize: 37),),
           // ),
          ),
              const SizedBox(height: 6),
              const Text("Cat",style: TextStyle(fontSize: 32),),
            ],
        ),
          ),
        ),
        ),

//=========================DOG BUTTON==============================

      ),


                const SizedBox(height: 50,width: 100,),
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
                            Ink.image(image:const AssetImage("assets/dog.jpeg",),
                              height: 145,
                              width: 170,
                              fit: BoxFit.cover,
                              //child: Center(
                              //child: Text("cat",style: TextStyle(fontSize: 37),),
                              // ),
                            ),
                            const SizedBox(height: 6),
                            const Text("Dog",style: TextStyle(fontSize: 32),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

 //=========================HAMSTER BUTTON==============================

               const SizedBox(height: 50,width: 100,),
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
                          MaterialPageRoute(builder: (context) => const Hamster()),
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
                            Ink.image(image: const AssetImage("assets/hamster.jpeg",),
                              height: 145,
                              width: 170,
                              fit: BoxFit.cover,
                              //child: Center(
                              //child: Text("cat",style: TextStyle(fontSize: 37),),
                              // ),
                            ),
                            const SizedBox(height: 6),
                            const Text("Hamster",style: TextStyle(fontSize: 32),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
        ],
                ),

//=========================BIRD BUTTON==============================

          const SizedBox(height: 100,),
           Row(
             children : <Widget>[
                const SizedBox(height: 50,width: 100,),
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
                          MaterialPageRoute(builder: (context) => const Bird()),
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
                            Ink.image(image:const AssetImage("assets/bird.jpg",),
                              height: 145,
                              width: 170,
                              fit: BoxFit.cover,
                              //child: Center(
                              //child: Text("cat",style: TextStyle(fontSize: 37),),
                              // ),
                            ),
                           const  SizedBox(height: 6),
                            const Text("Bird",style: TextStyle(fontSize: 32),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

//=========================OWL BUTTON==============================

                const SizedBox(height: 50,width: 100,),
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
                            MaterialPageRoute(builder: (context) => const Owl()),
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
                            Ink.image(image:const AssetImage("assets/owl.jpg",),
                              height: 145,
                              width: 170,
                              fit: BoxFit.cover,
                              //child: Center(
                              //child: Text("cat",style: TextStyle(fontSize: 37),),
                              // ),
                            ),
                           const SizedBox(height: 6),
                            const Text("Owl",style: TextStyle(fontSize: 32),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

//=========================MONKEY BUTTON==============================

               const SizedBox(height: 50,width: 100,),
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
                            MaterialPageRoute(builder: (context) => const Monkey()),
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
                            Ink.image(image:const AssetImage("assets/monkey.jpg",),
                              height: 145,
                              width: 170,
                              fit: BoxFit.cover,
                              //child: Center(
                              //child: Text("cat",style: TextStyle(fontSize: 37),),
                              // ),
                            ),
                            const SizedBox(height: 6),
                            const Text("Monkey",style: TextStyle(fontSize: 32),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
        ],
           ),

//=========================TURTLE BUTTON==============================

        const SizedBox(height: 100,),
        Row(
          children : <Widget>[

                const SizedBox(height: 50,width: 100,),
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
                            MaterialPageRoute(builder: (context) => const Turtle()),
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
                            Ink.image(image:const AssetImage("assets/turtle.jpg",),
                              height: 145,
                              width: 170,
                              fit: BoxFit.cover,
                              //child: Center(
                              //child: Text("cat",style: TextStyle(fontSize: 37),),
                              // ),
                            ),
                            const SizedBox(height: 6),
                            const Text("Turtle",style: TextStyle(fontSize: 32),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

//=========================LIZARD BUTTON==============================

                const SizedBox(height: 50,width: 100,),
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
                            MaterialPageRoute(builder: (context) => const Lizard()),
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
                            Ink.image(image:const AssetImage("assets/lizerd.jpg",),
                              height: 145,
                              width: 170,
                              fit: BoxFit.cover,
                              //child: Center(
                              //child: Text("cat",style: TextStyle(fontSize: 37),),
                              // ),
                            ),
                            const SizedBox(height: 6),
                            const Text("Lizard",style: TextStyle(fontSize: 32),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

//=========================FISH BUTTON==============================

                const SizedBox(height: 50,width: 100,),
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
                            Ink.image(image:const AssetImage("assets/fish.jpg",),
                              height: 145,
                              width: 170,
                              fit: BoxFit.cover,
                              //child: Center(
                              //child: Text("cat",style: TextStyle(fontSize: 37),),
                              // ),
                            ),
                            const SizedBox(height: 6),
                            const Text("Fish",style: TextStyle(fontSize: 32),),
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