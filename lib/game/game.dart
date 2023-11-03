import 'package:flutter/material.dart';



class Game extends StatelessWidget {
  const Game({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Games",style: TextStyle(fontSize:26)),
      
      ),

      body: Image.asset("assets/game.jpg"),
    );
  }
}