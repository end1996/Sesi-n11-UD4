// ignore_for_file: camel_case_types
import 'package:flutter_application_6_simuladorapk/infrastructure/entity_manager/etipo_usuario.dart';
import 'package:flutter/material.dart';
import 'package:sql_conn/sql_conn.dart';

class frm_mant_tipo_usuario extends StatefulWidget {
  const frm_mant_tipo_usuario({super.key});

  @override
  State<frm_mant_tipo_usuario> createState() => _frm_mant_tipo_usuario();
}
final txtcodTU = TextEditingController();
final txtnomTU = TextEditingController();

class _frm_mant_tipo_usuario extends State<frm_mant_tipo_usuario> {
  etipo_usuario cn = etipo_usuario();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Mantenimiento tipo usuario'),),
      body: Column(
        children: [
          TextField(
            controller: txtcodTU,
          ),
          TextField(
            controller: txtnomTU,
          ),
          ElevatedButton(onPressed: () => cn.insertE(txtcodTU.text,txtnomTU.text), child: Text('Insertar')),
          ElevatedButton(onPressed: () => cn.updateE(txtcodTU.text,txtnomTU.text), child: Text('Modificar')),
          ElevatedButton(onPressed: () => cn.deleteE(txtcodTU.text), child: Text('Eliminar')),
          ElevatedButton(onPressed: () => cn.selectE(), child: Text('Listar')),
        ],
      ),
    );
  }
}
