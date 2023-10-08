import 'package:flutter/material.dart';
import 'package:wisatabandung/secound_screen.dart';

class NavigatorFlutter extends StatelessWidget {
  const NavigatorFlutter({super.key});

  final String message = 'Hello from First Screen!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blueAccent),
      body: Center(
          child: ElevatedButton(
        child: const Text('Pindah halaman'),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SecoundScreen(message)));
        },
      )),
    );
  }
}
