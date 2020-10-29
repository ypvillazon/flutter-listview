import 'package:flutter/material.dart';
import 'package:listview/models/recarga.dart';

class RecargaListTile extends StatelessWidget {

  final Recarga r ;

  RecargaListTile(this.r);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        key: UniqueKey(),
        enabled: true,
        leading: Icon(r.enviada ? Icons.send : Icons.info_outline, size: 40, color: (r.enviada ? Colors.green : Colors.blue)),
        title: Text('${r.telefono} (\$${r.monto.toString()})',  style: TextStyle(fontSize:16, color: Colors.black)),
        subtitle: Text(r.nombre, style: TextStyle(color: Colors.black54)),
        trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(r.cobrada ? Icons.money_off : Icons.attach_money, color: r.cobrada ? Colors.green : Colors.red)
            ]
        )
    );
  }
}