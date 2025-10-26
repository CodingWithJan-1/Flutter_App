import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';


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
        selectedItemColor:  Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526400),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket_outlined), label: "airplane_ticket_outlined"),
          BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined), label: "Person"),
        ] // a list
      ),
    );
  }
}