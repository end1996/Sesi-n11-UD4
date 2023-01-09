// import 'package:flutter_application_3_splash_screen/domain/entities/tipo_usuarios.dart';
import 'package:sql_conn/sql_conn.dart';
import 'package:flutter/material.dart';

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
  Future<void> read(String qery) async {
    var res = await SqlConn.readData(qery);
    debugPrint(res.toString());
  }

  Future<void> write(String qery) async {
    var res = await SqlConn.writeData(qery);
    debugPrint(res.toString());
  }
}
