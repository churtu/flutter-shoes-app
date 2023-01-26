
import 'package:adv_shoes_app/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AgregarCarrito extends StatelessWidget {
  final double monto;
  const AgregarCarrito({
    super.key, 
    required this.monto
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(.1),
        borderRadius: BorderRadius.circular(100)
      ),
      child: Row(
        children: [
          const SizedBox(width: 20),
          Text(
            '\$$monto',
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold
            ),
          ),
          const Spacer(),
          const BotonNaranja(texto: 'Add to cart'),
          const SizedBox(width: 20)
        ],
      ),
    );
  }
}