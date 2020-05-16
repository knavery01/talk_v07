import 'package:flutter/material.dart';
import 'package:flutter_social/models/noti.dart';

class notiView extends StatefulWidget {
  @override
  _notiViewState createState() => _notiViewState();
}

class _notiViewState extends State<notiView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MessagingWidget(),
    );
  }
}
