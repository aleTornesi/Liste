import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'List.dart';

class CreateListPage extends StatefulWidget{
  CreateListPage({Key key}) : super(key: key);

  final String title = "Crea lista";

  @override
  CreateListPageState createState() => CreateListPageState();

}

class CreateListPageState extends State<CreateListPage>{

  TextEditingController textEditingControllerUser = new TextEditingController();
  TextEditingController textEditingControllerPsw = new TextEditingController();
  Text alarmText = Text("");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: 'Nome',
                icon: Icon(Icons.title)
              ),
              controller: textEditingControllerUser,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Commento',
                icon: Icon(Icons.comment),
              ),
              controller: textEditingControllerPsw,
              minLines: 3,
              maxLines: 10,
            ),
            RaisedButton(
              child: Text("Conferma"),
              onPressed: createList,
            ),
            alarmText
          ],
        ),
      ),
    );
  }

  void createList(){
    setState(() {
      if (textEditingControllerUser.text.isNotEmpty) {
        new MyList(textEditingControllerUser.text, textEditingControllerPsw.text, List(0));
        Navigator.pop(context);
      }
      else{
        alarmText = Text("Una lista non può non avere un nome!", style: TextStyle(color: Colors.red),);
        print(alarmText);
      }
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    textEditingControllerUser.dispose();
    textEditingControllerPsw.dispose();
    super.dispose();
  }

}