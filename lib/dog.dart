import 'package:flutter/material.dart';


class Dog extends StatelessWidget {
  const Dog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Dogs", style: TextStyle(fontSize: 26)),

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
//=========================LABRADOR BUTTON==============================
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
                            MaterialPageRoute(builder: (context) => const Labrador()),
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
                                Text("Labrador Retrivers",style: TextStyle(fontSize: 23),),
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
                              MaterialPageRoute(builder: (context) => const French()),
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
                                Text("French bulldog",style: TextStyle(fontSize: 23),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

//=========================CALICO BUTTON==============================

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
                                Ink.image(image: AssetImage("assets/cat.jpeg",),
                                  height: 145,
                                  width: 170,
                                  fit: BoxFit.cover,
                                  //child: Center(
                                  //child: Text("cat",style: TextStyle(fontSize: 37),),
                                  // ),
                                ),
                                SizedBox(height: 6),
                                Text("Calico",style: TextStyle(fontSize: 32),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

//=========================PERSIAN BUTTON==============================

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
                                Ink.image(image: AssetImage("assets/cat.jpeg",),
                                  height: 145,
                                  width: 170,
                                  fit: BoxFit.cover,
                                  //child: Center(
                                  //child: Text("cat",style: TextStyle(fontSize: 37),),
                                  // ),
                                ),
                                SizedBox(height: 6),
                                Text("Persian",style: TextStyle(fontSize: 32),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

//=========================RAGDOLL BUTTON==============================

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
                                Ink.image(image: AssetImage("assets/cat.jpeg",),
                                  height: 145,
                                  width: 170,
                                  fit: BoxFit.cover,
                                  //child: Center(
                                  //child: Text("cat",style: TextStyle(fontSize: 37),),
                                  // ),
                                ),
                                SizedBox(height: 6),
                                Text("Ragdoll",style: TextStyle(fontSize: 32),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

//=========================HIMALAYAN BUTTON==============================

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
                                Ink.image(image: AssetImage("assets/cat.jpeg",),
                                  height: 145,
                                  width: 170,
                                  fit: BoxFit.cover,
                                  //child: Center(
                                  //child: Text("cat",style: TextStyle(fontSize: 37),),
                                  // ),
                                ),
                                SizedBox(height: 6),
                                Text("Himalayan",style: TextStyle(fontSize: 32),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

//=========================BENGAL BUTTON==============================

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
                                Ink.image(image: AssetImage("assets/cat.jpeg",),
                                  height: 145,
                                  width: 170,
                                  fit: BoxFit.cover,
                                  //child: Center(
                                  //child: Text("cat",style: TextStyle(fontSize: 37),),
                                  // ),
                                ),
                                SizedBox(height: 6),
                                Text("Bengal",style: TextStyle(fontSize: 32),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

//=========================SCOTTISH BUTTON==============================

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
                                Ink.image(image: AssetImage("assets/cat.jpeg",),
                                  height: 145,
                                  width: 170,
                                  fit: BoxFit.cover,
                                  //child: Center(
                                  //child: Text("cat",style: TextStyle(fontSize: 37),),
                                  // ),
                                ),
                                SizedBox(height: 6),
                                Text("Scottish Fold",style: TextStyle(fontSize: 27),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

//=========================RUSSIAN BUTTON==============================

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
                                Ink.image(image: AssetImage("assets/cat.jpeg",),
                                  height: 145,
                                  width: 170,
                                  fit: BoxFit.cover,
                                  //child: Center(
                                  //child: Text("cat",style: TextStyle(fontSize: 37),),
                                  // ),
                                ),
                                SizedBox(height: 6),
                                Text("Russian Blue",style: TextStyle(fontSize: 27),),
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

//======================LABRADOR CLASS==========================

class Labrador extends StatelessWidget {
  const Labrador({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Labrador Retrievers", style: TextStyle(fontSize: 26)),

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
            child: Image.asset("assets/siamese.jpeg",height: 500,width: 500,),
          ),
          SizedBox(height: 50,),
          Text(''''Labrador Retrievers:\n==========\n \n 
-Appearance:\n============\n \n Labrador retrievers are easily recognized by their broad head, drop ears and large, expressive eyes. Two trademarks of the Lab are the thick but fairly short double coat, which is very water repellent, and the well known otter tail. The tail is thick and sturdy and comes off the topline almost straight.Personality:Labs are friendly, outgoing, and high-spirited companions who have more than enough affection to go around for a family looking for a medium-to-larg
-Personality:\n=============\n \nThe Siamese cat's personality is friendly, affectionate, outgoing, intelligent and social.The Siamese is loving and trusting with humans, and he thrives with lots of positive human interaction. He's also deeply sensitive and will take any harsh words to heart.
-Cons:\n========\n \n If you prefer a quiet cat breed, then the Siamese may not be right for you.These cats crave constant interaction and human companionship. If left alone for a long time, they tend to develop depression. You should think twice before getting them if you work all day and don't have other pets to give them company. It's for this reason that many people get two Siamese as pets.\n \n 
-Pros:\n========\n \nThey are loyal and affectionate.They are often described as being “dog-like”.They are easy to groom.\n 
\n-Nutrition:\n ==============\n \nSiamese cats love meat-based snacks, like freeze-dried raw chicken treats and shredded boiled poultry. Besides meat, Siamese cats can occasionally nibble on bite-sized cuts of fruits (strawberries, unseeded melons, bananas, etc.) and cooked vegetables.'''''

            ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

        ]
        ),
      ]
      ),
        ),
    );
  }
}

//======================FRNCH CLASS========================

class French extends StatelessWidget {
  const French({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("French bulldog", style: TextStyle(fontSize: 26)),

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
                      child: Image.asset("assets/tabby.jpeg",height: 500,width: 500,),
                    ),
                    SizedBox(height: 50,),
                    Text(''''
French Bulldog:\n==========\n \n 

Apperance:\n============\n \n The French Bulldog resembles a Bulldog in miniature, except for the large, erect 'bat ears' that are the breed's trademark feature. The head is large and square, with heavy wrinkles rolled above the extremely short nose. The body beneath the smooth, brilliant coat is compact and muscular.

Personality:\n============\n \nTemperament: French Bulldogs are known for their affectionate and easygoing nature. They are friendly, social, and often get along well with other pets and children. Exercise Needs: They have relatively low exercise requirements. Short walks and playtime are usually sufficient to keep them happy.

Pros:\n============\n \nPros of owning a French bulldog: Love, adaptability, ease of grooming, and more. There are so many reasons to fall in love with this adorable breed! French bulldogs, or Frenchies for short, were bred to be companions. They are loving, loyal, affectionate dogs who just want to be with their people.

Cons:\n============\n \nFarting — can be reduced with a healthy diet & slow-feed bowl.

Prone to Separation Anxiety or Clinginess.
Health issues.
Expensive.
Stubborn.
Needy and high-maintenance at times.
Heat & cold intolerance.
Shedding.'''

                      ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

                  ]
              ),
            ]
        ),
      ),
    );
  }
}

//======================CALICO CLASS========================

class calico extends StatelessWidget {
  const calico({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Calico", style: TextStyle(fontSize: 26)),

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
                      child: Image.asset("assets/calico.jpeg",height: 500,width: 500,),
                    ),
                    SizedBox(height: 50,),
                    Text("Calico:\n==========\n \n -Appearance:\n============\n \n Calico cats are strikingly patterned cats, wearing bold patches of colors—mostly orange, black, and white.\nThey have a colored tail and one or more colored patches on the head and body. Calicoes' eye colors include copper, blue, green, or odd-eyed.\n \n -Personality:\n=============\n \nSuch cats are incredibly friendly, loyal, smart, docile, endearing, affectionate, playful, and love to spend time with their owners.\n Though they may be difficult to handle as they know exactly what they want, nothing, and no one will force them to do anything without their desire, they make a great companion.\n \n -Cons:\n========\n \n Males are rare and prone to health problems.In addition to,finding a calico locally is hard.\n \n -Pros:\n========\n \nStriking color pattern, Friendly and outgoing"

                      ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

                  ]
              ),
            ]
        ),
      ),
    );
  }
}