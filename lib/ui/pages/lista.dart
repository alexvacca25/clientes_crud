import 'package:clientes_crud/ui/pages/crear.dart';
import 'package:flutter/material.dart';

import '../../domain/models/cliente.dart';

class ListaClientes extends StatefulWidget {
  const ListaClientes({super.key});

  @override
  State<ListaClientes> createState() => _ListaClientesState();
}

class _ListaClientesState extends State<ListaClientes> {
  final List _clientes = listaClientes;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listado Clientes'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.add_circle))
        ],
      ),
      body: ListView.builder(
          itemCount: _clientes.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                  "${_clientes[index].nombre} ${_clientes[index].apellido}"),
              subtitle: Text(_clientes[index].telefono),
              leading: CircleAvatar(
                child: Text(
                    "${_clientes[index].nombre.substring(0, 1)}${_clientes[index].apellido.substring(0, 1)}"),
              ),
              trailing: CircleAvatar(
                radius: 10.0,
                backgroundColor: (_clientes[index].estado == "A")
                    ? Colors.green
                    : Colors.red,
                child: Text(_clientes[index].estado),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const CrearCliente()))
              .then((respuesta) {
            _clientes.add(respuesta);
            setState(() {});
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
