import 'package:flutter/material.dart';
import 'ParsingData.dart';
import 'Email.dart';
import 'Password.dart';

void main() {
  runApp(MovieAppStoreStartPage());
}

class MovieAppStoreStartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TopPage(),
              BottomPage(),
            ],
          ),
        ),
      ),
    );
  }
}

class TopPage extends StatelessWidget {
  const TopPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80.0, left: 50, bottom: 30),
            child: Image.asset(
              'images/logo.png',
              width: 120,
            ),
          ),
          Text(
            'Boketo',
            style: TextStyle(fontSize: 60),
          ),
        ],
      ),
    );
  }
}

class BottomPage extends StatelessWidget {
  const BottomPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.blue[900],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                offset: Offset(0.6, -0.6),
                spreadRadius: 2,
                color: Colors.blue[100],
              )
            ]),
        child: Column(
          children: [
            SizedBox(height: 30),
            Email(),
            SizedBox(
              height: 30,
            ),
            Password(),
            SizedBox(
              height: 30,
            ),
            FlatButton(
              onPressed: () {},
              child: Text('Submit'),
              color: Colors.amber,
              splashColor: Colors.blue[900],
            )
          ],
        ),
      ),
    );
  }
}
