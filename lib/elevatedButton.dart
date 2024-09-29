import 'package:flutter/material.dart';

class ElevatedButtonClass extends StatelessWidget {
  const ElevatedButtonClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: ElevatedButton.icon(
        onPressed: () {
          print("Click this button");
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            minimumSize: const Size(240, 80),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            elevation: 130,
            shadowColor: Colors.black.withOpacity(1),
            side: const BorderSide(width: 1, color: Colors.black)),
        icon: const Icon(Icons.add_ic_call_outlined, size: 20),
        label: const Text("OutlineButton",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            )),
      ),
    );
  }
}
