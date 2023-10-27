import 'package:flutter/material.dart';


class dog extends StatelessWidget {
  const dog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Dogs", style: TextStyle(fontSize: 26)),

      ),
    );
  }
}