import 'package:flutter/material.dart';
import 'package:liste/LoginPage.dart';
import 'FileManager.dart';
import 'HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  static String _user;

  @override
  Widget build(BuildContext context) {
    if (FileManager.exists()) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      );
    } else {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoginPage(),
      );
    }
  }

  static String get getUser {
    return _user;
  }

  static setUser(String username, BuildContext context) {
    if(context.widget.toString() == "LoginPage"){
      _user = username;
    }
  }
}
