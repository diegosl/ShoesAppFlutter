import 'package:flutter/material.dart';

class ZapatoSizePreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Container(
        width: double.infinity,
        height: 430,
        decoration: BoxDecoration(
            color: Color(0xffFFCF53), borderRadius: BorderRadius.circular(50)),
        child: Column(
          children: [
            // Zapato con su sombra
            Positioned(bottom: 20, right: 0, child: _ZapatoSombra()),
            _ZapatosConSombra(),
          ],
        ),
      ),
    );
  }
}

class _ZapatosConSombra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Stack(
        children: [
          Image(
            image: AssetImage('assets/imgs/azul.png'),
          )
        ],
      ),
    );
  }
}

class _ZapatoSombra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        width: 230,
        height: 120,
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(100),
            boxShadow: [BoxShadow(color: Color(0xffEA14E), blurRadius: 40)]),
      ),
    );
  }
}
