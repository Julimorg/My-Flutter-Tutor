import 'package:flutter/material.dart';

class PaddingMarginClass extends StatelessWidget {
  const PaddingMarginClass({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
        color: Color.fromRGBO(233, 30, 99, 1),
        margin: EdgeInsets.all(20.0), //--> Tạo margin card xung quanh

        // Wrap with padding
        child: const Padding(
          padding: //EdgeInsets.only(left: 0,) --> chỉnh mỗi 1 hướng
              //EdgeInsets.symmetric(vertical: 100, horizontal:100) --> chỉnh chiều ngang và chiều dọc của padding
              //EdgeInsets.all(100) --> chỉnh padding theo 4 hướng của padding
              EdgeInsets.fromLTRB(
                  10, 10, 10, 10), //--> tùy chỉnh padding theoc các hướng
          child: Text(
            'Tran Kien Phong',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ));
  }
}
