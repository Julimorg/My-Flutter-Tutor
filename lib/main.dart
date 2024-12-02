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
import 'package:flutter_application_1/homework3/GridViewToListBuild.dart';
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
          child: Gridviewtolistbuild()),
    );
  }
}
