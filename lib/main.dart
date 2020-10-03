import 'package:flutter/material.dart';
import 'dart:core';

void main() {
  runApp(vCard());
}

class vCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
// Containers without children are keen to take the maximum amount of space
// Containers with children take space as big as their child only.
// If the phone has a notch, we use safearea for keeping our items away from it.
// safe area, container'i kapsar, widgeti degil.
// Bunu yapmak icin continer'in uzerine sag tik, wrap with widget, widgete SafeArea ismini ver.
//Containers can only have ONE child!.
// For multiple children we use column and rows!
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/yavuz.png'),
              ),
              Text(
                'Mehmet Yavuz Yagis',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 28,
                  letterSpacing: 1.5,
                  fontFamily: 'Pacifico',
                  // fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Web & Mobile Developer',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  color: Colors.teal.shade100,
                  fontSize: 20,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    size: 30,
                    color: Colors.teal.shade800,
                  ),
                  title: Text(
                    '+90 534 372 06 18',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'SourceSansPro',
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 30,
                    color: Colors.teal.shade800,
                  ),
                  title: Text(
                    'm.yavuzyagis@gmail.com',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'SourceSansPro',
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.web,
                    size: 30,
                    color: Colors.teal.shade800,
                  ),
                  title: GestureDetector(
                    child: Text(
                      'www.yavuzyagis.com',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'SourceSansPro',
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
