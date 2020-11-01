import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';

class SignInPage extends StatefulWidget{
  SignInPage({Key key}) : super(key: key);
  
  @override
  SignInPageState createState() => SignInPageState();
  
}

class SignInPageState extends State<SignInPage>{
  TextEditingController textEditingControllerUser = new TextEditingController();
  TextEditingController textEditingControllerPsw = new TextEditingController();
  TextEditingController textEditingControllerConfirmPsw = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Iscriviti"),),
      body: Container(
        child: Column(
          children: <Widget>[
            TextField(
              controller: textEditingControllerUser,
              decoration: InputDecoration(
                  icon: Icon(Icons.account_box),
                  labelText: 'Username'
              ),
            ),
            TextField(
              controller: textEditingControllerPsw,
              decoration: InputDecoration(
                  icon: Icon(Icons.visibility_off),
                  labelText: 'Password'
              ),
              obscureText: true,
            ),
            TextField(
              controller: textEditingControllerConfirmPsw,
              decoration: InputDecoration(
                  icon: Icon(Icons.visibility_off),
                  labelText: 'Password'
              ),
              obscureText: true,
            ),
            RaisedButton(
              child: Text("Login"),
              onPressed: () => Navigator.push(context, CupertinoPageRoute(builder: (context) => HomePage()))
            ),
          ],
        ),
      ),
    );
  }
  
}