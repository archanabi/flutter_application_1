import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/bs%20tech.dart/SigninScreen.dart';
class Splashscreen1 extends StatefulWidget {
  const Splashscreen1({super.key});

  @override
  State<Splashscreen1> createState() => _Splashscreen1State();
}

class _Splashscreen1State extends State<Splashscreen1> {
  @override
  void initState(){
    super.initState();
  Timer(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Signinscreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Center(
  child: Column(
    children: [
      Image.asset('assets/images/splash.jpg'),
      Text("BOOK Doctor's Appoinment"),
      Text("Book Doctor's Appoinment For \n The Patient"),
      Container(
        decoration: BoxDecoration(
          color: Colors.deepPurpleAccent,
    
        ),
      )

    ],
  ),
),
    );
  }
}