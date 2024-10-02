import 'package:flutter/material.dart';

class ExpandedClass extends StatelessWidget {
  const ExpandedClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      // Expended sẽ chia các element của nó với tỉ lệ bằng nhau
      // Expanded 1
      Expanded(
          // Flex chia tỉ lệ cho Expanded
          // flex: 1,
          child: Container(
        color: Colors.green,
        height: 150,
      )),
      // Expended 2
      Expanded(
          // flex: 2,
          child: Container(
        color: Colors.blue,
        height: 150,
      )),
      Expanded(
          // flex: 1,
          child: Container(
        color: Colors.orange,
        height: 150,
      ))
    ]));
  }
}
