// 1. import thư viện
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ColumnClass.dart';
import 'package:flutter_application_1/Container.dart';
import 'package:flutter_application_1/ExpandedClass.dart';
import 'package:flutter_application_1/RichText.dart';
import 'package:flutter_application_1/RowClass.dart';
import 'package:flutter_application_1/SizedBox.dart';
import 'package:flutter_application_1/TextStyleTutor.dart';
import 'package:flutter_application_1/elevatedButton.dart';
import 'package:flutter_application_1/outlineButton.dart';
import 'package:flutter_application_1/paddingMargin.dart';
import 'package:flutter_application_1/practice1.dart';
import 'package:flutter_application_1/textButton.dart';
import 'package:flutter_application_1/textButtonDisableEvent.dart';

// 2. Hàm Main
void main() {
  // 3. Khởi động app
  runApp(MaterialApp(
    // Sử dụng thành phần xây dựng giao diện người dùng
    // SafeArea được dùng để cố định các componet hay element trong khung hình điện thoại
    // Scaffold là được dùng cố định trong khung màn hình
    // Center giúp element cố định chính giữa khung hình
    home: SafeArea(
      child: Scaffold(body: MyWidget_Stateless()),
    ),
    // Xóa hiện thị của debug trên khung hình
    debugShowCheckedModeBanner: false,
  )); // MaterialApp
}

// Tự custom class kế thừa StatelessWidget
class MyWidget_Stateless extends StatelessWidget {
  // Hàm build
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          // Hãy bỏ comment và chạy từng cái sẽ xem trực quang hơn

          // TextStyleTutor(),
          // RichTextClass(),
          // PaddingMarginClass(),
          // TextButtonClass(),
          // TextButtonDisableEVent(),
          // ElevatedButtonClass(),
          // OutlineButtonClass(),
          // ContainerClass(),
          // SizeBoxClass(),
          // RowClass(),
          // ColumnClassTutor(),
          // ExpandedClass(),
          Practice1(),
        ],
      )),
    );
  }
}

// Tự custom class kế thừa StatefullWidget
// class MyWiget_Statefull extends StatefulWidget {
//   final bool loading;

//   // Constructor
//   MyWiget_Statefull(this.loading);

//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     return MyWiget_Statefull2();
//   }
// }

// class MyWiget_Statefull2 extends State<MyWiget_Statefull> {
//   late bool _localLoading;

//   // Hàm InitState sẽ là hàm gọi sau khi khởi tạo class kế thừa Stateful và chạy trước hàm Buil phía dưới
//   @override
//   void initState() {
//     // TODO: implement initState
//     _localLoading = widget.loading;
//   }

//   @override
//   Widget build(BuildContext context) {
// Method if else
// Nếu loading trả về = true thì sẽ in ra vòng tròn loading còn ko thì hiện text
// CircularProgressIndicator chính là vòng tròn loading
// FloatingActionButton chinh la button
//     // TODO: implement build
//     return _localLoading
//         ? const CircularProgressIndicator()
//         : FloatingActionButton(onPressed: onClickButton);
//   }

//   void onClickButton() {
//     setState(() {
//       _localLoading = true;
//     });
//   }
// }
