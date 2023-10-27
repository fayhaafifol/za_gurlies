import 'package:flutter/material.dart';


class bird extends StatelessWidget {
  const bird({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Birds", style: TextStyle(fontSize: 26)),

      ),
    );
  }
}