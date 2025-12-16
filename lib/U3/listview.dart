import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Basic ListView',
      home: Scaffold(
        appBar: AppBar(
          title:Text("Basic List view example"),
        ),
        body:ListView(
          children:<Widget>[
            ListTile(
              leading:Icon(Icons.map),
              title:Text('Map'),
              onTap: (){
                _showSnackBar(context,'Map Selected');
              },
            ),
            ListTile(
              leading:Icon(Icons.photo),
              title:Text('Photos'),
              onTap: (){
                _showSnackBar(context,'Photo Selected');
              },
            ),
            ListTile(
              leading:Icon(Icons.phone),
              title:Text('Phone'),
              onTap: (){
                _showSnackBar(context,'Phone Selected');
              },
            ),
            ListTile(
              leading:Icon(Icons.contacts),
              title:Text('Contacts'),
              onTap: (){
                _showSnackBar(context,'Contacts Selected');
              },
            ),

          ],
        ),
      ),
    );
  }

  void _showSnackBar(BuildContext context,String message){
    final snackBar=SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}