import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:project_test/Screens/HomeScreen.dart';
import 'package:project_test/Screens/search_screen.dart';
import 'package:project_test/Screens/ticket_screen.dart';

import 'ProfileScreen.dart';
class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex=0;
  static final List<Widget> _widgetOption =<Widget>[
     Homescreen(),

     SearchScreen(),
    TicketScreen(),
    ProfileScreen(),

  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex=index;
    });

    //print('${_selectedIndex}');
   // print('The index is'+_selectedIndex.toString());

  }

  @override
  Widget build(BuildContext context) {

    return  Scaffold(

      body: Center(
        child: _widgetOption[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar
        (
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor:const Color(0xFF526480),
          type: BottomNavigationBarType.fixed,
          items: [
          BottomNavigationBarItem(icon: Icon(FluentIcons.home_16_regular),
         activeIcon: Icon(FluentIcons.home_16_filled),
              label: 'Home'),
          BottomNavigationBarItem(icon: Icon(FluentIcons.search_16_regular),
              activeIcon: Icon(FluentIcons.search_16_filled),label: 'search'),
          BottomNavigationBarItem(icon: Icon(FluentIcons.ticket_diagonal_16_regular),
              activeIcon: Icon(FluentIcons.ticket_diagonal_16_filled),label: 'Ticket'),
          BottomNavigationBarItem(icon: Icon(FluentIcons.person_16_regular),
              activeIcon: Icon(FluentIcons.person_16_filled),label: 'Profile'),

      ]
      ) ,

    );
  }
}
