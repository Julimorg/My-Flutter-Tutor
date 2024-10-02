import 'package:flutter/material.dart';

class SizeBoxClass extends StatelessWidget {
  const SizeBoxClass({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 100,
        height: 50,
        child: ElevatedButton(
            onPressed: null,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
            ),
            child: const Text("TranKienPhong",
                style: TextStyle(
                  fontSize: 20,
                ))));
  }
}
