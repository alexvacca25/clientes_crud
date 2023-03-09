import 'package:clientes_crud/ui/pages/lista.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crud Clientes',
      theme: ThemeData(primarySwatch: Colors.blueGrey, fontFamily: 'monserrat'),
      home: const ListaClientes(),
    );
  }
}
