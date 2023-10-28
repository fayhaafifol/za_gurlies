import 'package:flutter/material.dart';
import 'package:test2/cat.dart';



class bird extends StatelessWidget {
  const bird({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Birds", style: TextStyle(fontSize: 26)),

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
//=========================FINCH BUTTON==============================
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
                            MaterialPageRoute(builder: (context) => const finch()),
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
                                Text("Finch",style: TextStyle(fontSize: 32),),
                              ],
                            ),
                          ),
                        ),
                      ),

//=========================PARROTLET BUTTON==============================

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
                              MaterialPageRoute(builder: (context) => const parrot()),
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
                                Text("Parrotlet",style: TextStyle(fontSize: 32),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

//=========================RED MACAW BUTTON==============================

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
                              MaterialPageRoute(builder: (context) => const macaw()),
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
                                Text("Scarlet Macaw",style: TextStyle(fontSize: 25),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

//=========================COCKTAIL BUTTON==============================

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
                                Text("Cocktail",style: TextStyle(fontSize: 32),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

//=========================PARAKKEET BUTTON==============================

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
                                Text("Parakeet",style: TextStyle(fontSize: 32),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

//=========================LOVEBIRD BUTTON==============================

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
                                Text("Lovebird",style: TextStyle(fontSize: 32),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

//=========================CONURE BUTTON==============================

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
                                Text("Conure",style: TextStyle(fontSize: 32),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

//=========================BUDGERIAR BUTTON==============================

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
                                Text("Budgeriar",style: TextStyle(fontSize: 27),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

//=========================LILAC BUTTON==============================

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
                                Text("Lilac \nCrowned \nAmazon",style: TextStyle(fontSize: 20),),
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

//======================FINCH CLASS==========================

class finch extends StatelessWidget {
  const finch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Finch", style: TextStyle(fontSize: 26)),

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
                      child: Image.asset("assets/finch.jpeg",height: 500,width: 500,),
                    ),
                    SizedBox(height: 50,),
                    Text("Finch:\n==========\n \n -Appearance:\n============\n \n Adult males are rosy red around the face and upper breast, with streaky brown back, belly and tail.\n In flight, the red rump is conspicuous. Adult females aren't red; they are plain grayish-brown with thick, blurry streaks and an indistinctly marked face.\n \n -Personality:\n=============\n \nTThey're shy birds who don't like to be touched by humans, so handling should be kept to a minimum to avoid stress. Relatively quiet,\n these birds vocalize via a system of of beeps and chirps and have simple, yet musical, songs.\n \n -Cons:\n========\n \n Health problems: Like all pets, Budgies and Finches are susceptible to health problems and require regular veterinary check-ups.\n Biting: Both birds have a tendency to bite, which can make them difficult to handle, especially for children.\n \n -Pros:\n========\n \n:They are social, friendly, and entertaining. Moreover, you have very low maintenance to take care of them"

                      ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

                  ]
              ),
            ]
        ),
      ),
    );
  }
}

//======================PARROTLET CLASS========================

class parrot extends StatelessWidget {
  const parrot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Parrotlet", style: TextStyle(fontSize: 26)),

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
                      child: Image.asset("assets/parrotlet.jpeg",height: 500,width: 500,),
                    ),
                    SizedBox(height: 50,),
                    Text("Parrotlet:\n==========\n \n -Appearance:\n============\n \n Bright yellow-green bodies. Light peach beaks and feet and dark brown eyes. Mexican parrotlets exhibit sexual dimorphism: males have light turquoise feathers along the leading edges of their wings and on their rumps and primaries, secondaries, and coverts; females are entirely yellow-green and slightly duller."
                      ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

                  ]
              ),
            ]
        ),
      ),
    );
  }
}

//======================MACAW CLASS========================

class macaw extends StatelessWidget {
  const macaw({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Scarlet Macaw", style: TextStyle(fontSize: 26)),

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
                      child: Image.asset("assets/red.jpeg",height: 500,width: 500,),
                    ),
                    SizedBox(height: 50,),
                    Text("Scarlet Macaw:\n==========\n \n -Appearance:\n============\n \n This beautiful macaw has a creamy white, almost featherless face, with bright red plumage covering most of its body, wings and long tail. Brilliant blue and yellow feathers also adorn the lower wings."
                      ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

                  ]
              ),
            ]
        ),
      ),
    );
  }
}