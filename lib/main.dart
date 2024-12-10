import 'package:flutter/material.dart';
import 'package:flutter_application_1/Shoppy%20Store/Datapasssing%20get%20api/splash.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  SplashScreen1(),
      debugShowCheckedModeBanner: false,
    );
  }
}

