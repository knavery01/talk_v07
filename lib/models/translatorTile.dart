import 'package:flutter/material.dart';
import 'package:flutter_social/views/tabs/translatorInfo.dart';

class TranslatorTile extends StatefulWidget {
  @override
  _TranslatorTileState createState() => _TranslatorTileState();
}

class _TranslatorTileState extends State<TranslatorTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => TranslatorInfo()
        ));
      },
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Color(0xffFFEEE0),
                borderRadius: BorderRadius.circular(20)
            ),
            padding: EdgeInsets.symmetric(horizontal: 24,
                vertical: 18),
            child: Row(
              children: <Widget>[
                Image.asset("assets/images/profile.png", height: 50,),
                SizedBox(width: 17,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("", style: TextStyle(
                        color: Color(0xffFC9535),
                        fontSize: 19
                    ),),
                    SizedBox(height: 2,),
                    Text("", style: TextStyle(
                        fontSize: 15
                    ),)
                  ],
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15,
                      vertical: 9),
                  decoration: BoxDecoration(
                      color: Color(0xffFBB97C),
                      borderRadius: BorderRadius.circular(13)
                  ),
                  child: Text("See", style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w500
                  ),),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
