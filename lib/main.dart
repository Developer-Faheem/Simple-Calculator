import 'package:calculator/screens/flash_screen.dart';
import 'package:flutter/material.dart';
import 'screens/home_page.dart';
import 'package:flare_splash_screen/flare_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: FlashScreen(),
    );
  }
}
