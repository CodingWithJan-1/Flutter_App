import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBar();
}

class _BottomNavBar extends State<BottomNavBar> {

  // using list to iterate
  final appScreens = [
    const Center(child: Text("Home")),
    const Center(child: Text("Search")),
    const Center(child: Text("Tickets")),
    const Center(child: Text("Persons")),
  ];
  // initalize variable to store index
  int _selectedIndex = 0;

  // function to get tapped Index
  void _onItemTapped(int index){
    _selectedIndex = index; 
    print("tapped index: $_selectedIndex");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('My Tickets'))),
      body: appScreens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526400),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_home_add_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_airplane_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_airplane_filled),
            label: "Tickets",
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_person_accounts_regular),
            activeIcon: Icon(
              FluentSystemIcons.ic_fluent_person_accounts_filled,
            ),
            label: "Profile",
          ),
        ], // a list
      ),
    );
  }
}
