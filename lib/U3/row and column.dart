import 'package:flutter/material.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    double iconSize=80.0;
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(title: Text("Conatiner, Row & Column")),
        body: Center(
          child:Container(
            padding: EdgeInsets.all(10),
            color:Colors.blue[100],
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:[
                  Icon(Icons.home,color:Colors.blue,size:iconSize),
                  Icon(Icons.star,color:Colors.green,size:iconSize),
                  Icon(Icons.settings,color:Colors.red,size:iconSize),
                ],
                ),
                SizedBox(height:40),
                Text("Flutter Layout Example",
                style:TextStyle(fontSize:18),
                ),
              ],
            ),

          ),
        ),
      ),
    );
  }
}