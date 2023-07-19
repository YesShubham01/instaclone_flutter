import 'functions/homepage_function.dart';
import 'functions/profile_function.dart';
import 'functions/search_function.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  void _onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  static final List<Widget> _options = [
    getHomePage(),
    getSearchPage(),
    getProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    // * Scaffold here~
    return Scaffold(
      // * To give Black Background
      backgroundColor: Colors.black,

      // * Body here~
      body: _options.elementAt(selectedIndex),

      // * Bottom Navigation Bar here~
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('images/user.png'),
              height: 25,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: selectedIndex,
        onTap: _onClicked,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
