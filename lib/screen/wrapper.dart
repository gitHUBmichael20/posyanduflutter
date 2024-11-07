import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:posyandu/main_content/beranda.dart';
import 'package:posyandu/main_content/profile.dart';
import 'package:posyandu/main_content/search.dart';

class wrapper extends StatefulWidget {
  const wrapper({super.key});

  @override
  State<wrapper> createState() => wrapperState();
}

class wrapperState extends State<wrapper> {
  int currentPageIndex = 0;

  final List<Widget> _screens = [
    beranda(), // Create a separate widget for the home screen
    SearchPage(),
    profile_page(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[currentPageIndex],
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.white54,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.blue,
        height: 60,
        items: [
          Icon(Icons.home, color: Colors.black),
          Icon(Icons.search, color: Colors.black),
          Icon(Icons.account_circle, color: Colors.black),
        ],
        onTap: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        index: currentPageIndex,
      ),
    );
  }
}

