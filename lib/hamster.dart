import 'package:flutter/material.dart';


class hamster extends StatelessWidget {
  const hamster({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Hamsters", style: TextStyle(fontSize: 26)),

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
//=========================SYRIAN BUTTON==============================
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
                            MaterialPageRoute(builder: (context) => const syrian()),
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
                                Text("Syrian",style: TextStyle(fontSize: 21),),
                              ],
                            ),
                          ),
                        ),
                      ),

//=========================FRENCH BUTTON==============================

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
                              MaterialPageRoute(builder: (context) => const dwarf()),
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
                                Text("Dwarf",style: TextStyle(fontSize: 23),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

//=========================GERMAN BUTTON==============================

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
                              MaterialPageRoute(builder: (context) => const china()),
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
                                Text("Chinese",style: TextStyle(fontSize: 21),),
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

//======================SYRIAN CLASS==========================

class syrian extends StatelessWidget {
  const syrian({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Syrian Hamster", style: TextStyle(fontSize: 26)),

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
                      child: Image.asset("assets/syrian.jpeg",height: 500,width: 500,),
                    ),
                    SizedBox(height: 50,),
                    Text("Calico:\n==========\n \n -Appearance:\n============\n \n The Syrian hamster is a lovely little rodent that can become quite tame, friendly and affectionate.\n Also known as the golden hamster, the Syrian hamster is 5 to 7 inches long, and weighs between 4 and 8 ounces. Native to Syria and Turkey,\n wild Syrian hamsters are a golden brown color with cream or white undersides.\n \n -Personality:\n=============\n \n:Easy to tame and handle and not known to nip, these hamsters have sweet personalities that thrive on lots of attention,\n often becoming very attached to their owner. FRIENDS? Syrian hamsters are solitary animals and must be housed on their own. Female Syrians grow larger than males\n \n -Cons:\n========\n \n Hamsters are active at night (from around 8 pm, but sometimes later)\nHamsters only live for 2-4 years.\nHamsters are not suitable for cuddling.\nHamsters are quite delicate.\nHamsters chew on cables (could mean extra costs)\n \n -Pros:\n========\n \nThe Syrian Hamster is known for its size and is one of the largest among the species preferred as pets.\n These hamsters are extremely docile and are the easiest to domesticate and train. If you are looking for a pet for your child,\n the Syrian Hamster is your best bet."

                      ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

                  ]
              ),
            ]
        ),
      ),
    );
  }
}

//======================DWARF CLASS========================

class dwarf extends StatelessWidget {
  const dwarf({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Dwarf Hamster", style: TextStyle(fontSize: 26)),

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
                      child: Image.asset("assets/dwarf.jpeg",height: 500,width: 500,),
                    ),
                    SizedBox(height: 50,),
                    Text("Dwarf:\n==========\n \n -Appearance:\n============\n \n It is ball-shaped and typically half the size of the Syrian hamster, so is called a dwarf hamster along with all Phodopus species.\n Features of the winter white hamster include a typically thick, dark grey dorsal stripe and furry feet.\n \n -Personality:\n=============\n \nCampbell's dwarf hamsters are generally low-maintenance, quiet pets. During their waking hours, they like to dig,\n tunnel, and explore. They are nocturnal but might be active for short times during the day too. \nMost are friendly and don't mind being handled, especially if you start gently handling them from a young age.\n \n -Cons:\n========\n \n they are nocturnal, so they might not be very active\n while you're awake and they could keep you up at night.\n \n -Pros:\n========\n \nThey don't take up a lot of space, are relatively quiet, and are fun and interesting to watch."

                      ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

                  ]
              ),
            ]
        ),
      ),
    );
  }
}

//======================CHINESE CLASS========================

class china extends StatelessWidget {
  const china({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Chinese Hamster", style: TextStyle(fontSize: 26)),

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
                      child: Image.asset("assets/chinaH.jpeg",height: 500,width: 500,),
                    ),
                    SizedBox(height: 50,),
                    Text("Chinese:\n==========\n \n -Appearance:\n============\n \nThe wild color is brown with a black stripe down the spine, black and grey ticks and a whitish belly.\n This coloration, combined with their lithe build and longer tail, makes them look 'mousy' to some eyes and,\n in fact, they are members of the group called ratlike hamsters \n \n -Personality:\n=============\n \ngood-natured and comfortable being held if you've consistently handled them\n from a young age. But if they're not used to handling, some can be nervous and nippy.\n \n -Cons:\n========\n \nMoreover, because they are very small and quick, they can be difficult to handle.\n It's best to sit on the floor when holding your hamster, as accidentally dropping it from even a few feet high can cause serious injury.\n Chinese hamsters won't bond with people like a dog or cat would \n \n -Pros:\n========\n\n Chinese hamsters are fairly low-maintenance pets that don't take up\n much space or make a lot of noise. They also can be quite fun and interesting to watch"
                        ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

                  ]
              ),
            ]
        ),
      ),
    );
  }
}



