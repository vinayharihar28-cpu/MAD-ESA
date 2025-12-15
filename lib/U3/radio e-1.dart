import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title:Text("Select your Elective Course"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: radiobutton(),
        ),
      ),
    );
  }
}

class radiobutton extends StatefulWidget{
  @override
  _rdbtn createState()=>_rdbtn();
}

class _rdbtn extends State<radiobutton>{
  int _setVal=1;

  @override
  Widget build(BuildContext context){
    return Column(
      children:<Widget>[
        ListTile(
          title:Text("MAD"),
          leading:Radio<int>(
            value: 1,
            groupValue: _setVal,
            onChanged: (int? value){
              setState((){
                _setVal=value!;
              });
            },
          ),
        ),

        ListTile(
            title:Text("GD"),
            leading:Radio<int>(
              value: 2,
              groupValue: _setVal,
              onChanged: (int? value){
                setState((){
                  _setVal=value!;
                });
              },
            ),
        ),

        ListTile(
            title:Text("WA"),
            leading:Radio<int>(
              value: 3,
              groupValue: _setVal,
              onChanged: (int? value){
                setState((){
                  _setVal=value!;
                });
              },
            ),
        ),

      ],
    );
  }

}