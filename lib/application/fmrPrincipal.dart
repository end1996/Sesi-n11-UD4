// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'frm_mant_tipo_usuario.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const frmPrincipal());
}

class frmPrincipal extends StatefulWidget {
  const frmPrincipal({super.key});

  @override
  State<frmPrincipal> createState() => _frmPrincipalState();
}

class _frmPrincipalState extends State<frmPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   actions: [],
      //   title: Text('Principal'),
      // ),
      body: CustomScrollView(slivers: [
        const SliverAppBar(
          title: Text('Principal'),
        ),
        SliverGrid(
          delegate: SliverChildListDelegate([
            SingleChildScrollView(
                child: Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => frm_mant_tipo_usuario()));
                    },
                    child: Text('Mantenimiento tipo usuario')),
              ],
            )),
          ]),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 500,
              mainAxisSpacing: 50,
              crossAxisSpacing: 300),
        ),
      ]),
    );
  }
}
