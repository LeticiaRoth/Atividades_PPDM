import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/onboarding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Exemplo de como definir uma cor
    var purpleNubank = Color(0xFF7C0BB4);
    var purpleNubank2 = Color(0xFFA55DC9);

    return Scaffold(
      backgroundColor: purpleNubank,
      //Onde seria bacana colcoar para o usuário
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Dá o espaço para o filho ficar entre o topo e o botão
              Expanded(
                child: Center(
                  //Exemplo de como colocar uma imagem vindo da internet
                  child: Image.network(
                    'https://uploads.finsidersbrasil.com.br/2024/01/Nubank-Ultravioleta-1-e1625582469177.jpg',
                    color: Colors.white,
                    width: 150,
                  ),
                ),
              ),

              // Texto do meio
              Text(
                'SEU FUTURO FINANCEIRO\nCOMEÇA AQUI',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),

              SizedBox(height: 40),

              // Botao
              SizedBox(
                width: 200,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Onboarding()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: purpleNubank,
                    // O borderRadius vai dentro do shape, já que dentro do style do buton não tem a propriedade borderRadius
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: Text(
                    'COMEÇAR',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
