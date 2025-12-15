import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title:'Material vs scaffold Example',
    home:Scaffold(
      appBar: AppBar(title: Text('Home page')),
      body: Center(child: Text('Hello Flutter')),
      floatingActionButton: FloatingActionButton(
        onPressed:(){},
        child: Icon(Icons.add),
      ),
    ),
  ));
}