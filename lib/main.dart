import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Desafio"),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.refresh),
              onPressed: (){},)
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Icon(Icons.android, )
        ],
      ),
    );
  }
}
