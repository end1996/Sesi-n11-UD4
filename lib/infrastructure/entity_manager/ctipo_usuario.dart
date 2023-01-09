// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:sql_conn/sql_conn.dart';

import '../../domain/entities/tipo_usuario.dart';

class conexion {
  Future<void> connect() async {
    debugPrint("Connecting...");
    try {
      debugPrint("LOADING");
      await SqlConn.connect(
          ip: "192.168.1.5",
          port: "1433",
          databaseName: "BDBiblioteca",
          username: "sa",
          password: "12345");
      debugPrint("Conectado!");
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      debugPrint('');
    }
  }

  conexion() {
    connect();
  }
  Future<void> read() async {
    var res = await SqlConn.readData("select * from tipo_usuarios");
    debugPrint(res.toString());
  }

  Future<void> writeI(tipo_usuario dato) async {
    var res = await SqlConn.writeData(
        "insert into tipo_usuarios values ('${dato.Codigo}','${dato.Nombre}')");
    debugPrint(res.toString());
  }

  Future<void> writeD(tipo_usuario dato) async {
    var res = await SqlConn.writeData(
        "delete from tipo_usuarios where codigo= '${dato.Codigo}'");
    debugPrint(res.toString());
  }

  Future<void> writeU(tipo_usuario dato) async {
    var res = await SqlConn.writeData(
        "update tipo_usuarios set nombre='${dato.Nombre}' where codigo= '${dato.Codigo}'");
    debugPrint(res.toString());
  }
}
