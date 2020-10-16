import 'package:flutter/material.dart';

final TextEditingController controller = new TextEditingController();
class Email extends StatelessWidget {
  const Email({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: 'Exaple@email.com',
          labelText: 'E-mail',
          labelStyle: TextStyle(color: Colors.white),
          icon: Icon(
            Icons.email,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}