import 'package:flutter/material.dart';

// text
// color
// click
// size
// padding
// margin
// shape
// shadow
// border
// icon
// disable
class TextButtonClass extends StatelessWidget {
  const TextButtonClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(50),
      child: TextButton.icon(
        // sử lý event click
        onPressed: () {
          print("Click Text Button");
        },
        // Style cho Button
        style: TextButton.styleFrom(
          // màu text button
          foregroundColor: Colors.pink,
          // màu background button
          backgroundColor: Colors.green,
          // width và height của button
          minimumSize: const Size(120, 50),
          padding: const EdgeInsets.all(10),
          // Border
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          // Độ rộng của Opacity
          elevation: 28,
          // Set Opacity cho button
          shadowColor: Colors.blue.withOpacity(1),
          // Set Style cho border cua button
          side: const BorderSide(width: 2, color: Colors.orange),
        ),
        // Sett Icon va style icon cho button
        icon: const Icon(Icons.add, size: 30),
        // Style text trong button
        label: const Text("Button",
            style: TextStyle(
              fontSize: 28,
            )),
      ),
    );
  }
}
