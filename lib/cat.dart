import 'package:flutter/material.dart';


class cat extends StatelessWidget {
  const cat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Cats", style: TextStyle(fontSize: 26)),

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
//=========================SIAMESE BUTTON==============================
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
                            MaterialPageRoute(builder: (context) => const siamese()),
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
                                Text("Siamese",style: TextStyle(fontSize: 32),),
                              ],
                            ),
                          ),
                        ),
                      ),

//=========================TABBY BUTTON==============================

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
                              MaterialPageRoute(builder: (context) => const tabby()),
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
                                Text("Tabby",style: TextStyle(fontSize: 32),),
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
                              MaterialPageRoute(builder: (context) => const calico()),
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

//======================SIAMESE CLASS==========================

class siamese extends StatelessWidget {
  const siamese({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Siamese", style: TextStyle(fontSize: 26)),

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
          Text("Siamese:\n==========\n \n -Appearance:\n============\n \n A light-coloured body with a darker face, paws, ears and tail. Its fur is short, soft, and silky.\n The most common colours are seal, blue, chocolate and lilac, Their eyes are large, almond-shaped and blue.\n They have a long, muscular body, a long neck, and long, lean legs with small, oval-shaped feet and a long, thin, whip-like tail.\n \n -Personality:\n=============\n \nThe Siamese cat's personality is friendly, affectionate, outgoing, intelligent and social.The Siamese is loving and trusting with humans, and he thrives with lots of positive human interaction. He's also deeply sensitive and will take any harsh words to heart.\n \n -Cons:\n========\n \n If you prefer a quiet cat breed, then the Siamese may not be right for you.These cats crave constant interaction and human companionship. If left alone for a long time, they tend to develop depression. You should think twice before getting them if you work all day and don't have other pets to give them company. It's for this reason that many people get two Siamese as pets.\n \n -Pros:\n========\n \nThey are loyal and affectionate.They are often described as being “dog-like”.They are easy to groom.\n \n-Nutrition:\n ==============\n \nSiamese cats love meat-based snacks, like freeze-dried raw chicken treats and shredded boiled poultry. Besides meat, Siamese cats can occasionally nibble on bite-sized cuts of fruits (strawberries, unseeded melons, bananas, etc.) and cooked vegetables."

            ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

        ]
        ),
      ]
      ),
        ),
    );
  }
}

//======================TABBY CLASS========================

class tabby extends StatelessWidget {
  const tabby({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Tabby", style: TextStyle(fontSize: 26)),

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
                    Text("Tabby:\n==========\n \n -Appearance:\n============\n \n often an M-shaped marking on the forehead, dark “eyeliner” around the eyes, pigmented lips and paws,thin pencil lines on the face,\n paler chin and belly than the rest of the body and banding on the legs and tail\n \n -Personality:\n=============\n \nYour Tabby Cat is cute, cuddly, friendly, Intelligent, vocal and affectionate. Tabby cats are often described as social animals.\n \n -Cons:\n========\n \n Care requirements may be more extensive in some types of tabby. Health concerns also vary among different breeds.Personality may vary among pure breeds\n \n -Pros:\n========\n \nThey are generally friendly, outgoing, easy to find due to the commonness of the color pattern.In addition to the beuatiful and wild-looking cat coloration.\n \n-Nutrition:\n ============== \n \n:One of the most popular foods that tabby cats enjoy is fish.In addition,another popular food for tabby cats is chicken.Most tabby cats also enjoy some type of dairy product, such as milk or cheese. - forbidden food that they shouldn't eat include chocolate, caffeine, and alcohol."

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
