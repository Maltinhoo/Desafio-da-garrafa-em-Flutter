import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _galaoController = TextEditingController();
  final _quantController = TextEditingController();
  final _garrafaController = TextEditingController();


  String _resultText = "Resultado";

  List _toDoList = [];


  void _resetFields() {
    _galaoController.text = "";
    _quantController.text = "";
    _resultText = "Resultado";
  }

  void _addToDo (){
      setState(() {
        Map<String, dynamic> newToDo = Map();
        newToDo["title"] = _garrafaController.text;
        _garrafaController.text = "";
        _toDoList.add(newToDo);
        print(_toDoList);
      });
  }

  

  /*void calculate() {
    var garrafas = List<int>.generate(10, (i) => i + i);

    for (int i = 0; i < garrafas.length; i++) {
      print(_resultText = '${garrafas[i]}');
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Desafio"),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: _resetFields,
          )
        ],
      ),
      backgroundColor: Colors.white,

      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(17.0, 1.0, 7.0, 1.0),
            child: TextField(
              controller: _galaoController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Litros do Galão (L)",
                  labelStyle: TextStyle(color: Colors.black)),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 20.0),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(17.0, 1.0, 7.0, 1.0),
            child: TextField(
              controller: _quantController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Quantidade de Garrafas",
                  labelStyle: TextStyle(color: Colors.black)),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 20.0),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(17.0, 1.0, 7.0, 10.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: _garrafaController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Litros da Garrafa",
                        labelStyle: TextStyle(color: Colors.black)),
                  ),
                ),
                RaisedButton(
                    color: Colors.lightBlue,
                    child: Text("ADD"),
                    textColor: Colors.white,
                    onPressed: _addToDo,
                )
              ],
            ),
          ),

          /*Container(
            height: 10.0,
            width: 10.0,
            padding: EdgeInsets.fromLTRB(17.0, 1.0, 7.0, 1.0),
            child: Row(
              children: <Widget>[*/
         /* Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(10.0),
                  itemCount: _toDoList.length,
                  itemBuilder: (context, index){
                    return ListTile(
                      title: Text(_toDoList[index]["title"]),
                    );
                        })
          ),*/


          Text(
            _resultText,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.lightBlue, fontSize: 20.0),
          )
        ],
      ),
    );
  }
}