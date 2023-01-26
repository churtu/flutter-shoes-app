import 'package:adv_shoes_app/src/helpers/helpers.dart';
import 'package:adv_shoes_app/src/pages/pages.dart';
import 'package:adv_shoes_app/src/providers/providers.dart';
import 'package:adv_shoes_app/src/widgets/widgets.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ZapatoDetallesPage extends StatelessWidget {
  const ZapatoDetallesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    cambiarStatusBarLight();
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              const Hero(
                tag: 'zapatoId',
                child: ZapatoSize(fullscreen: true)),
              Positioned(
                top: 80,
                child: FloatingActionButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ZapatoPage(),)),
                  elevation: 0,
                  highlightElevation: 0,
                  backgroundColor: Colors.transparent,
                  child: const Icon(Icons.chevron_left, color: Colors.white,size: 60,))
              )
            ],
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                const ZapatoDetalles(
                    titulo: 'Nike Air Maz 720',
                    descripcion:
                        'Tempor Lorem quis aliqua Lorem elit elit nisi nisi eiusmod exercitation tempor duis aliquip do. Reprehenderit officia dolore proident ad consequat aliquip et. Nisi pariatur culpa ullamco tempor tempor aliqua. Tempor est culpa voluptate ullamco nisi.'),
                _ComprarAhora(),
                _ColoresYmas(),
                _BotonesCirculares()
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class _BotonesCirculares extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
            padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const _BotonSombreado(
            Icon(Icons.favorite, color: Colors.red, size: 25)
          ),
          _BotonSombreado(
            Icon(Icons.shopping_cart_rounded, color: Colors.grey.withOpacity(.4), size: 25)
          ),
          _BotonSombreado(
            Icon(Icons.settings, color: Colors.grey.withOpacity(.4), size: 25)
          ),
        ],
      ),
    );
  }
}

class _BotonSombreado extends StatelessWidget {
  final Icon icon;

  const _BotonSombreado(this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: -5,
            blurRadius: 20,
            offset: Offset(0, 10)
          )
        ]
      ),
      child: icon,
    );
  }
}

class _ColoresYmas extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Expanded(
            child: Stack(
              children: const [
                Positioned(
                  left: 90,
                  child: _BotonColor(Color(0xffc6d642),4, 'verde.png')),    
                Positioned(
                  left: 60,
                  child: _BotonColor(Color(0xffffad29),3, 'amarillo.png')),     
                Positioned(
                  left: 30,
                  child: _BotonColor(Color(0xff2099f1),2, 'azul.png')),    
                _BotonColor(Color(0xff364d56),1, 'negro.png'),
              ],
            )
          ),
          const BotonNaranja(
            color: Color(0xffffc675),
            texto: 'More related items',
            alto: 30,
            ancho: 170,
          )
        ],
      ),
    );
  }
}

class _BotonColor extends StatelessWidget {
  final int index;
  final Color color;
  final String image;

  const _BotonColor(this.color, this.index, this.image);
 

  @override
  Widget build(BuildContext context) {
    final zapatoProvider = Provider.of<ZapatoProvider>(context);
    return FadeInLeft(
      duration: const Duration(milliseconds: 300),
      delay: Duration(milliseconds: 100*index),
      child: GestureDetector(
        onTap: () {
          zapatoProvider.image = 'assets/imgs/$image';
        },
        child: Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle
          ),
        ),
      ),
    );
  }
}

class _ComprarAhora extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          const Text('\$180.0',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          const Spacer(),
          Bounce(
            delay: const Duration(seconds: 1),
            from: 8,
            child: const BotonNaranja(
              texto: 'Buy Now',
              alto: 40,
              ancho: 120,
            ),
          )
        ],
      ),
    );
  }
}
