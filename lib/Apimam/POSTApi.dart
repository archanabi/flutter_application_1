// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/listviewbuilder/listviewbuilder.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class PostDataExample extends StatefulWidget {
//   @override
//   _PostDataExampleState createState() => _PostDataExampleState();
// }

// class _PostDataExampleState extends State<PostDataExample> {

//   final String apiUrl = "https://jsonplaceholder.typicode.com/posts";

//   final TextEditingController titleController = TextEditingController();
//   final TextEditingController bodyController = TextEditingController();

//   Future<void> postData() async {
//     Map<String, dynamic> postData = {
//       'Email': titleController.text,//email
//       'PAssword': bodyController.text,//password
//       'userId': 1, // A dummy user ID
//     };

//     final response = await http.post(
//       Uri.parse(apiUrl),
//       headers: {
//         "Content-Type": "application/json; charset=UTF-8",
//       },
//       body: jsonEncode(postData),
//     );

//     if (response.statusCode == 201) {
//       print("Response data: ${response.body}");
//       showDialog(
//         context: context,
//         builder: (context) => AlertDialog( 
//           title: Text('Success Successful'),
//           // content: Text('Post Created: ${response.body}'),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductList()));
//               },
//               child: Text('OK'),
//             ),
//           ],
//         ),
//       );
//     } else {
//       print("Error: ${response.statusCode}");
//       showDialog(
//         context: context,
//         builder: (context) => AlertDialog(
//           title: Text('Error'),
//           content: Text('Failed to create post: ${response.statusCode}'),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: Text('OK'),
//             ),
//           ],
//         ),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('POST API Example'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(
//               controller: titleController,
//               decoration: InputDecoration(
//                 labelText: 'Email',
//               ),
//             ),
//             TextField(
//               controller: bodyController,
//               decoration: InputDecoration(
//                 labelText: 'PAssword',
//               ),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: postData,
//               child: Text('Submit Post'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }