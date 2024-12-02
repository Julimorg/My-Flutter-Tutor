import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Buoi5/designButton.dart';

class Buildgrid extends StatelessWidget {
  const Buildgrid({super.key});

  Widget _buildGrid() => GridView.count(
      crossAxisCount: 4,
      padding: const EdgeInsets.all(4),
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: _buildGridTileList(10));

  Widget _buildGrid2() => GridView.extent(
      maxCrossAxisExtent: 150,
      padding: const EdgeInsets.all(4),
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: _buildGridTileList(10));

  List<Container> _buildGridTileList(int count) => List.generate(
      count,
      (i) => Container(
            child: Icon(Icons.home,
                size: 20,
                color: Colors
                    .primaries[Random().nextInt(Colors.primaries.length)]),
          ));

  List<Container> _buildGridTileList2(int count) => List.generate(
      count,
      (i) => Container(
            child: Icon(Icons.home,
                size: 20,
                color: Colors
                    .primaries[Random().nextInt(Colors.primaries.length)]),
          ));

  //** List view */
  Widget _buildList() {
    return ListView(
      children: [
        _tile("list 1", " 319 dqjwn", Icons.theaters),
        _tile("list 1", " 319 dqjwn", Icons.theaters),
        _tile("list 1", " 319 dqjwn", Icons.theaters),
        _tile("list 1", " 319 dqjwn", Icons.theaters),
        _tile("list 1", " 319 dqjwn", Icons.theaters),
        _tile("list 1", " 319 dqjwn", Icons.theaters),
        _tile("list 1", " 319 dqjwn", Icons.theaters),
        _tile("list 1", " 319 dqjwn", Icons.theaters),
        _tile("list 1", " 319 dqjwn", Icons.theaters),
        _tile("list 1", " 319 dqjwn", Icons.theaters),
        _tile("list 1", " 319 dqjwn", Icons.theaters),
        _tile("list 1", " 319 dqjwn", Icons.theaters),
        _tile("list 1", " 319 dqjwn", Icons.theaters),
        _tile("list 1", " 319 dqjwn", Icons.theaters),
        _tile("list 1", " 319 dqjwn", Icons.theaters),
        _tile("list 1", " 319 dqjwn", Icons.theaters),
      ],
    );
  }

  ListTile _tile(String title, String subtitle, IconData icon) {
    return ListTile(
        title: Text(title,
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20)),
        subtitle: Text(subtitle),
        leading: Icon(icon, color: Colors.blue[500]));
  }
//** Desgin Button */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Center(
        child: Column(
          children: [
            Container(height: 100, width: 100, child: _buildGrid()),
            Container(
              color: Colors.green,
              height: 5,
              width: 1000,
            ),
            Container(height: 100, width: 500, child: _buildGrid2()),
            Container(
              color: Colors.green,
              height: 5,
              width: 1000,
            ),
            SingleChildScrollView(
              child: Container(
                  margin: const EdgeInsets.only(top: 10),
                  // color: Colors.cyan,
                  height: 300,
                  width: 500,
                  child: _buildList()),
            ),
            Container(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Designbutton()),
                  );
                },
                child: const Text('Click here!'),
              ),
            )
          ],
        ),
      )),
    );
  }
}
