import 'package:flutter/material.dart';

class GambarFlutter extends StatelessWidget {
  const GambarFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: const Center(
          child: Text(
        'Ega',
        style: TextStyle(fontSize: 33),
      )),
    );
  }
}
