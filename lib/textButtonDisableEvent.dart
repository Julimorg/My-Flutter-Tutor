import 'package:flutter/material.dart';

class TextButtonDisableEVent extends StatelessWidget {
  const TextButtonDisableEVent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: null,
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
          disabledBackgroundColor: Colors.orange.withOpacity(1),
        ),
        child: const Text(" You have been disabled the button!",
            style: TextStyle(
              fontSize: 20,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            )),
      ),
    );
  }
}
