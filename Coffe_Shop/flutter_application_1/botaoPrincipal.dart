import 'package:flutter/material.dart';

class Botaoprincipal extends StatelessWidget {
  Widget pagina;
  String texto;

  Botaoprincipal({super.key, required this.pagina, required this.texto});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      //Style do botão
      style: TextButton.styleFrom(
        //Cor do fundo
        backgroundColor: const Color.fromARGB(255, 141, 111, 102),
        //Cor da fonte
        foregroundColor: const Color.fromARGB(255, 72, 39, 150),
        fixedSize: Size(
          150,
          20,
        ), // Size é o tamanho definido por width and height
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => pagina),
        );
      },
      child: Text(
        texto,
        style: TextStyle(
          fontSize: 12,
          color: const Color.fromARGB(255, 65, 40, 4),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
