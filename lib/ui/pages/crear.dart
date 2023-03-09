import 'package:clientes_crud/domain/models/cliente.dart';
import 'package:clientes_crud/ui/pages/widget.dart';
import 'package:flutter/material.dart';

class CrearCliente extends StatefulWidget {
  const CrearCliente({super.key});

  @override
  State<CrearCliente> createState() => _CrearClienteState();
}

class _CrearClienteState extends State<CrearCliente> {
  TextEditingController controlnombre = TextEditingController();
  TextEditingController controlapellido = TextEditingController();
  TextEditingController controltelefono = TextEditingController();
  TextEditingController controlestado = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Crear Nuevo Cliente"),
      ),
      body: Column(
        children: [
          Textos(controlnombre: controlnombre, nombre: 'Nombre'),
          Textos(controlnombre: controlapellido, nombre: 'Apellido'),
          Textos(controlnombre: controltelefono, nombre: 'Ingrese Telefono'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  Cliente cli = Cliente(
                      nombre: controlnombre.text,
                      apellido: controlapellido.text,
                      telefono: controltelefono.text,
                      estado: "I");

                  Navigator.pop(context, cli);
                },
                child: const Text('Guardar')),
          )
        ],
      ),
    );
  }
}
