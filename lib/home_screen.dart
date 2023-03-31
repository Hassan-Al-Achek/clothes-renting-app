import 'package:wearify/create_post_screen.dart';
import 'package:wearify/explore_screen.dart';
import 'package:wearify/leaderboard_screen.dart';
import 'package:wearify/profile_screen.dart';
import 'package:wearify/search_screen.dart';
import 'package:flutter/material.dart';
import 'glassmorphic_bottom_navigation_bar.dart';

class NavigtionBarWidget extends StatefulWidget {
  const NavigtionBarWidget({super.key});

  @override
  State<NavigtionBarWidget> createState() => _NavigtionBarWidgetState();
}

class _NavigtionBarWidgetState extends State<NavigtionBarWidget> {
  int _selectedIndex = 2;
  static const List<Widget> _widgetOptions = <Widget>[
    SearchScreen(),
    CreatePostScreen(),
    ExploreScreen(),
    LeaderboardScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: GlassmorphicBottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: 'Post',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.leaderboard),
            label: 'Leader Board',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
            backgroundColor: Colors.blue,
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (const NavigtionBarWidget());
  }
}
