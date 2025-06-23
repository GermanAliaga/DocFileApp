class Sistema {
  var id;
  var categoria;
  var nombre;
  var fecha;
  var imagen;

  Sistema({this.id, required this.categoria, required this.nombre, required this.fecha, required this.imagen});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'categoria': categoria,
      'nombre': nombre,
      'fecha': fecha,
      'imagen': imagen,
    };
  }

  factory Sistema.fromMap(Map<String, dynamic> map) {
    return Sistema(id: map['id'], categoria: map['categoria'], nombre: map['nombre'], fecha: map['fecha'], imagen: map['imagen']);
  }

  @override
  String toString() => 'Examen(id: $id, categoria: $categoria, nombre: $nombre, fecha: $fecha, imagen: $imagen)';
}