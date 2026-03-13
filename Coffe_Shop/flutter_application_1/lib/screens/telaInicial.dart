import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/botaoPrincipal.dart';
import 'package:flutter_application_1/components/descricao.dart';
import 'package:flutter_application_1/components/titulo.dart';
import 'package:flutter_application_1/screens/telaHome.dart';

//Classe do materialApp
class Telainicial extends StatelessWidget {
  const Telainicial({super.key});

  @override
  Widget build(BuildContext context) {
    //O que é retornado na tela
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Bem-Vindo",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 221, 194, 184),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 59, 40, 32),
      ),

      //Column
      body: Center(
        child: Column(
          children: [
            //Funciona dentro de uma classe
            Titulo(), // Aparece o texto Coffe Shop com estilização
            //Descrição onde ele receberá um valor específico
            Descricao(texto: "Bem Vindo ao Coffe Shop!!"),
            Descricao(
              texto: "Clique no botão para iniciar sua jornada!",
              cor: Colors.blueGrey,
            ),
            Botaoprincipal(pagina: Telahome(), texto: "CLIQUE AQUI")
          ],
        ),
      ),
    );
  }
}
