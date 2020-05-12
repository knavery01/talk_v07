
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

//void main() => runApp(new MyApp2());
//
//class MyApp2 extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      title: 'Flutter Demo',
//      theme: new ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//      home: new MyHomePage2(name: null),
//    );
//  }
//}


//class MyHomePage2 extends StatefulWidget {
//
//  final String lang;
//
//  MyHomePage2({Key key,@required this.lang, }): super(key: key);
//
//  @override
//  _MyHomePage2State createState() => new _MyHomePage2State();
//}
//
//class _MyHomePage2State extends State<MyHomePage2> {
//
//
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text("Translator"),
//      ),
//      body: ListPage(),
//    );
//  }
//}

class ListPage extends StatefulWidget {

  final String lang;

  ListPage({Key key,@required this.lang, }): super(key: key);
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  Future _data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _data = getPost();
  }


  Future getPost() async {
    var firestore = Firestore.instance;
    QuerySnapshot qn = await firestore.collection('user2').where("lang", isEqualTo: "${widget.lang}").getDocuments();
//    print("${widget.lang}");
    return qn.documents;
  }

  navigateToDetail(DocumentSnapshot post){
    Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(post: post,)));
  }



  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Translator"),
      ),
      body: Container(
          child: FutureBuilder(
            future: _data,
            builder: (_, snapshot){
              if(snapshot.connectionState == ConnectionState.waiting){
                return Center(
                  child: Text("Loading.."),
                );
              }else{
                return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (_, index){
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                          NetworkImage(
                            snapshot.data[index].data['imgProfile'],
                          ),
                        ),
                        title: Text(snapshot.data[index].data['name'],),
                        onTap: () => navigateToDetail(snapshot.data[index]),
                        subtitle: Text(snapshot.data[index].data['lang'],),
                        trailing: Text(snapshot.data[index].data['status'],),
                      );
                    });
              }
            },
          )),
    );
  }
}

class DetailPage extends StatefulWidget {

  final DocumentSnapshot post;
  DetailPage({this.post});
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.post.data['name']),
      ),
      body: Container(
        child: Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage:
              NetworkImage(
                widget.post.data['imgProfile'],
              ),
            ),
            title: Text(widget.post.data['name']),
            subtitle: Text(widget.post.data['lang']),
            trailing: Text(widget.post.data['status']),


          ),
        ),
      ),
    );
  }
}



