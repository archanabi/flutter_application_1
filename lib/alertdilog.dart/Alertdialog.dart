//  import 'package:flutter/material.dart';
// import 'package:flutter_application_1/listviewbuilder/listviewbuilder.dart';



// class AltertDialogBox {
//   void showExitDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           content: Container(
//             padding: EdgeInsets.all(20.0),
//             height: 150,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "Exit Confirmation",
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 Text("Are you sure to exit?"),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     TextButton(
//                       child: Text("No"),
//                       onPressed: () {
//                         Navigator.of(context).pop();
//                       },
//                     ),
//                     SizedBox(width: 10),
//                     // TextButton(
//                       child: Text("Yes"),
//                       // onPressed: () {
//                       //   Navigator.of(context).push(
//                       //     MaterialPageRoute(
//                       //       builder: (context) => ProductList(),
//                       //     ),
//                       //   );
//                       // },
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
