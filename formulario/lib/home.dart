import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final controller = Controller();

  _textField({String labelText,onChanged, String Function () errorText}){
    return TextField(
      decoration: InputDecoration( 
        border: OutlineInputBorder(),
        labelText: labelText,
        errorText: errorText == null ? null : errorText(),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text('Formulario'),
      ),
      body: Padding( 
        padding: const EdgeInsets.all(8.0),
        child: Column( 
          children: <Widget>[
            Observer(
              builder: (_){
                return _textField(
                  labelText: "name",
                  onChanged: controller.client.changeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}