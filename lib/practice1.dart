import 'package:flutter/material.dart';

class Practice1 extends StatelessWidget {
  const Practice1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            // Row 1
            const Row(children: [
              SizedBox(
                  width: 80,
                  child: Text("Username: ",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ))),
              Text(" Nguyen Van A",
                  style: TextStyle(fontSize: 14, color: Colors.black))
            ]),
            const SizedBox(height: 10),
            //Row 2
            const Row(children: [
              SizedBox(
                  width: 80,
                  child: Text("Email: ",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ))),
              Text("@gmail.com",
                  style: TextStyle(fontSize: 14, color: Colors.black))
            ]),
            const SizedBox(height: 10),
            // Row 3
            const Row(children: [
              SizedBox(
                  width: 80,
                  child: Text("Address: ",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ))),
              Text(" Viet Nam ",
                  style: TextStyle(fontSize: 14, color: Colors.black))
            ]),
            const SizedBox(height: 10),
            Row(children: [
              Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        print("Press 1");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text("Cancel! ",
                          style: TextStyle(
                            fontSize: 14,
                          )))),
              const SizedBox(width: 10),
              Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        print("Press 2");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text("Submit! ",
                          style: TextStyle(
                            fontSize: 14,
                          ))))
            ]),
          ],
        ));
  }
}
