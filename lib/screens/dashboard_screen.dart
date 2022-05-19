import 'package:flutter/material.dart';
import 'package:sales_dashboard/main.dart';
import 'costs_screen.dart';
import 'sales_screen.dart';
import 'recipe_screen.dart';
import 'dashhome_screen.dart';

final pages = <Widget>[
  const DashHomeScreen(),
  const RecipeScreen(),
  const CostScreen(),
];

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5E9D9),
      body: Row(
        children: <Widget>[
          NavigationRail(
            backgroundColor: const Color(0xffD64123),
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              if (index == 3) {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const LoginScreen(),
                    ),
                    ModalRoute.withName('/'));
              } else {
                setState(() {
                  _selectedIndex = index;
                });
              }
            },
            labelType: NavigationRailLabelType.selected,
            groupAlignment: 0.0,
            minWidth: 100,
            unselectedIconTheme:
                const IconThemeData(size: 40, color: Colors.white),
            selectedIconTheme:
                const IconThemeData(size: 50, color: Colors.white),
            destinations: const <NavigationRailDestination>[
              NavigationRailDestination(
                icon: Icon(Icons.home),
                selectedIcon: Icon(Icons.home),
                label: Text(''),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.menu_book),
                selectedIcon: Icon(Icons.menu_book),
                label: Text(''),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.settings),
                selectedIcon: Icon(Icons.settings),
                label: Text(''),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.logout),
                selectedIcon: Icon(Icons.logout),
                label: Text(''),
              ),
            ],
          ),
          const VerticalDivider(thickness: 1, width: 1),
          // This is the main content.
          Expanded(
            child: Center(
                child: pages[
                    _selectedIndex] //Text('selectedIndex: $_selectedIndex'),
                ),
          )
        ],
      ),
    );
  }
}
