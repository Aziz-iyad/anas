import 'package:flutter/material.dart';

import 'Model/BNScreen.dart';
import 'homeScreen.dart';

class BNP extends StatefulWidget {

  @override
  _BNPState createState() => _BNPState();
}

class _BNPState extends State<BNP> {

  int selectedIndex = 0;


  List<BNScreen> _screens = [
    BNScreen(widget: HomeScreen(), title: 'home'),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        // onTap: (int selectedItemIndex) {
        //   setState(() {
        //     selectedIndex = selectedItemIndex;
        //   });
        // },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note,),
            title: Text('EXPLORE',),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_fire_department,),
            title: Text('TRENDING',),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('SEARCH',),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music,),
            title: Text('LIBRARY',),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,),
            title: Text('SETTINGS',),
          ),
        ],
      ),
      body: HomeScreen(),
    );
  }
}
