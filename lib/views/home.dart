import 'package:flutter/material.dart';
import 'package:flutter_social/utils/colors.dart';
import 'file:///C:/Users/UMARU/AndroidStudioProjects/talk_v08/lib/views/tabs/translator.dart';
import 'package:flutter_social/views/languages.dart';
import 'package:flutter_social/views/tabs/edit.dart';

import 'package:flutter_social/views/tabs/chats.dart';
import 'package:flutter_social/views/tabs/edit2.dart';
import 'package:flutter_social/views/tabs/feeds.dart';
import 'package:flutter_social/views/tabs/list.dart';
import 'package:flutter_social/views/tabs/notifications.dart';
import 'package:flutter_social/views/tabs/profile.dart';
import 'package:flutter_social/views/tabs/tran.dart';

import 'package:line_icons/line_icons.dart';



class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    MyApp(),
    ChatsPage(),
    NotificationsPage(),
    EditPage(),
    EditProfile(),
  ];


  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    final bottomNavBar = BottomNavigationBar(

      onTap: onTabTapped,
      currentIndex: _currentIndex,
      selectedItemColor: primaryColor,
      unselectedItemColor: Colors.grey.withOpacity(0.6),
      elevation: 0.0,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.rss_feed),
          title: Text(
            'Feed',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(LineIcons.comments),
          title: Text(
            'Chats',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(LineIcons.bell),
          title: Text(
            'Notifications',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(LineIcons.user),
          title: Text(
            'Profile',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(LineIcons.user),
          title: Text(
            'Translator',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        
      ],

    );

    return Scaffold(
      bottomNavigationBar: bottomNavBar,
      body: _pages[_currentIndex]

    );

  }


}
