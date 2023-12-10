import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool showTitle = true;

  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
    });
  }

  void onClicked() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: const TextTheme(
              titleLarge: TextStyle(
        color: Colors.red,
      ))),
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              showTitle ? const MyLargTitle() : const Text('nope'),
              IconButton(
                onPressed: toggleTitle,
                icon: const Icon(Icons.remove_red_eye),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyLargTitle extends StatefulWidget {
  const MyLargTitle({
    super.key,
  });

  @override
  State<MyLargTitle> createState() => _MyLargTitleState();
}

class _MyLargTitleState extends State<MyLargTitle> {
  @override
  void initState() {
    super.initState();
    print('hello');
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose!');
  }

  @override
  Widget build(BuildContext context) {
    print('build!');
    return Text(
      'My Large Title',
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    );
  }
}
