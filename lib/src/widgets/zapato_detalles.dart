

import 'package:flutter/material.dart';

class ZapatoDetalles extends StatelessWidget {
  final String titulo;
  final String descripcion;
  const ZapatoDetalles({super.key, required this.titulo, required this.descripcion});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Text(
            titulo,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700
            ),
          ),
          const SizedBox(height: 20),
          Text(
            descripcion,
            style: const TextStyle(
              color: Colors.black54,
              height: 1.6
            ),
          )
        ],
      ),
    );
  }
}