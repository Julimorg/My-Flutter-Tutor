// import 'package:flutter/material.dart';
// import 'Container1.dart';

// class ZeroRoute extends StatefulWidget {
//   const ZeroRoute({super.key});

//   @override
//   State<ZeroRoute> createState() => _ZeroRouteState();
// }

// class _ZeroRouteState extends State<ZeroRoute> {
//   bool _isButtonPressed = false;
//   @override
//   initSate() {
//     super.initState();
//     _isButtonPressed = false;
//   }

//   @override
//   Widget build(BuildContext context) {
//     void onMyButtonPressed() {
//       setState(
//         () {
//           _isButtonPressed = !_isButtonPressed;
//         },
//       );
//     }

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Zero Route'),
//       ),
//       body: Center(
//         child: Container(
//           // color: Colors.blue
//           height: 500,
//           width: 500,
//           child: Column(children: [
//             Container(
//               color: _isButtonPressed ? Colors.limeAccent : Colors.greenAccent,
//               width: 300,
//               height: 300,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Text(
//                     " Xin chao",
//                     style: TextStyle(
//                       fontSize: 20,
//                       color: _isButtonPressed ? Colors.blue : Colors.black,
//                     ),
//                   ),
//                   ElevatedButton(
//                     onPressed: onMyButtonPressed,
//                     child: const Text('Change color'),
//                   ),
//                 ],
//               ),
//             ),
//             TextButton(
//                 child: const Text('Open route'),
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => const FirstRoute()),
//                   );
//                 }),
//           ]),
//         ),
//       ),
//     );
//   }
// }
