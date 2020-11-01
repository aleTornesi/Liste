import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liste/HomePage.dart';
import 'package:liste/SignInPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'main.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  TextEditingController textEditingControllerUser = new TextEditingController();
  TextEditingController textEditingControllerPsw = new TextEditingController();

  Text alarmText = Text("");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
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
            RaisedButton(
              child: Text("Login"),
              onPressed: () {
                setState(() {
                  FirebaseAuth fbA = FirebaseAuth.instance;
                  try{
                    fbA.signInWithEmailAndPassword(email: textEditingControllerUser.text, password: textEditingControllerPsw.text)
                      .then((authenticated) {

                        Navigator.push(context, CupertinoPageRoute(builder: (context) => HomePage()));
                  }
                  );}
                  on  catch (e){
                    if (e.code == 'user-not-found') {
                      new Text("Non risulta che un account con queste credenziali esista", style: TextStyle(color: Colors.red))
                    } else if (e.code == 'wrong-password') {
                      new Text("Password errata", style: TextStyle(color: Colors.red));
                    }
                  }
                });
              },
            ),
            RaisedButton(
              child: Text("Iscriviti"),
              onPressed: () => Navigator.push(context, CupertinoPageRoute(builder: (context) => SignInPage()))
            ),
            alarmText
          ],
        ),
      ),
    );
  }

}