import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'first App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(width: 1000, height: 1000, color: Colors.red),
            Container(width: 500, height: 500, color: Colors.green),
            Container(width: 800, height: 800, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
