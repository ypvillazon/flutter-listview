class Recarga {
  String telefono;
  String nombre;
  bool enviada;
  bool cobrada;
  int monto;

  Recarga({this.telefono, this.nombre, this.enviada, this.cobrada, this.monto});

  Recarga.fromMap(Map<String, dynamic> map) {
    telefono = map['telefono'];
    nombre = map['nombre'];
    enviada = map['enviada'];
    cobrada = map['cobrada'];
    monto = map['monto'];
  }

}