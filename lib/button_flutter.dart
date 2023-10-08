import 'package:flutter/material.dart';

class ButtonFlutter extends StatefulWidget {
  const ButtonFlutter({super.key});

  @override
  State<ButtonFlutter> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<ButtonFlutter> {
  String? language;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Container(
        child: DropdownButton<String>(
          items: const [
            DropdownMenuItem(value: 'Dart', child: Text('Dart')),
            DropdownMenuItem(value: 'JS', child: Text('JS')),
            DropdownMenuItem(value: 'Ts', child: Text('Ts')),
            DropdownMenuItem(value: 'Kotlin', child: Text('Kotlin')),
            DropdownMenuItem(value: 'Java', child: Text('Java'))
          ],
          value: language,
          hint: const Text('Select language'),
          onChanged: (String? value) {
            setState(() {
              language = value;
            });
          },
        ),
      ),
    );
  }
}
