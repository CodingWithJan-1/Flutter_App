import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  /*

    Created a new Component BottomNavBar and added two
    Icon Using BottomNavigationBar Package

  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center( 
          child: Text('My Tickets')),
      ),
      body: Center(
        child: Text('Welcome to the Ticket App!'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
        ] // a list
      ),
    );
  }
}