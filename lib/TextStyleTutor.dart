import 'package:flutter/material.dart';

class TextStyleTutor extends StatelessWidget {
  const TextStyleTutor({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "✰ Nếu ai muốn ủng hộ mình, thì Donate cho mình qua thông tin bên dưới nhé691000347499 - NGUYEN DANG TIN - VCBMình xin trân thành cám ơn !!! ",
      textDirection: TextDirection.ltr, // --> Xác định hướng của text
      textAlign: TextAlign.center, // Căng hướng của text
      maxLines: 3, // --> giới hạn dòng text
      // overflow: TextOverflow.clip, // --> Text chỉ hiện trong khung giới han
      // overflow: TextOverflow.ellipsis, // --> Chỉ hiện thị text trong giới hạn, nếu vượt quá thì hiện ...
      // overflow: TextOverflow.fade, // --> làm mờ text
      overflow: TextOverflow.visible, // --> Tràn dòng text
      textScaleFactor: 1.4,
      style: TextStyle(
        color: Colors.pink,
        backgroundColor: Colors.green,
        fontSize: 30,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.italic,
        fontFamily: 'Times New Roman',
        // wordSpacing: 20,
        // letterSpacing: 10
        decoration: TextDecoration.underline,
      ),
    );
  }
}
