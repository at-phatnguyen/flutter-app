import 'package:flutter/material.dart';

void main() => runApp(new MyApp()); 

class HorizonalList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HorizonalListState();
  }
}

class HorizonalListState extends State<HorizonalList> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return new Scaffold(
      body: new Container(
        height: screenSize.height /3,
        child: new ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            new Container(
              width: screenSize.width / 3,
              height: screenSize.height /10,
              color: Colors.red,
            ),
            new Container(
              width: screenSize.width / 3,
              height: screenSize.height /10,
              color: Colors.blue,
              child: new Center(
                child: new Text(
                  'page 2',
                  style: new TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  )
                )
              ),
            ),
            new Container(
              width: screenSize.width / 3,
              height: screenSize.height /10,
              color: Colors.yellow,
            ),
            new Container(
              width: screenSize.width / 3,
              height: screenSize.height /10,
              color: Colors.green,
            )
          ],
        )
      )
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final materialApp = new MaterialApp(
      title: '',
      home: new HorizonalList(),
    );
    return materialApp;
  }
}