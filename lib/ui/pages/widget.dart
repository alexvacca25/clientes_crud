
import 'package:flutter/material.dart';

class Textos extends StatelessWidget {
  const Textos({super.key, required this.controlnombre, required this.nombre});

  final TextEditingController controlnombre;
  final String nombre;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controlnombre,
      decoration: InputDecoration(
          filled: true,
          labelText: nombre,
          suffix: GestureDetector(
            child: const Icon(Icons.close),
            onTap: () {
              controlnombre.clear();
            },
          )),
    );
  }
}