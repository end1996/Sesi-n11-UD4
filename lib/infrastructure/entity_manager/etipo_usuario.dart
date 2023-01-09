// ignore_for_file: camel_case_types

import '../../domain/entities/tipo_usuario.dart';
import '../controllers/ctipo_usuario.dart';

class etipo_usuario {
  ctipo_usuario ec = ctipo_usuario();
  etipo_usuario() {
    ec = ctipo_usuario();
  }
  void selectE() {
    ec.select();
  }

  void insertE(String codigo, String nombre) {
    ec.insert(tipo_usuario(codigo, nombre));
  }

  void updateE(String codigo, String nombre) {
    ec.update(tipo_usuario(codigo, nombre));
  }

  void deleteE(String codigo) {
    ec.delete(tipo_usuario(codigo, ''));
  }
}
