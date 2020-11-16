import 'package:flutter/material.dart';
import 'package:flutter_app_firebase_tutorial/main_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text("home"),
          ),
          body: Consumer<MainModel>(
              builder: (context, model, child) {
                return Center(
                  child: Column(
                    children: [
                      Text(
                        model.kboyText,
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      RaisedButton(
                        child: Text("ボタン"),
                        onPressed: (){
                          model.changeKboyText();
                        },
                      )
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

