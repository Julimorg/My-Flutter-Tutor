import 'package:flutter/material.dart';

class Designbutton extends StatefulWidget {
  const Designbutton({super.key});

  @override
  State<Designbutton> createState() => _DesignbuttonState();
}

class _DesignbuttonState extends State<Designbutton> {
  bool _lightIsOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        height: 200,
        width: 200,
        color: _lightIsOn ? Colors.amber[50] : Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                setState(() {
                  _lightIsOn = !_lightIsOn;
                });
              },
              child: Container(
                // color: Colors.yellow,
                child: Column(children: [
                  Icon(
                    Icons.lightbulb_outline,
                    color: _lightIsOn ? Colors.yellow.shade600 : Colors.black,
                    size: 60,
                  ),
                  Text(_lightIsOn ? "turn off" : "turn on")
                ]),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
