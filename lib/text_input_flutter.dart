import 'package:flutter/material.dart';

class InputFlutter extends StatefulWidget {
  const InputFlutter({super.key});

  @override
  State<InputFlutter> createState() => _InputFlutter();
}

class _InputFlutter extends State<InputFlutter> {
  // String _name = '';
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  hintText: 'Tulis namamu...',
                  labelText: 'Jenengmu',
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                              content: Text('Hallo mas ${_controller.text}'));
                        });
                  },
                  child: const Text('Submit'))
            ],
          )),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
