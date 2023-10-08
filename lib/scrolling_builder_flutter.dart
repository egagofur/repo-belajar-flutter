import 'package:flutter/material.dart';

class ScrollingViewBuilder extends StatelessWidget {
  final List<int> numberList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  ScrollingViewBuilder({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
        ),
        body: ListView.builder(
            itemCount: numberList.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                decoration: BoxDecoration(
                    color: Colors.amber,
                    border: Border.all(color: Colors.black)),
                child: Center(
                    child: Text(
                  '${numberList[index]}',
                  style: const TextStyle(fontSize: 50),
                )),
              );
            }));
  }
}
