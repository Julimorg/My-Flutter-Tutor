import 'package:flutter/material.dart';

class WidgetAlignment extends StatelessWidget {
  const WidgetAlignment({super.key});

  Widget _buildRowAndColumn(
      String imagePath, String imagePath2, String imagePath3) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.network(imagePath),
            Image.network(imagePath2),
            Image.network(imagePath3),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.network(imagePath),
            Image.network(imagePath),
            Image.network(imagePath),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.network(imagePath),
            Image.network(imagePath),
            Image.network(imagePath),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(imagePath),
            Image.network(imagePath),
            Image.network(imagePath),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.network(imagePath),
            Image.network(imagePath),
            Image.network(imagePath),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    String imagePath = 'https://picsum.photos/200/300';
    String imagePath2 = 'https://picsum.photos/200/300';
    String imagePath3 = 'https://picsum.photos/200/300';
    return Scaffold(
        appBar: null,
        body: SingleChildScrollView(
          child: Container(
            child: _buildRowAndColumn(imagePath, imagePath2, imagePath3),
          ),
        ));
  }
}
