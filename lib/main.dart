import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Material vs Scaffold Example',
    home: Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Text('Hello Flutter!'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    ),
  ));
}
