import 'package:flutter/material.dart';


class monkey extends StatelessWidget {
  const monkey({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Monkeys", style: TextStyle(fontSize: 26)),

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

//=========================SQUIRREL BUTTON==============================
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
                            MaterialPageRoute(builder: (context) => const squirrel()),
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
                                Text("Squirrel \n Monkey",style: TextStyle(fontSize: 21),),
                              ],
                            ),
                          ),
                        ),
                      ),

//=========================CAPUCHIN BUTTON==============================

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
                              MaterialPageRoute(builder: (context) => const capu()),
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
                                Text("Capuchin",style: TextStyle(fontSize: 32),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

//=========================TAMARINN BUTTON==============================

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
                              MaterialPageRoute(builder: (context) => const tamarin()),
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
                                Text("Tamarin",style: TextStyle(fontSize: 32),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

//=========================SPIDER BUTTON==============================

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
                                Text("Spider Monkey ",style: TextStyle(fontSize: 19),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

//=========================MACAQUES BUTTON==============================

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
                                Text("Macaques",style: TextStyle(fontSize: 21),),
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

//======================SQUIRREL CLASS==========================

class squirrel extends StatelessWidget {
  const squirrel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Squirrel Monkey", style: TextStyle(fontSize: 26)),

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
                      child: Image.asset("assets/squirrel.jpeg",height: 500,width: 500,),
                    ),
                    SizedBox(height: 50,),
                    Text("Squirrel:\n==========\n \n -Appearance:\n============\n \nSquirrel monkey fur is short and close, coloured olive at the shoulders\n and yellowish orange on its back and extremities. Their throat and the ears are white\n and their mouths are black. The upper part of their head is hairy.\n This black and white face gives them their German name, 'skull monkey \n \n -Personality:\n=============\n \nSquirrel monkeys are very intelligent and have the largest brain mass\n to body mass ratio of any primate. They are sometimes referred to as 'Death's Head' monkeys.\n They are social animals living in troops of up to 500 individuals and are primarily \nfrugivores and insectivores but will also eat small vertebrates.\n \n -Cons:\n========\n \nIt's impossible to recreate an environment close to their natural habitat if kept as a pet.\n They're one of the cleverest monkeys, which means they need a lot of intellectual \nstimulation to prevent distress caused by boredom.\n In the wild they live in 'troops' of up to 500, but usually more like 50. \n \n -Pros:\n========\n \n:Squirrel monkeys are the smallest of the Cebidea family of monkeys.\nWhat they lack in size, they make up for in numbers; because they are small,\n they live and feed in large groups of up to 300 individuals. There's safety in numbers.When predators approach,\n the entire group jumps into action and fights back"
                      ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

                  ]
              ),
            ]
        ),
      ),
    );
  }
}

//======================CAPUCHIN CLASS========================

class capu extends StatelessWidget {
  const capu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Capuchin Moneky", style: TextStyle(fontSize: 26)),

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
                      child: Image.asset("assets/capu.jpeg",height: 500,width: 500,),
                    ),
                    SizedBox(height: 50,),
                    Text("Capuchin:\n==========\n \n -Appearance:\n============\n \nThese monkeys are round-headed and stockily built, with fully haired prehensile tails and opposable thumbs.\n The body is 30–55 cm (12–22 inches) long, with a tail of about the same length.\n Coloration ranges from pale to dark brown or black, with white facial markings in some of the four species \n \n -Personality:\n=============\n \nThese studies suggest that both capuchin species share personality\n dimensions related to competitive prowess (Assertiveness and Dominance), investigatory behavior\n and curiosity (Openness), and emotional instability and vigilance (Neuroticism)\n \n -Cons:\n========\n \n They may be adorable as babies, but as they get older, capuchin monkeys can get bored easily,\n which can lead to increasingly destructive behaviors. They usually end up as incompatible pets,\n rendering them difficult to care for and resulting in rescue or euthanasia\n \n -Pros:\n========\n \nWhite faced capuchins are considered the most intelligent of the new world monkeys."
                      ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

                  ]
              ),
            ]
        ),
      ),
    );
  }
}

//======================TAMARIN CLASS========================

class tamarin extends StatelessWidget {
  const tamarin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Tamarin Monkey", style: TextStyle(fontSize: 26)),

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
                      child: Image.asset("assets/tamarin.jpeg",height: 500,width: 500,),
                    ),
                    SizedBox(height: 50,),
                    Text("Tamarin:\n==========\n \n -Appearance:\n============\n \nRoughly the size of a squirrel, cotton-top tamarins also have white chests and bellies,\n while their backs and tails are covered in long black and brown fur.\n They have claw-like nails, which are critical to jumping from tree to tree in their forest habitat. \n \n -Personality:\n=============\n \nBehaviour. Emperor tamarins are extremely territorial. They protect their territory well\n and react strongly when competitors are in the vicinity. They use high-pitched,\n shrill sounds to warn trespassers what their territory is.\n \n -Pros:\n========\n \nThe golden lion tamarins have special relationships with their keepers"
                      ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

                  ]
              ),
            ]
        ),
      ),
    );
  }
}