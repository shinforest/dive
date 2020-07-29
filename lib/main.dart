import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: Icon(Icons.videocam),
          title: const Text(
            'Youtube demo',
          ),
          actions: <Widget>[
            SizedBox(
              width: 144,
              child: FlatButton(
                child: Icon(Icons.search),
                onPressed: () {
                  //todo
                },
              ),
              ),
            SizedBox(
              child: FlatButton(
                child: Icon(Icons.more_vert),
                onPressed: () {
                  //todo
                },
              ),
            )
          ],
        ),
        body: Container(
        ),
      ),
    );
  }
}