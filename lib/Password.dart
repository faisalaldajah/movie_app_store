import 'package:flutter/material.dart';

final TextEditingController controller = new TextEditingController();

class Password extends StatelessWidget {
  const Password({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: '*********',
          labelText: 'Password',
          labelStyle: TextStyle(color: Colors.white),
          icon: Icon(
            Icons.security,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}