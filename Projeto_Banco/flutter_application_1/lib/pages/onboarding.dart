import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login.dart';

class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var purpleNubank = Color.fromARGB(255, 145, 40, 197);
    var purpleNubank2 = Color.fromARGB(255, 237, 219, 247);

    return Scaffold(
      backgroundColor: Colors.black, // Fundo preto conforme a imagem
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(27.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Alinha os textos à esquerda
            children: [
              // Imagem do cartão com bordas arredondadas
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'assets/fotoCartao.png',
                  height: 400,
                  width: 500,
                  fit: BoxFit.cover,
                ),
              ),

              SizedBox(height: 14),

              // Título
              Text(
                'Nubank',
                style: TextStyle(
                  color: purpleNubank,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 16),

              // Descrição
              Text(
                'O Nubank surgiu para desafiar os bancos tradicionais, oferecendo uma experiência 100% digital, simples e transparente que conquistou milhões de clientes na América Latina.',
                style: TextStyle(
                  color: purpleNubank2,
                  fontSize: 14,
                  height: 1.5, // Melhora o espaçamento entre linhas
                ),
              ),

              Spacer(), // Joga o indicador e o botão para o fim da tela

              // So de exemplo os tracos
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(width: 20, height: 3, color: Colors.grey),
                    SizedBox(width: 8),
                    Container(width: 20, height: 3, color: Colors.white),
                  ],
                ),
              ),

              SizedBox(height: 32),

              // Botão de Login
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: purpleNubank,
                    foregroundColor: Colors.white,
                    shape: StadiumBorder(),
                  ),
                  child: Text(
                    'Login',
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