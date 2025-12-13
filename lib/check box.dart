import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool? value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PES UNIVERSITY'),
        backgroundColor: Colors.greenAccent,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Menu',
          onPressed: () {},
        ),
      ),

      body: Center(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SizedBox(
              width: 430,
              height: 700,
              child: Column(
                children: [
                  Text(
                    'WELCOME TO COMPUTER APPLICATIONS DEPARTMENT',
                    style: TextStyle(
                      color: Colors.greenAccent[400],
                      fontSize: 30,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Row(
                    children: <Widget>[
                      const SizedBox(width: 10),

                      const Text(
                        'CLICK BCA COURSE',
                        style: TextStyle(
                          fontSize: 17.0,
                        ),
                      ),

                      const SizedBox(width: 10),

                      Checkbox(
                        tristate: true,
                        value: value,
                        onChanged: (bool? newValue) {
                          setState(() {
                            value = newValue;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
