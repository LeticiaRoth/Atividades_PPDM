import 'package:flutter/material.dart';

class Descricao extends StatelessWidget {
  String texto; // Componente espera receber uma variável String
  //Quando coloca interrogação ele não é obrigatorio
  Color? cor = Colors.black; //se não colocar nada fica com a cor padrão default

  //Construtor obrigatorio
  //Classes que esperam receber atributos que podem ser obrigatorios ou opcionais
  // Quando receber varios valores diferentes eu tiro o const de constante
  Descricao({super.key, required this.texto, this.cor});

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: TextStyle(
        color: cor,
        fontWeight: FontWeight.bold,
        fontSize: 30,
      ),
    );
  }
}
