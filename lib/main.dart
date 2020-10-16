import 'package:flutter/material.dart';
import 'ParsingData.dart';

void main() {
  runApp(MovieAppStoreStartPage());
}

class MovieAppStoreStartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(),
      ),
    );
  }
}
