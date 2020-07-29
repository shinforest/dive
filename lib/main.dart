import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtubedemo/main_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SHIN',
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Shin Okamura',),
          ),
          body: Consumer<MainModel>(builder: (context, model, child) {
              return Center(
                child: Column(
                  children: [
                  Text(
                    model.text1,
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                    RaisedButton(
                      child: Text('ボタン'),
                      onPressed: (){
                        model.changeText();

                      },
                    ),
                ],
                ),
              );
            }
          ),
        ),
      ),
    );
  }
}