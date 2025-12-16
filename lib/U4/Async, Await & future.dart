  import 'package:flutter/material.dart';

  void main(){
    runApp(const MyApp());
  }

  class MyApp extends StatelessWidget{
    const MyApp({super.key});

    @override
    Widget build(BuildContext context){
      return const MaterialApp(
        home:AsyncAwait(),
      );
    }
  }

  class AsyncAwait extends StatefulWidget{
    const AsyncAwait({super.key});
    @override
    State<AsyncAwait> createState()=> _AsyncAwaitState();
  }

  class _AsyncAwaitState extends State<AsyncAwait>{
    String data="Press the button to fetch the data";

    //simulate an async operation
  Future<String> fetchData() async{
    await Future.delayed(const Duration(seconds:3));
    return "Data fetched successfully!";
  }

  void getData() async{
    setState((){
      data="Fetching Data...";
    });

    String result=await fetchData();//waiting for the future to complete

    setState((){
      data=result;
    });
  }

  @override
    Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(title:const Text("Async & Await Example")),
      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              data,
              textAlign:TextAlign.center,
              style:const TextStyle(fontSize:20),
            ),
            const SizedBox(height:20),
            ElevatedButton(
              onPressed:getData,
              child:const Text("Fetch Data"),
            ),
          ],
        ),
      ),
    );
  }
  }