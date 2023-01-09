import 'package:flutter/material.dart';
import 'package:flutter_application_6_simuladorapk/application/fmrPrincipal.dart';
import 'package:flutter_application_6_simuladorapk/application/frm_mant_tipo_usuario.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: frmPrincipal(),
    );
  }
}
