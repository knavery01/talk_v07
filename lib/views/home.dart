import 'dart:convert';
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_social/models/slide.dart';
import 'package:flutter_social/src/pages/index.dart';
import 'package:flutter_social/utils/colors.dart';
import 'package:flutter_social/views/tabs/edit.dart';
import 'package:flutter_social/views/tabs/tran.dart';
import 'package:flutter_social/views/upload.dart';

import 'package:line_icons/line_icons.dart';



class HomePage extends StatefulWidget {
  final FirebaseUser user;
  final String currentUserId;

  const HomePage({Key key, this.user, @required this.currentUserId}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState(currentUserId: currentUserId);
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  _HomePageState({Key key, @required this.currentUserId});
  String currentUserId;
  int _currentIndex = 0;

  @override
  void initState() {
    inputData();
    configLocalNotification();
    super.initState();
  }

  inputData() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    final FirebaseUser user = await auth.currentUser();
    final uid = user.uid.toString();
    print(uid);
    setState(() {
      currentUserId = uid.toString();
    });
  }

  final FirebaseMessaging firebaseMessaging = FirebaseMessaging();
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  void configLocalNotification() {
    var initializationSettingsAndroid = new AndroidInitializationSettings('app_icon');
    var initializationSettingsIOS = new IOSInitializationSettings();
    var initializationSettings = new InitializationSettings(initializationSettingsAndroid, initializationSettingsIOS);
    flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  void showNotification(message) async {
    var androidPlatformChannelSpecifics = new AndroidNotificationDetails(
      Platform.isAndroid ? 'com.dfa.flutterchatdemo' : 'com.duytq.flutterchatdemo',
      'Flutter chat demo',
      'your channel description',
      playSound: true,
      enableVibration: true,
      importance: Importance.Max,
      priority: Priority.High,
    );
    var iOSPlatformChannelSpecifics = new IOSNotificationDetails();
    var platformChannelSpecifics =
    new NotificationDetails(androidPlatformChannelSpecifics, iOSPlatformChannelSpecifics);

    print(message);

    await flutterLocalNotificationsPlugin.show(
        0, message['title'].toString(), message['body'].toString(), platformChannelSpecifics,
        payload: json.encode(message));

  }


  final List<Widget> _pages = [
    MyApp(),
    RegisterCustomer(),
    RegisterCustomer(),
    EditProfile(),
    IndexPage(),
  ];


  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      print(currentUserId);
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
//      bottomNavigationBar: bottomNavBar,
          appBar: AppBar(
            title: Text('Home'),
          ),
          body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Home Screen'),
                ],
              )
          ),
          drawer: SideMenu(),

    );

  }


}
