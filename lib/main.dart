import 'package:flutter/material.dart';
import 'ParsingData.dart';

void main() {
  runApp(MovieAppStoreStartPage());
}

class MovieAppStoreStartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ParsingData(),
      ),
    );
  }
}
