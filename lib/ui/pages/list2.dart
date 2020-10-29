import 'package:flutter/material.dart';
import 'package:listview/models/recarga.dart';
import 'package:listview/models/data.dart';
import 'package:listview/ui/widgets/recarga_list_tile.dart';

class Lista2Page extends StatefulWidget {
  @override
  State createState() => new _RecargaPage();
}

class _RecargaPage extends State<Lista2Page> {

  List<Recarga> _recargas = [] ;

  @override
  void initState() {
    _recargas = RECARGAS.map((recarga) => Recarga.fromMap(recarga)).toList() ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
            title: Text("Recargas")
        ),
        body: Center(child:
        Column(children: <Widget>[
            Expanded(
            child:
            (_recargas.length == 0)
                ?
            CircularProgressIndicator()
                :
            ListView.builder(
                itemCount: _recargas.length,
                itemBuilder: (context, index) {
                  return RecargaListTile(_recargas[index]) ;
                }
            )
            )

        ],)
    ));
  }
}
