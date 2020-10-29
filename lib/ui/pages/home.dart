import 'package:flutter/material.dart';
import 'package:listview/ui/widgets/custom_buttom.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomButtom('ListView.separated(...)', '/lista1'),
            CustomButtom('ListView.builder(...)', '/lista2'),
            CustomButtom('ListView(...)', '/lista3')
          ],
        ),
      ),
    );
  }
}