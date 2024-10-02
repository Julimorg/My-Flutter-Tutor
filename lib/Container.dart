import 'package:flutter/material.dart';

class ContainerClass extends StatelessWidget {
  const ContainerClass({super.key});

  @override
  Widget build(BuildContext context) {
    // Container là khung chứa các elements
    return Container(
      // color: Colors.green,
      margin: const EdgeInsets.only(top: 5),
      padding: const EdgeInsets.all(10),
      // Set kich thuoc cho container
      width: 100,
      height: 100,

      // Set vi tri cho container so với màn hình
      alignment: Alignment.center,
      decoration: BoxDecoration(
        // Nếu set màu cho container thì 1 là bỏ 1 color trong container rồi set màu cho Boxdecorations
        // 2 là đã set màu rồi thì ko cần phải là set màu cho Boxdecorations nữa
        color: Colors.blue,
        shape: BoxShape.rectangle,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border: Border.all(width: 2, color: Colors.red),
      ),
      // Set dinh dang cho Container
      transform: Matrix4.rotationZ(0.2),
      // Nếu container ko có child thì size của nó sẽ là cả screen
      // còn có child thì nó sẽ chỉ bộc trong child của nó thôi
      child: const Text("Tran Kien Phong",
          style: TextStyle(
            fontSize: 12,
            color: Colors.black,
          )),
    );
  }
}
