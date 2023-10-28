import 'package:flutter/material.dart';


class turtle extends StatelessWidget {
  const turtle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Turtles", style: TextStyle(fontSize: 26)),

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
//=========================BARN BUTTON==============================
                SizedBox(height: 100,),

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
                            MaterialPageRoute(builder: (context) => const paint()),
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
                                Text("Painted Turtle",style: TextStyle(fontSize: 21),),
                              ],
                            ),
                          ),
                        ),
                      ),

//=========================SPECKLED BUTTON==============================

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
                              MaterialPageRoute(builder: (context) => const neck()),
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
                                Text("African Sideneck",style: TextStyle(fontSize: 23),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

//=========================SCOPS BUTTON==============================

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
                              MaterialPageRoute(builder: (context) => const tortoise()),
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
                                Text("Russian Tortoise",style: TextStyle(fontSize: 21),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

//=========================SAWWWHET BUTTON==============================

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
                                Text("Eastern Box\n Turtle",style: TextStyle(fontSize: 19),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

//=========================EAGLE BUTTON==============================

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
                                Text("Spotted Turtle",style: TextStyle(fontSize: 21),),
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

//======================PAINTED CLASS==========================

class paint extends StatelessWidget {
  const paint({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Painted Turtle", style: TextStyle(fontSize: 26)),

      ),
      body: Container(
        padding: const EdgeInsets.all(100),
        child: ListView(
            children: [
              Column(
                  mainAxisAlignment:MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children:[

                    Container(
                      height: 500,
                      width: 500,
                      decoration: BoxDecoration(

                        border: Border.all(color:Colors.yellow,width: 6,),

                      ),
                      child: Image.asset("assets/paint.jpeg",height: 500,width: 500,),
                    ),
                    SizedBox(height: 50,),
                    Text("Painted Turtles:\n==========\n \n -Appearance:\n==========\n \nThe medium-sized painted turtle can be distinguished by its dark shell,\n which has olive lines running across the carapace (upper shell), dividing the large scutes (scales).\n The margin of both the carapace and plastron (bottom shell) have black and red markings.\n The head, neck, and limbs have yellow stripes"
                      ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

                  ]
              ),
            ]
        ),
      ),
    );
  }
}

//======================SIDENECK CLASS========================

class neck extends StatelessWidget {
  const neck({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("African Sideneck Turtle", style: TextStyle(fontSize: 26)),

      ),
      body: Container(
        padding: const EdgeInsets.all(100),
        child: ListView(
            children: [
              Column(
                  mainAxisAlignment:MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children:[

                    Container(
                      height: 500,
                      width: 500,
                      decoration: BoxDecoration(

                        border: Border.all(color:Colors.yellow,width: 6,),

                      ),
                      child: Image.asset("assets/neck.jpeg",height: 500,width: 500,),
                    ),
                    SizedBox(height: 50,),
                    Text("African Sideneck Turtle:\n==========\n \n -Appearance:\n============\n \n African sidenecks are typically dark colored, and their underbellies (called plastrons)\n are a grayish black color with a wide, poorly defined yellow area. They have olive-to-brown heads with black markings on top,\n and two barbels (beard-like sensory organs) that protrude from the lower jaw"
                      ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

                  ]
              ),
            ]
        ),
      ),
    );
  }
}

//======================tortoise CLASS========================

class tortoise extends StatelessWidget {
  const tortoise({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Russian Tortoise", style: TextStyle(fontSize: 26)),

      ),
      body: Container(
        padding: const EdgeInsets.all(100),
        child: ListView(
            children: [
              Column(
                  mainAxisAlignment:MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children:[

                    Container(
                      height: 500,
                      width: 500,
                      decoration: BoxDecoration(

                        border: Border.all(color:Colors.yellow,width: 6,),

                      ),
                      child: Image.asset("assets/tortois.jpeg",height: 500,width: 500,),
                    ),
                    SizedBox(height: 50,),
                    Text("Russian Tortoise:\n==========\n \n -Appearance:\n============\n \nTheir tail tip is hard and bony and longer in males, and their skin is tan to yellow colored.\n One unique feature that makes Russian Tortoises stand out from other tortoises is the presence of four claws on each foot – hence,\n their other known name, the “four-toed tortoise."
                      ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

                  ]
              ),
            ]
        ),
      ),
    );
  }
}