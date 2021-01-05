import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = new TextStyle(
      fontSize: 22,
      fontFamily: 'Raleway',
      fontStyle: FontStyle.normal,
      color: Colors.blueGrey,
    );

    TextField usernameTxtField = new TextField(
      style: textStyle,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelStyle: textStyle,
        labelText: 'Username',
      ),
    );

    TextField passwordTxtField = new TextField(
      style: textStyle,
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelStyle: textStyle,
        labelText: 'Password',
      ),
    );

    Widget dataSection = Container(
      padding: const EdgeInsets.fromLTRB(32, 100, 32, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildDataColumn(
              Icons.person,  usernameTxtField),
          _buildDataColumn(
              Icons.enhanced_encryption, passwordTxtField)
        ],
      ),
    );

    return MaterialApp(
        title: 'Petrol Perfect',
        home: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/black_green.jpg"),fit: BoxFit.cover)),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: ListView(
                children: [
                  titleSection,
                  dataSection,
                ],
              ),
            )),
            );
  }

  Widget titleSection = Container(
    padding: const EdgeInsets.fromLTRB(28, 30, 40, 0),
    child: Row(
      children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Petrol Perfect',
              style: TextStyle(
                  color: Colors.yellowAccent,
                  fontSize: 47.0,
                  wordSpacing: 2.0,
                  letterSpacing: 3.0,
                  fontFamily: 'Raleway',
                  fontStyle: FontStyle.italic),
            )
          ],
        )),
        Image.asset(
          'images/gas_pump_nozzle.jpeg',
          width: 80,
          height: 80,
        ),
      ],
    ),
  );

  Container _buildDataColumn(IconData icon, TextField textField) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.blueGrey,
            size: 40,
          ),
          Expanded(
              child: textField)
        ],
      ),
    );
  }
}
