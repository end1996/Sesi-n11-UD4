import 'package:flutter_application_6_simuladorapk/infrastructure/controllers/conexion.dart';
import '../../domain/entities/tipo_usuario.dart';

class ctipo_usuario {
  conexion con = conexion();
  ctipo_usuario() {
    con = conexion();
  }
  void select() {
    con.read("select * from tipo_usuarios");
  }

  void insert(tipo_usuario dato) {
    con.write(
        "insert into tipo_usuarios values ('${dato.Codigo}','${dato.Nombre}')");
  }

  void update(tipo_usuario dato) {
    con.write(
        "update tipo_usuarios set nombre='${dato.Nombre}' where codigo= '${dato.Codigo}'");
  }

  void delete(tipo_usuario dato) {
    con.write("delete from tipo_usuarios where codigo= '${dato.Codigo}'");
  }
}
