import 'package:flutter/material.dart';

class OutlineButtonClass extends StatelessWidget {
  const OutlineButtonClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: OutlinedButton(
        onPressed: () {
          print("Click this outlineButton!");
        },
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.amber,
          foregroundColor: Colors.green,
          minimumSize: const Size(300, 50),
          padding: const EdgeInsets.all(15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 10,
          shadowColor: Colors.blue.withOpacity(0.5),
        ),
        child: const Text("Click this outline",
            style: TextStyle(
              fontSize: 20,
            )),
      ),
    );
  }
}
