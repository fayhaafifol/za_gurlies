import 'package:flutter/material.dart';


class turtle extends StatelessWidget {
  const turtle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Turtles", style: TextStyle(fontSize: 26)),

      ),
    );
  }
}