import 'package:flutter/material.dart';
import 'package:flutter_application_1/alertdilog.dart/Datapasssing%20get%20api/Datapassing.dart';
class SplashScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => passdata()));
    });

    return Scaffold(
       backgroundColor: const Color.fromARGB(255, 215, 235, 245),
      body: Center(
        child: Text(
          'SHOPPY STORE',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: const Color.fromARGB(235, 44, 128, 138)),
        ),
      ),
    );
  }
}