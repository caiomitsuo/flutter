import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'controller.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  final controller = Controller();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}


class _MyHomePageState extends StatelessWidget{

  final controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Observer(
              builder: (_){
              return Text(
              '${controller.counter}',
              style: Theme.of(context).textTheme.display1,
              );
            },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          controller.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
