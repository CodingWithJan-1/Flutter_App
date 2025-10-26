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
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_home_add_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
            label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
            label: "Search"),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_airplane_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_airplane_filled),
            label: "Tickets"),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_person_accounts_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_person_accounts_filled),
            label: "Profile"), 
        ] // a list
      ),
    );
  }
}