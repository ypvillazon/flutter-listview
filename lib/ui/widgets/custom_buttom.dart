import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {

  final String title ;
  final String route ;

  CustomButtom(this.title, this.route);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.red,
      elevation: 5,
      child: Text(title, style: TextStyle(color: Colors.white)),
      onPressed: () {
        Navigator.pushNamed(context, route);
      }
    );
  }

}