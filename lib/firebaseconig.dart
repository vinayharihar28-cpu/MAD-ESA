import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


void main() => runApp(const MyApp());

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<MyApp> createState()=>_MyAppState();
}

class _MyAppState extends State<myApp>{
  Map<String, dynamic>? jsonData;

  @override
  void initState(){
    super.initState(){
      super.initState();
      loadJson();
    }
    Future<void> loadJson()async{
      try{

      }
    }
  }
}