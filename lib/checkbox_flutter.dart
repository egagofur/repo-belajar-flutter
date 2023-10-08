import 'package:flutter/material.dart';

class CheckboxFlutter extends StatefulWidget {
  const CheckboxFlutter({super.key});

  @override
  State<CheckboxFlutter> createState() => _CheckboxFlutter();
}

class _CheckboxFlutter extends State<CheckboxFlutter> {
  bool? agree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
      ),
      body: ListTile(
        leading: Checkbox(
          value: agree,
          onChanged: (bool? value) {
            setState(() {
              agree = value;
            });
          },
        ),
        title: const Text('apa aja'),
      ),
    );
  }
}
