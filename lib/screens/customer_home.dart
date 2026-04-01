import 'package:flutter/material.dart';
import 'browse_art.dart';

class CustomerHome extends StatefulWidget {
  const CustomerHome({super.key});

  @override
  _CustomerHomeState createState() => _CustomerHomeState();
}

class _CustomerHomeState extends State<CustomerHome> {

  int _selectedIndex = 0;

  final List<Widget> screens = [
    BrowseArt(), // 👈 default screen (grid)
    Center(child: Text("Requests")),
    Center(child: Text("Learn Indian Art")),
    Center(child: Text("Profile")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // 🔥 BODY = Selected Screen
      body: screens[_selectedIndex],

      // 🔻 Bottom Navigation
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFF8B1E3F),
        unselectedItemColor: Colors.grey,

        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.send),
            label: "Requests",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: "Learn",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}