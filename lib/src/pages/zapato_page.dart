import 'package:adv_shoes_app/src/helpers/helpers.dart';
import 'package:adv_shoes_app/src/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:adv_shoes_app/src/widgets/widgets.dart';

class ZapatoPage extends StatelessWidget {
  const ZapatoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    cambiarStatusBarDark();
    return Scaffold(
      body: Column(
        children: [
          const CustomAppbar(texto: 'For You'),
          const SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ZapatoDetallesPage())
                    ),
                    child: const Hero(
                      tag: 'zapatoId',
                      child: const ZapatoSize())
                  ),
                  const ZapatoDetalles(
                      titulo: 'Nike Air Maz 720',
                      descripcion:
                          'Tempor Lorem quis aliqua Lorem elit elit nisi nisi eiusmod exercitation tempor duis aliquip do. Reprehenderit officia dolore proident ad consequat aliquip et. Nisi pariatur culpa ullamco tempor tempor aliqua. Tempor est culpa voluptate ullamco nisi.'
                          ),
                          
                ],
              ),
            ),
          ),
          const AgregarCarrito(monto: 900)
        ],
      ),
    );
  }
}
