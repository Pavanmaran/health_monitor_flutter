import 'package:flutter/material.dart';

import 'package:health_monitor/screens/graph.dart';
import 'package:health_monitor/screens/history.dart';

// import 'analytics_screen.dart'; // Import the AnalyticsScreen

class Pressure extends StatefulWidget {
  const Pressure({super.key});

  @override
  State<Pressure> createState() => _PressureState();
}

class _PressureState extends State<Pressure> {
  int _selectedIndex = 0;

  // Define a function to handle bottom navigation item taps
  final List<Widget> _screens = [
    const History(),
    Container(),
    const Graph(),
    Container()
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (value) {
            setState(() {
              _selectedIndex = value;
            });
          }, // Call _onItemTapped function on item tap
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: "Dynamics",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.analytics),
              label: 'Analytics',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
        body: _screens[_selectedIndex],
      ),
    );
  }
}
