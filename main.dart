import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: UpdateText());
  }
}

class UpdateText extends StatefulWidget {
  UpdateTextState createState() => UpdateTextState();
}

class UpdateTextState extends State {
  String textHolder = '';
  bool clicked  = false;
  Map<Color,String> testMap = {Colors.deepPurple:"Deep Purple",Colors.green:"Green", Colors.blueGrey:"Blue Gray",
    Colors.blue: "Blue", Colors.orange: "Orange", Colors.yellow: "Yellow", Colors.purple: "Purple", Colors.brown: "Brown", Colors.red: "Red", Colors.amber: "Amber", Colors.deepOrange: "Deep Orange"};

  changeText() {

    setState(() {
      if(clicked){
        clicked = false;
      }else{
        clicked = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(title: Text('Rainbow')),
        floatingActionButton: FloatingActionButton(
          onPressed: () => changeText(),
        ),
        body: Column(children: <Widget>[
          for (final entry in testMap.entries)
            Container(
              child: clicked ? Text(entry.value, style: TextStyle(fontSize: 21)) : null,
              padding: clicked ? EdgeInsets.all(21.15) : EdgeInsets.all(33.65),
              width: 410,
              color: entry.key,
            ),
        ]));
  }
}
