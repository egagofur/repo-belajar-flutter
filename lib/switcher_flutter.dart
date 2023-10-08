import 'package:flutter/material.dart';

class SwitchFlutter extends StatefulWidget {
  const SwitchFlutter({super.key});

  @override
  State<SwitchFlutter> createState() => _SwitchFlutter();
}

class _SwitchFlutter extends State<SwitchFlutter> {
  bool lightOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: Switch(
          value: lightOn,
          onChanged: (bool value) {
            setState(() {
              lightOn = value;
            });
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(lightOn ? 'Light on' : 'Light off'),
              duration: const Duration(seconds: 1),
            ));
          }),
    );
  }
}
