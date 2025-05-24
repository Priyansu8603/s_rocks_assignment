import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:s_rocks_assignment/Utils/AppColors.dart';
import 'package:s_rocks_assignment/features/homescreen/View/News.dart';
import 'package:s_rocks_assignment/features/homescreen/View/TrackBox.dart';

import 'HomeScreen.dart';
import 'Projects.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  // List of screens for navigation
  final List<Widget> _screens = [
    const HomeScreen(),
    const News(),
    const Projects(),
    const Trackbox()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: AppColors.maroon,
      ),
      bottomNavigationBar: GNav(
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        activeColor: Colors.white,
        curve: Curves.easeOutExpo,
        color: Colors.grey[800],
        iconSize: 24,
        gap: 5,
        padding: const EdgeInsets.all(16),
        tabMargin: const EdgeInsets.all(10),
        tabBackgroundColor: Colors.grey,
        backgroundColor: Colors.black87,
        tabs: [
          GButton(
            icon: Icons.circle,
            iconActiveColor: Colors.transparent,
            leading: Image.asset('core/Assets/images/home.png',height: 24,width: 24,),
            text: 'Home',
            iconColor: Colors.white,
            textStyle: const TextStyle(fontFamily: 'Poppins', color: Colors.white),
          ),
          GButton(
            icon: Icons.circle,
            iconActiveColor: Colors.transparent,
            leading: Image.asset('core/Assets/images/News.png', height: 24,width: 24,),
            text: 'News',
            iconColor: Colors.white,
            textStyle: const TextStyle(fontFamily: 'Poppins', color: Colors.white),
          ),
          GButton(
            icon: Icons.circle,
            iconActiveColor: Colors.transparent,
            leading: Image.asset('core/Assets/images/TrackBox.png', height: 24,width: 24,),
            text: 'TrackBox',
            iconColor: Colors.white,
            textStyle: TextStyle(fontFamily: 'Poppins', color: Colors.white),
          ),
          GButton(
            icon: Icons.circle,
            iconActiveColor: Colors.transparent,
            leading: Image.asset('core/Assets/images/Projects.png', height: 24,width: 24,),
            text: 'Projects',
            iconColor: Colors.white,
            textStyle: TextStyle(fontFamily: 'Poppins', color: Colors.white),
          ),
        ],
      ),
      body: _screens[_selectedIndex],
    );
  }
}


