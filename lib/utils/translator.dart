import 'package:flutter/material.dart';
import 'package:flutter_social/models/translatorTile.dart';

class TranslatorPage extends StatefulWidget {
  @override
  _TranslatorPageState createState() => _TranslatorPageState();
}

class _TranslatorPageState extends State<TranslatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              children: <Widget>[
                Text("Translator", style: TextStyle(
                    color: Colors.black87.withOpacity(0.8),
                    fontSize: 25,
                    fontWeight: FontWeight.w600
                ),),
                SizedBox(height: 20,),
                TranslatorTile(),
                TranslatorTile(),
                TranslatorTile(),
                TranslatorTile(),
                TranslatorTile(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
