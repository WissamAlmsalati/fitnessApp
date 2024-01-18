import 'package:fitnes_app/constants/icons.dart';
import 'package:flutter/material.dart';

import '../../../constants/lists.dart';

class NavigationBarScreen extends StatefulWidget {
 const NavigationBarScreen({super.key});

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreen();
}

class _NavigationBarScreen extends State<NavigationBarScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ScrenList[_selectedIndex],
        bottomNavigationBar: Container(
          width: 300,
          height: MediaQuery.of(context).size.height * 0.1,
          decoration: const BoxDecoration(),
          child: BottomNavigationBar(
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                icon: homeIco,
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: activityIco,
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: searchIco,
                label: 'Camera',
              ),
              BottomNavigationBarItem(
                icon: cameraIco,
                label: 'Profile',
              ),
              BottomNavigationBarItem(icon: profileIco, label: 'Profile'),
            ],
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ));
  }
}
