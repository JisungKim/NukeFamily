import 'package:flutter/material.dart';
import 'logo_section.dart';

class MainScreen extends StatelessWidget {
  showAlertDialog(BuildContext context) {

  // set up the button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () { },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("My title"),
    content: Text("This is my message."),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

  // TextField (word miss) or Text (word gets hit)
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hahaaha"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          LogoSection("핵가족", "원자폭탄 만들기 읽다 가족같아서 만든 외국어 단어문장 암기 어플"),
          TextField(onChanged: (text) {
            print("First text field: $text");
          },),
          TextField(),
          RaisedButton(
            onPressed: () {
              print("clicked search");
            },
            child: Text("검색")
          ),
          RaisedButton(
            onPressed: () {
              print("clicked test");
            },
            child: Text("테스트 보기")
          ),
          RaisedButton(
            onPressed: () {
              print("clicked login");
            },
            child: Text("로그인하기")
          )
        ],
        )
    );
  }
}