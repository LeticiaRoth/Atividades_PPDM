import 'package:flutter/material.dart';

class Titulo extends StatelessWidget {
  const Titulo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "COFFE SHOP", style: TextStyle(
        color: const Color.fromARGB(255, 61, 47, 42),
        fontSize: 30,
        fontWeight: FontWeight.bold, //expessura
        letterSpacing: 2, //espaçamento letras
      ),
      
    );
  }
}