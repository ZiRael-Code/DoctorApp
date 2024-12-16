import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Account.dart';
import 'Dashboard.dart';
import 'Network.dart';
import 'Patients.dart';

class MainNavigator extends StatefulWidget {
  MainNavigator({super.key});

  @override
  _MainNavigatorState createState() => _MainNavigatorState();
}

class _MainNavigatorState extends State<MainNavigator> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  late final List<Widget> _screens = [
    Dashboard(onItemTapped: _onItemTapped),
    Patients(),
    Network(),
    Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: (index) => _onItemTapped(index),
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                _selectedIndex == 0
                    ? 'assets/images/s_home.svg'
                    : 'assets/images/un_home.svg',
                width: 28,
                height: 28,
              ),
              label: 'Home',
            ),
      BottomNavigationBarItem(
              icon: SvgPicture.asset(
                _selectedIndex == 0
                    ? 'assets/images/s_home.svg'
                    : 'assets/images/un_home.svg',
                width: 28,
                height: 28,
              ),
              label: 'Home',
            ),
      BottomNavigationBarItem(
              icon: SvgPicture.asset(
                _selectedIndex == 0
                    ? 'assets/images/s_home.svg'
                    : 'assets/images/un_home.svg',
                width: 28,
                height: 28,
              ),
              label: 'Home',
            ),
      BottomNavigationBarItem(
              icon: SvgPicture.asset(
                _selectedIndex == 0
                    ? 'assets/images/s_home.svg'
                    : 'assets/images/un_home.svg',
                width: 28,
                height: 28,
              ),
              label: 'Home',
        )
        ]
        )
    )
    );
    }
  }
void main(){
  runApp(MaterialApp(
      home: MainNavigator()));
}