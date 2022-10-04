import 'package:flutter/material.dart';
import 'package:flutter_fronted_practis/view/diary_screen.dart';
import 'package:flutter_fronted_practis/view/post_screen.dart';
import 'package:flutter_fronted_practis/view/profile_screen.dart';
import 'package:flutter_fronted_practis/view/search_screen.dart';
import '../video_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  List pages = [
    PostScreen(),
    VideoScreen(),
    DiaryScreen(),
    SearchScreen(),
    ProfileScreen(),
  ];

  int currentIndex = 0;

  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // final user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        // showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Video',
              icon: Icon(Icons.tv),
          ),
            BottomNavigationBarItem(
              label: 'Diary',
              icon: Icon(Icons.post_add_sharp),
          ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
