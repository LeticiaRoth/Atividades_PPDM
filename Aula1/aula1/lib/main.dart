//Importa os componentes do Flutter
import 'package:flutter/material.dart';
import 'dart:io';
 
void main() {
  //Para rodar o aplicativo, é o runApp
  //Dentro do parentenses eu coloco minha tela inicial
  runApp(TelaInicial());
}

//Preciso colocar em todas as telas, para ele entender 
class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  //Toda vez que roda ele retorna 
  @override
  Widget build(BuildContext context) {
    //Material app: Prove os componentes para a tela
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      //Divide em três partes,(app bar, body e footer/navbar bottom)
      home:Scaffold(
      
      // PARTE 1 - APPBAR
      appBar: AppBar(

        //Para centralizar
        centerTitle: true,

        //Estilo do texto em completpo
        title: Text("Tela inicial, app1", 
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
          ),
        ),
  
        backgroundColor: const Color.fromARGB(255, 16, 5, 83),
        elevation: 6,
        shadowColor: Colors.black.withOpacity(0.5),
      ),

      //PARTE 2 - Body
      body: 
      Column(
        //Espaçamento fixo para os elementos
        spacing: 20.0,
        children: [
          //Container usar color
          Container(width: 250, height: 50, color: const Color.fromARGB(255, 184, 8, 160), margin: EdgeInsets.only(top:20),),
          Container(width: 250, height: 50, color: const Color.fromARGB(255, 155, 11, 148),),
          Container(width: 250, height: 50, color: const Color.fromARGB(255, 226, 52, 174),),


          //Um ao lado do outro (Row)
          Container(child: Row(
            spacing: 10.0,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(width: 70, height: 50, color: const Color.fromARGB(255, 177, 190, 115),),
              Container(width: 70, height: 50, color: const Color.fromARGB(255, 155, 105, 11),),            
              Container(width: 70, height: 50, color: const Color.fromARGB(255, 97, 41, 4),),            
              ],
          ),),


          //Sobrepondo container (Stack)
          Container(child: Stack(
            children: [
              Container(width: 70, height: 50, color: const Color.fromARGB(255, 177, 190, 115),),
              Container(width: 70, height: 50, color: const Color.fromARGB(255, 155, 105, 11),),            
              Container(width: 70, height: 50, color: const Color.fromARGB(255, 218, 125, 63),),            
              ],
          ),), 
        ], 
      ),
      )
    );

    
  }
}



 