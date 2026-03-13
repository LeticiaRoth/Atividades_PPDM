import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/cardProdutos.dart';

class Telahome extends StatelessWidget {
  const Telahome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Tela de Produtos",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 221, 194, 184),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 59, 40, 32),
      ),

      body: Container(
        padding: const EdgeInsets.all(13),
        
        child: Column(
          spacing: 20,
          children: [
            Cardprodutos(imagem: 'assets/BoloChocolate.png', texto: 'Bolo Chocolate - 60g', valor: 'R\$5,00', descricao: 'Bolo da Ana Maria de Chocolate',),
            Cardprodutos(imagem: 'assets/BoloBaunilha.png', texto: 'Bolo Baunilha - 60g', valor: 'R\$5,00', descricao: 'Bolo da Ana Maria de Baunilha',),
            Cardprodutos(imagem: 'assets/BoloCookies.png', texto: 'Bolo Cookies - 60g', valor: 'R\$5,00',descricao: 'Bolo da Ana Maria de Cookies',),
            Cardprodutos(imagem: 'assets/BoloMorango.png', texto: 'Bolo Morango - 60g', valor: 'R\$5,00', descricao: 'Bolo da Ana Maria de Morango',),
            Cardprodutos(imagem: 'assets/BoloBanoffe.png', texto: 'Bolo Banoffe - 60g', valor: 'R\$5,00', descricao: 'Bolo da Ana Maria de Banoffe',),

          ],
        ),
      ),
    );
  }
}
