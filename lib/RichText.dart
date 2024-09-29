import 'package:flutter/material.dart';

class RichTextClass extends StatelessWidget {
  const RichTextClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: RichText(
            text: const TextSpan(children: <TextSpan>[
      TextSpan(text: "Hello"),
      TextSpan(
          text: "World",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87)),
      TextSpan(
        text: "Tran",
        style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 20),
      )
    ])));
  }
}
