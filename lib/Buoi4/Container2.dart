// import 'package:flutter/material.dart';
// import 'Container0.dart';
// import 'Container1.dart';

// class SecondRoute extends StatelessWidget {
//   const SecondRoute({super.key});

//   @override
//   Widget build(BuildContext context) {
//     String gif = "assets/loading.gif";
//     String image =
//         "https://media2.giphy.com/media/v1.Y2lkPTc5MGI3NjExczM2MDF6aHhhbWVvNng2cjFlZjFpOTIyaGE4c2p6YWluNm9lM2Q5OSZlcD12MV9naWZzX3NlYXJjaCZjdD1n/S2IfEQqgWc0AH4r6Al/200.webp";
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Second Route'),
//       ),
//       body: Center(
//         child: Container(
//           height: 400,
//           // color: Colors.blue,
//           child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 // Loading Image
//                 Container(
//                   child:
//                       FadeInImage.assetNetwork(placeholder: gif, image: image),
//                 ),
//                 // Button
//                 TextButton(
//                     child: const Text('Open route'),
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const ZeroRoute()),
//                       );
//                     }),
//               ]),
//         ),
//       ),
//     );
//   }
// }
