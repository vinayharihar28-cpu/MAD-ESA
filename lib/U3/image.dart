import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
    home: Scaffold(
    appBar: AppBar(
      title: Text('Card and image widget'),),
      body:Center(
        child:Card(
          clipBehavior: Clip.antiAlias,
          elevation:5.0,
          shape:RoundedRectangleBorder(
            borderRadius:BorderRadius.circular(12.0),
          ),
          child:Column(
            children:[
              Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWaHAMAHWDcS4JPuzKCZ8hbpR01v5NfMEaJg&s',
              width:500,height:300,),
              Padding(padding: EdgeInsets.all(16.0),
              child:Text('Cute Kiten!',style:TextStyle(fontSize:20),),),
            ],
          ),
        ),

      ),
    ),
    );
  }
}