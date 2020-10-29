import 'package:flutter/material.dart';
import 'package:listview/models/recarga.dart';
import 'package:listview/ui/pages/home.dart';
import 'package:listview/ui/pages/list1.dart';
import 'package:listview/ui/pages/list2.dart';
import 'package:listview/ui/pages/list3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Listas de objetos',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
      routes: {
        '/lista1': (context) => Lista1Page(),
        '/lista2': (context) => Lista2Page(),
        '/lista3': (context) => Lista3Page()
      },
    );
  }
}
