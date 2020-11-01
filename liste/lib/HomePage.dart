import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liste/CreateListPage.dart';
import 'package:liste/FileManager.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Liste"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {Navigator.push(context, CupertinoPageRoute(builder: (context) => CreateListPage()))},
        tooltip: 'Crea una nuova lista',
        child: Icon(Icons.add),
      ),
    );
  }
}