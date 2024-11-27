import 'package:flutter/material.dart';
import 'package:instagram_clone/Screen/MianPage/HeartScr/heartscreen.dart';
import 'package:instagram_clone/Screen/MianPage/HomeScr/homescreen.dart';
import 'package:instagram_clone/Screen/MianPage/PostScr/postsrceen.dart';
import 'package:instagram_clone/Screen/MianPage/ProfileScr/profilescreen.dart';
import 'package:instagram_clone/Screen/MianPage/SearchScr/serachscreen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;

  // Removed const here
  final List<Widget> pages = [
    Homescreen(),
    Serachscreen(),
    Postsrceen(),
    HeartPage(),
    Profilescreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black38,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: "Post",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Heart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
    );
  }
}
