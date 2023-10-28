import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_core/firebase_core.dart';


void main () async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(

      apiKey: "AIzaSyDMBH9PXHX5mdg-eOa77Are10Eq-XfbJTs",
      appId: "1:877282308511:android:4bd35d981bc7feb95bcdaa",
      messagingSenderId: "877282308511",
      projectId: "pet-project-de9a5",
      //storageBucket: "pet-project.appspot.com/images",


    ),
  );
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override

  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Nolly " ,
      theme: ThemeData(primarySwatch: Colors.orange),
      home: homePage(),
    );

  }

}
// ---------------- CLASS HOME PAGE -----------------


class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
        child: ElevatedButton(
          onPressed: (){
            FirebaseAuth.instance.createUserWithEmailAndPassword(
                email: "hi@mail.com",
                password: "123456",
            );
          },
              child: const Text("hi"),
        ),
        ),
      ),
    );
  }
}

