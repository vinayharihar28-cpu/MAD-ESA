import 'package:flutter/material.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
 Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
      appBar:AppBar(
        title:Text("Conatiner Example"),
        backgroundColor:Colors.redAccent,
      ),
      body:Center(
        child: Container(
          width:400,
          height:300,
          padding:EdgeInsets.all(20),
          margin: EdgeInsets.all(15),
          alignment: Alignment.center,
            decoration: BoxDecoration(
              color:Colors.blueAccent,
              borderRadius: BorderRadius.circular(10),
            ),
          child:Text("Hello Flutter!",
            style:TextStyle(
              color:Colors.white,
              fontSize: 18,
              fontWeight:FontWeight.bold,
            ),
          ),
        ),
      ),
      ),
    );
  }
}