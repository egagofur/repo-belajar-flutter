import 'package:flutter/material.dart';

class RadioFlutter extends StatefulWidget {
  const RadioFlutter({super.key});

  @override
  State<RadioFlutter> createState() => _RadioFlutter();
}

class _RadioFlutter extends State<RadioFlutter> {
  String? language = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Radio(
                value: 'Dart',
                groupValue: language,
                onChanged: (String? value) {
                  setState(() {
                    language = value;
                    showSnackbar();
                  });
                }),
            title: const Text('Dart'),
          ),
          ListTile(
            leading: Radio(
                value: 'Javascript',
                groupValue: language,
                onChanged: (String? value) {
                  setState(() {
                    language = value;
                    showSnackbar();
                  });
                }),
            title: const Text('Javascript'),
          ),
          ListTile(
            leading: Radio(
                value: 'Java',
                groupValue: language,
                onChanged: (String? value) {
                  setState(() {
                    language = value;
                    showSnackbar();
                  });
                }),
            title: const Text('Java'),
          )
        ],
      ),
    );
  }

  void showSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('$language select'),
      duration: const Duration(seconds: 1),
    ));
  }
}
