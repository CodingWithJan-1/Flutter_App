import 'package:flutter/material.dart';
import 'package:ticket_app/base/bottom_nav_bar.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: BottomNavBar(),
    );
  }
}

/*

  Deleted the home: Scaffold then imported 
  BottomnavBar component to home:

*/

