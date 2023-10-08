import 'package:flutter/material.dart';
import 'package:wisatabandung/navigator_flutter.dart';

class SecoundScreen extends StatelessWidget {
  final String message;
  const SecoundScreen(this.message, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blueAccent),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(message),
          OutlinedButton(
            child: const Text('Kembali'),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      )),
    );
  }
}
