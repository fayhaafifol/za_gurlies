import 'package:flutter/material.dart';


class lizard extends StatelessWidget {
  const lizard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Lizards", style: TextStyle(fontSize: 26)),

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
                            MaterialPageRoute(builder: (context) => const barn()),
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
                                Text("Barn Owl",style: TextStyle(fontSize: 21),),
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
                              MaterialPageRoute(builder: (context) => const speck()),
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
                                Text("Speckled Owl",style: TextStyle(fontSize: 23),),
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
                              MaterialPageRoute(builder: (context) => const scops()),
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
                                Text("Mountain Scops \nowl",style: TextStyle(fontSize: 21),),
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
                                Ink.image(image: AssetImage("assets/owl.jpeg",),
                                  height: 145,
                                  width: 170,
                                  fit: BoxFit.cover,
                                  //child: Center(
                                  //child: Text("cat",style: TextStyle(fontSize: 37),),
                                  // ),
                                ),
                                SizedBox(height: 6),
                                Text("Nourthen Sawwwhet",style: TextStyle(fontSize: 19),),
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
                                Ink.image(image: AssetImage("assets/owl.jpeg",),
                                  height: 145,
                                  width: 170,
                                  fit: BoxFit.cover,
                                  //child: Center(
                                  //child: Text("cat",style: TextStyle(fontSize: 37),),
                                  // ),
                                ),
                                SizedBox(height: 6),
                                Text("Eurasian Eagle",style: TextStyle(fontSize: 21),),
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

//======================CHAMELEON CLASS==========================

class barn extends StatelessWidget {
  const barn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Barn Owl", style: TextStyle(fontSize: 26)),

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
                      child: Image.asset("assets/barn.jpeg",height: 500,width: 500,),
                    ),
                    SizedBox(height: 50,),
                    Text("Barn Owl:\n==========\n \n -Appearance:\n==========\n \nBarn Owls are pale overall with dark eyes. They have a mix of buff and gray on the head, back,\n and upperwings, and are white on the face, body, and underwings.\n When seen at night they can appear all white."
                      ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

                  ]
              ),
            ]
        ),
      ),
    );
  }
}

//======================SPECKLED CLASS========================

class speck extends StatelessWidget {
  const speck({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Speckkled Owl", style: TextStyle(fontSize: 26)),

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
                      child: Image.asset("assets/speck.jpeg",height: 500,width: 500,),
                    ),
                    SizedBox(height: 50,),
                    Text("Speckled Owl:\n==========\n \n -Appearance:\n============\n \n The bird has brown upperparts, head and upper breast, while the underparts are buff-white.\n They are named for the white facial markings around the eyes\n. The eyes are yellow and the beak is pale."

                      ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

                  ]
              ),
            ]
        ),
      ),
    );
  }
}

//======================MOUNTAIN CLASS========================

class scops extends StatelessWidget {
  const scops({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Mountain Scops Owl", style: TextStyle(fontSize: 26)),

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
                      child: Image.asset("assets/scops.jpeg",height: 500,width: 500,),
                    ),
                    SizedBox(height: 50,),
                    Text("Mountain Scops Owl:\n==========\n \n -Appearance:\n============\n \n Dark brown above, paler on the underparts and face, with bright yellow eyes.\n Prominent bright white stripe between back and wings is more contrasting than in other owls in its range.\n Brows are frosty white, as in larger Collared Scops-Owl, but ear tufts much shorter in Mountain."
                      ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

                  ]
              ),
            ]
        ),
      ),
    );
  }
}