import 'package:flutter/material.dart';

class Player {
  late String name;
  Player({required this.name});
}

void main() {
  var ressurd = Player(name: 'ress');
  ressurd.name;

  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Hello Flutter!'),
        ),
        body: Center(
          child: Text("Hello World!"),
        ),
      ),
    );
  }
}
