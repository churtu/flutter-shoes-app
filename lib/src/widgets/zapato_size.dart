
import 'package:adv_shoes_app/src/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ZapatoSize extends StatelessWidget {
  final bool fullscreen;
  const ZapatoSize({
    super.key, 
    this.fullscreen = false
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: fullscreen ? 5 : 30, 
        vertical: fullscreen ? 5 : 0
      ),
      width: double.infinity,
      height: fullscreen ? 410 : 430,
      decoration: BoxDecoration(
        color: const Color(0xffffcf53),
        borderRadius: !fullscreen 
        ? BorderRadius.circular(50)
        : const BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight:  Radius.circular(50),
          topLeft:  Radius.circular(40),
          topRight:  Radius.circular(40))
      ),
      child: Column(
        children: [
          _ZapatoConSombra(),
          if(!fullscreen) _Tallas()
        ],
      ),
    );
  }
}

class _Tallas extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          _Talla(7),
          _Talla(7.5),
          _Talla(8),
          _Talla(8.5),
          _Talla(9),
          _Talla(9.5),
        ],
      ),
    );
  }
}

class _Talla extends StatelessWidget {
  final double numero;

  const _Talla(this.numero);
  @override
  Widget build(BuildContext context) {
    final zapatoProvider = Provider.of<ZapatoProvider>(context);
    bool isSelected = (numero == zapatoProvider.talla);

    return GestureDetector(
      onTap: () => zapatoProvider.talla = numero,
      child: Container(
        alignment: Alignment.center,
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xfff1a23a) : Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: isSelected ? const [
            BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 10,
              color: Color(0xfff1a23a)
            )
          ] : null
    
        ),
        child: Text(
          numero.toString().replaceAll('.0', ''),
          style: TextStyle(
            color: isSelected ? Colors.white : const Color(0xfff1a23a),
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}

class _ZapatoConSombra extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final zapatoProvider = Provider.of<ZapatoProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Stack(
        children: [
          _Sombra(),
          Image(
            image: AssetImage(zapatoProvider.image),
          )
        ],
      ),
    );
  }
}

class _Sombra extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      child: Transform.rotate(
        angle: -.5,
        child: Container(
          width: 230,
          height: 120,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(100),
            boxShadow: const [
              BoxShadow(
                blurRadius: 40,
                color: Color(0xffeaa14e)
              )
            ]
          ),
        ),
      ),
    );
  }
}