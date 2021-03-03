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

  TextEditingController litrosController = TextEditingController();
  TextEditingController quantidadeController = TextEditingController();

  String _resultText = "Resultado";

  void _resetFields(){
    litrosController.text = "";
    quantidadeController.text = "";
    _resultText = "Resultado";
  }

  void calculate(){
    var garrafas = List<int>.generate(10, (i) => i+i);

    for(int i=0; i <garrafas.length; i++){
      print(_resultText= '${garrafas[i]}');
    }
  }
  
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
        body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Icon(
                Icons.android_rounded,
                size: 120.0,
                color: Colors.black,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Litros do Galão (L)",
                    labelStyle: TextStyle(color: Colors.black)),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 20.0),
                controller: litrosController,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Quantidade de Garrafas",
                    labelStyle: TextStyle(color: Colors.black)),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 20.0),
                controller: quantidadeController,
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Container(
                    height: 50.0,
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text(
                        "Calcular",
                        style: TextStyle(color: Colors.black, fontSize: 20.0),
                      ),
                      color: Colors.lightBlue,
                    )),
              ),
              Text(
                _resultText,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.lightBlue, fontSize: 20.0),
              )
            ],
          ),
        ));
  }
}

