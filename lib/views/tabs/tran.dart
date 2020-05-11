
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.name}): super(key: key);
  final String name;
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home"),
      ),
      body: ListPage(),
    );
  }
}

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  Future _data;

  Future getPost() async {
    var firestore = Firestore.instance;
    QuerySnapshot qn = await firestore.collection('user2').getDocuments();
    return qn.documents;
  }

  navigateToDetail(DocumentSnapshot post){
   Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(post: post,)));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _data = getPost();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
            );
            });
        }
    },
    ));
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
            title: Text(widget.post.data['name']),
            subtitle: Text(widget.post.data['email']),


          ),
        ),
      ),
    );
  }
}



