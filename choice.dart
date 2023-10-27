import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petts/pet_owner.dart';
import 'package:petts/vet.dart';
class Choice extends StatefulWidget {
  const Choice({super.key});

  @override
  State<Choice> createState() => _ChoiceState();
}

class _ChoiceState extends State<Choice> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Text('Nolfymos',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.orange,
      ),
      body:  Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:CrossAxisAlignment.center,
          children: [
          const Text('Welcome Back!',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight:FontWeight.w600 ,
              fontSize: 20,color: Colors.amber),),
        const Text('Please,choose.',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight:FontWeight.w600 ,
              fontSize: 30,color: Colors.amber),),
        const SizedBox(
          height: 30,
        ),
        CupertinoButton(
          padding: EdgeInsets.zero,
          child : Container(  alignment: Alignment.center,
             height: 40,
             width: 350,
             decoration:  BoxDecoration(
               color: Colors.orange,
               borderRadius: BorderRadius.circular(37),
             ),
             child: const Text('Vet',style: TextStyle(color: Colors.white,
                 fontWeight: FontWeight.w700,fontSize: 25),),
           ),

           onPressed: () {
             Navigator.of(context).push(
               MaterialPageRoute(builder: (y){
                 return const Vet();
               })
             );
           }),

            const SizedBox(
              height: 30,),
            CupertinoButton(
              padding: EdgeInsets.zero,
              child : Container(  alignment: Alignment.center,
                height: 40,
                width: 350,
                decoration:  BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(37),
                ),
                child: const Text('Pet Owner',style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.w700,fontSize: 25),),
              ),

              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return const Owner();
                }));

              },

            ),

       ],
        ),
        )
    );
  }
}



