// import 'package:flutter/material.dart';
// class Login extends StatefulWidget {
//   const Login({super.key});

//   @override
//   State<Login> createState() => _LoginState();
// }

// class _LoginState extends State<Login> {
//   final _formvalidation = GlobalKey<FormState>();
//   final emailController = TextEditingController();
//   final passwordController= TextEditingController();
//   @override
//   Widget build(BuildContext context) {

//     String?validateEmail(String?value) {
//     if (value == null || value.isEmpty) {
//       return 'Please enter some text';
//     }
  
//     return null;
//      }
//      String?validatePassword(String?value) {
//     if (value == null || value.isEmpty) {
//       return 'Please enter some text';
//     }
  
//     return null;
//      }

//     return Scaffold(

//       appBar: AppBar(title: Text("Form Validation"),),
//     body: Column(
//         key: _formvalidation,
//       children: [
//         TextFormField(
//           controller: emailController,
//         decoration: InputDecoration(label: Text("ENTER YOUR EMAIL")),
//         ),
//         TextFormField(
//           controller: passwordController,
        
//         )
//       ],
//     ),
  
//     );
//   }
// }