import 'package:flutter/material.dart';

class Cardprodutos extends StatelessWidget {
  String imagem;
  String texto;
  String valor;
  String descricao;

  Cardprodutos({
    super.key,
    required this.imagem,
    required this.texto,
    required this.valor,
    required this.descricao
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: const Color.fromARGB(255, 243, 225, 188),
        border:  Border.all(
          color: const Color.fromARGB(255, 102, 60, 4),
          width: 3

        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Imagem com espaçamento
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imagem,
              height: 110,
              width: 110,
              fit: BoxFit.cover,
            ),
          ),

          SizedBox(width: 16),

          // Textos alinhados
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                texto,
                style: const TextStyle(
                  color: Color.fromARGB(255, 46, 32, 27),
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                  fontSize: 19,
                ),
              ),
              SizedBox(height: 6),
              Text(
                valor,
                style: const TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(221, 95, 8, 8),
                ),
              ),
              SizedBox(height: 2),
              Text(
                descricao,
                style: const TextStyle(
                  fontSize: 13,
                  color: Color.fromARGB(221, 59, 41, 1),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}