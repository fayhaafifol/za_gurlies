import 'package:flutter/material.dart';


class hamster extends StatelessWidget {
  const hamster({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Hamsters", style: TextStyle(fontSize: 26)),

      ),
    );
  }
}