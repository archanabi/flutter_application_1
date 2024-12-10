// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/Apimam/Listgetapitask.dart';
// import 'package:flutter_application_1/Spashscreen/todolist.dart';

// import 'package:flutter_application_1/gridview/listviewmyself.dart';





// class LoginScreen extends StatelessWidget {
//   final _formKey123 = GlobalKey<FormState>();
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();

//   //email
//   String? validateEmail(String? email) {
//     if (email== null || email.isEmpty) {
//       return 'This is empty';
//     } else if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
//       .hasMatch(email)); {
//       return 'Please enter a valid email';
//     }
    
  
//   }

//   // password
//   String? validatePassword(String? password) {
//     if (password == null || password.isEmpty) {
//       return 'Please enter your password';
//     } else if (password.length < 5) {
//       return 'Password must be at least 10 characters long';
//     }
//     return null;
//   }

//   void _correctvalidation(BuildContext context) {
//     if (_formKey123.currentState!.validate()) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => Listviewmyself()),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//       backgroundColor: Colors.deepPurpleAccent,
//         title: Center(child: Text('Login')),
//       ),
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 10, vertical: 50),
//         child: Form(
//           key: _formKey123,
//           child: Column(
//             children: <Widget>[
//               TextFormField(
//                  controller: emailController,
//                  decoration: InputDecoration(
                
//                   labelText: 'ENTER EMAIL ',labelStyle: TextStyle(color: Colors.deepPurpleAccent),
//                   border: UnderlineInputBorder(),
//                 ),
//                 keyboardType: TextInputType.emailAddress,
//                 validator: validateEmail, // Use the email validation function
//               ),
//               SizedBox(height: 16.0),
//               TextFormField(
//                 controller: passwordController,
//                 decoration: InputDecoration(
//                   labelText: 'ENTER PASSWORD',labelStyle: TextStyle(color: Colors.deepPurpleAccent),
//                   border: UnderlineInputBorder(),
//                 ),
//                 obscureText: false,
//                 validator: validatePassword, // Use the password validation function
//               ),
//               SizedBox(height: 20.0),
//               ElevatedButton(
//                 onPressed: () => _correctvalidation(context),
//                 child: Text('Login'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }




// ////practic




