import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Select the course using Radio button"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: RadioButton(), // 👈 IMPORTANT
        ),
      ),
    );
  }
}

class RadioButton extends StatefulWidget {
  @override
  _RadioBtn createState() => _RadioBtn();
}

class _RadioBtn extends State<RadioButton> {
  int _selectedVal = 2; // Default selected (BCA)

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text('MCA'),
          leading: Radio<int>(
            value: 1,
            groupValue: _selectedVal,
            onChanged: (int? value) {
              setState(() {
                _selectedVal = value!;
              });
            },
          ),
        ),

        ListTile(
          title: Text('BCA'),
          leading: Radio<int>(
            value: 2,
            groupValue: _selectedVal,
            onChanged: (int? value) {
              setState(() {
                _selectedVal = value!;
              });
            },
          ),
        ),

        ListTile(
          title: Text('BBA'),
          leading: Radio<int>(
            value: 3,
            groupValue: _selectedVal,
            onChanged: (int? value) {
              setState(() {
                _selectedVal = value!;
              });
            },
          ),
        ),
      ],
    );
  }
}
