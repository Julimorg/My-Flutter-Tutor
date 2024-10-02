import 'package:flutter/material.dart';

class ColumnClassTutor extends StatelessWidget {
  const ColumnClassTutor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Column(mainAxisSize: MainAxisSize.max, children: [
        // Button 1
        ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              foregroundColor: Colors.pink,
              padding: const EdgeInsets.all(20),
            ),
            child: const Text("Column Button 1!",
                style: TextStyle(
                  fontSize: 15,
                ))),
        // Button 1
        ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              foregroundColor: Colors.pink,
              padding: const EdgeInsets.all(20),
            ),
            child: const Text("Column Button 2!",
                style: TextStyle(
                  fontSize: 15,
                ))),
        // Button 1
        ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              foregroundColor: Colors.pink,
              padding: const EdgeInsets.all(20),
            ),
            child: const Text("Column Button 3!",
                style: TextStyle(
                  fontSize: 15,
                ))),
      ]),
    );
  }
}
