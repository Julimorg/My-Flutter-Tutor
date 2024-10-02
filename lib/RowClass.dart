import 'package:flutter/material.dart';

class RowClass extends StatelessWidget {
  const RowClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      child: Row(
          // Set min chiều rộng của Row sẽ wrap bao quanh content của nó
          // mainAxisSize: MainAxisSize.min,
          // Set max chiều rộng của Row sẽ chiếm toàn bộ phần screen của màn hình
          mainAxisSize: MainAxisSize.max,
          //Set vị trí cho content
          // Start - trái sang phải
          // End - phải sang trái
          // Center - giữa màn hình
          // SpaceAround , SpaceBetween, SpaceEvenly sẽ giống như bên Justify của css HTML
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // Căng theo chiều dọc
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // ElevatedButton 1
            ElevatedButton(
                onPressed: () {
                  print("Button1 Clicked!");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                ),
                child: const Text("Button 1",
                    style: TextStyle(
                      fontSize: 15,
                    ))),
            // ElevatedButton 2
            Container(
              height: 100,
              child: ElevatedButton(
                  onPressed: () {
                    print("Button 2 Clicked!");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text(
                    "Button 2",
                    style: TextStyle(fontSize: 15),
                  )),
            ),
            // ElevatedButton 3
            ElevatedButton(
                onPressed: () {
                  print("Button 3 Clicked!");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                child: const Text(
                  "Button 2",
                  style: TextStyle(fontSize: 15),
                )),
          ]),
    );
  }
}
