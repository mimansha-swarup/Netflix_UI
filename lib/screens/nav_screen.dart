import 'package:flutter/material.dart';
import 'package:netflix_ui/screens/screens.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screen = [
    homeScreen(key: PageStorageKey('homeScreen')),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];
  final Map<String, IconData> _icons = const {
    'Home': Icons.home,
    'Search': Icons.search,
    'Coming Soon': Icons.queue_play_next,
    'Downloads': Icons.file_download,
    'More': Icons.menu,
  };

  int _currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        items: _icons
            .map(
              (title, icon) => MapEntry(
                title,
                BottomNavigationBarItem(
                  icon: Icon(icon, size: 30),
                  title: Text(title),
                ),
              ),
            )
            .values
            .toList(),
        currentIndex: _currentindex,
        selectedFontSize: 11.0,
        selectedItemColor: Colors.white,
        unselectedFontSize: 11.0,
        unselectedItemColor: Colors.grey,
        onTap: (index) => setState(() => _currentindex = index),
      ),
    );
  }
}
