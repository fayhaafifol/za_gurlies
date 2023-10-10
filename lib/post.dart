import 'package:flutter/material.dart';

void main(){

  runApp(const MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override

  Widget build(BuildContext context){
    return MaterialApp(
      title: "Nolfymos " ,
      theme: ThemeData(primarySwatch: Colors.orange),
      home: post(),
    );

  }

}

class post extends StatelessWidget {
  const post({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("Post"),
          onPressed: (){},
        ),
      ),
    );
  }
}