import 'package:flutter/material.dart';
import 'package:flutter_social/_routing/routes.dart';
import 'package:flutter_social/utils/colors.dart';

class LanguagesPage extends StatefulWidget {
  @override
  _LanguagesPageState createState() => _LanguagesPageState();
}

class _LanguagesPageState extends State<LanguagesPage> {
  @override
  Widget build(BuildContext context) {
    final appBar = Padding(
      padding: EdgeInsets.only(bottom: 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          )
        ],
      ),
    );

    final pageTitle = Container(
      child: Center(
        child: Text(
          "Select Language",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.red,
            fontSize: 30.0,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );

    final LBtn1 = Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Container(
        margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
        height: 60.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          border: Border.all(color: Colors.white),
        ),
        child: Material(
          borderRadius: BorderRadius.circular(7.0),
          color: primaryColor,
          elevation: 10.0,
          shadowColor: Colors.white70,
          child: MaterialButton(
            onPressed: () => Navigator.of(context).pushNamed(homeViewRoute),
            child: Row(
              children: <Widget>[
                Image.asset(
                  'assets/images/eng1.png',
                  height: 50.0,
                  width: 100.0,
                ),
                SizedBox(
                  width: 50.0,
                ),
                Text(
                  'ENGLISH',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    final LBtn2 = Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Container(
        margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
        height: 60.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          border: Border.all(color: Colors.white),
        ),
        child: Material(
          borderRadius: BorderRadius.circular(7.0),
          color: primaryColor,
          elevation: 10.0,
          shadowColor: Colors.white70,
          child: MaterialButton(
            onPressed: () => Navigator.of(context).pushNamed(homeViewRoute),
            child: Row(
              children: <Widget>[
                Image.asset(
                  'assets/images/china.png',
                  height: 50.0,
                  width: 100.0,
                ),
                SizedBox(
                  width: 50.0,
                ),
                Text(
                  '中文语言',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    final LBtn3 = Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Container(
        margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
        height: 60.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          border: Border.all(color: Colors.white),
        ),
        child: Material(
          borderRadius: BorderRadius.circular(7.0),
          color: primaryColor,
          elevation: 10.0,
          shadowColor: Colors.white70,
          child: MaterialButton(
            onPressed: () => Navigator.of(context).pushNamed(homeViewRoute),
            child: Row(
              children: <Widget>[
                Image.asset(
                  'assets/images/malay1.png',
                  height: 50.0,
                  width: 100.0,
                ),
                SizedBox(
                  width: 50.0,
                ),
                Text(
                  'MELAYU',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    final LBtn4 = Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Container(
        margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
        height: 60.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          border: Border.all(color: Colors.white),
        ),
        child: Material(
          borderRadius: BorderRadius.circular(7.0),
          color: primaryColor,
          elevation: 10.0,
          shadowColor: Colors.white70,
          child: MaterialButton(
            onPressed: () => Navigator.of(context).pushNamed(homeViewRoute),
            child: Row(
              children: <Widget>[
                Image.asset(
                  'assets/images/korea.png',
                  height: 50.0,
                  width: 100.0,
                ),
                SizedBox(
                  width: 50.0,
                ),
                Text(
                  '한국어',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    final LBtn5 = Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Container(
        margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
        height: 60.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          border: Border.all(color: Colors.white),
        ),
        child: Material(
          borderRadius: BorderRadius.circular(7.0),
          color: primaryColor,
          elevation: 10.0,
          shadowColor: Colors.white70,
          child: MaterialButton(
            onPressed: () => Navigator.of(context).pushNamed(homeViewRoute),
            child: Row(
              children: <Widget>[
                Image.asset(
                  'assets/images/laos.png',
                  height: 50.0,
                  width: 100.0,
                ),
                SizedBox(
                  width: 50.0,
                ),
                Text(
                  'ລາວ',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    final LBtn6 = Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Container(
        margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
        height: 60.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          border: Border.all(color: Colors.white),
        ),
        child: Material(
          borderRadius: BorderRadius.circular(7.0),
          color: primaryColor,
          elevation: 10.0,
          shadowColor: Colors.white70,
          child: MaterialButton(
            onPressed: () => Navigator.of(context).pushNamed(homeViewRoute),
            child: Row(
              children: <Widget>[
                Image.asset(
                  'assets/images/japan.png',
                  height: 50.0,
                  width: 100.0,
                ),
                SizedBox(
                  width: 50.0,
                ),
                Text(
                  '日本語',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    final LBtn7 = Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Container(
        margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
        height: 60.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          border: Border.all(color: Colors.white),
        ),
        child: Material(
          borderRadius: BorderRadius.circular(7.0),
          color: primaryColor,
          elevation: 10.0,
          shadowColor: Colors.white70,
          child: MaterialButton(
            onPressed: () => Navigator.of(context).pushNamed(homeViewRoute),
            child: Row(
              children: <Widget>[
                Image.asset(
                  'assets/images/india.png',
                  height: 50.0,
                  width: 100.0,
                ),
                SizedBox(
                  width: 50.0,
                ),
                Text(
                  'भारतीय भाषा',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    final LBtn8 = Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Container(
        margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
        height: 60.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          border: Border.all(color: Colors.white),
        ),
        child: Material(
          borderRadius: BorderRadius.circular(7.0),
          color: primaryColor,
          elevation: 10.0,
          shadowColor: Colors.white70,
          child: MaterialButton(
            onPressed: () => Navigator.of(context).pushNamed(homeViewRoute),
            child: Row(
              children: <Widget>[
                Image.asset(
                  'assets/images/russia.png',
                  height: 50.0,
                  width: 100.0,
                ),
                SizedBox(
                  width: 50.0,
                ),
                Text(
                  'Русский язык',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    final LBtn9 = Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Container(
        margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
        height: 60.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          border: Border.all(color: Colors.white),
        ),
        child: Material(
          borderRadius: BorderRadius.circular(7.0),
          color: primaryColor,
          elevation: 10.0,
          shadowColor: Colors.white70,
          child: MaterialButton(
            onPressed: () => Navigator.of(context).pushNamed(homeViewRoute),
            child: Row(
              children: <Widget>[
                Image.asset(
                  'assets/images/vietnam.png',
                  height: 50.0,
                  width: 100.0,
                ),
                SizedBox(
                  width: 50.0,
                ),
                Text(
                  'Tiếng việt',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    final LBtn10 = Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Container(
        margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
        height: 60.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          border: Border.all(color: Colors.white),
        ),
        child: Material(
          borderRadius: BorderRadius.circular(7.0),
          color: primaryColor,
          elevation: 10.0,
          shadowColor: Colors.white70,
          child: MaterialButton(
            onPressed: () => Navigator.of(context).pushNamed(homeViewRoute),
            child: Row(
              children: <Widget>[
                Image.asset(
                  'assets/images/myanmar.png',
                  height: 50.0,
                  width: 100.0,
                ),
                SizedBox(
                  width: 50.0,
                ),
                Text(
                  'မြန်မာဘာသာ',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 40.0),
          child: Column(
            children: <Widget>[
              appBar,
              Container(
                padding: EdgeInsets.only(left: 30.0, right: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    pageTitle,
                    LBtn1,
                    LBtn2,
                    LBtn3,
                    LBtn4,
                    LBtn5,
                    LBtn6,
                    LBtn7,
                    LBtn8,
                    LBtn9,
                    LBtn10,
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
