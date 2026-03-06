import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/onboarding.dart';

class Cadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Definição das variáveis de cor
    var purpleNubank = Color(0xFF7C0BB4);
    var lightPurple = Color(0xFFA55DC9);
    var darkPurple = Color(0xFF430363);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            //Dentro do box decoration tem essa propriedade de forma que eu coloco o alinhamento e depois as cores
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                darkPurple,
                purpleNubank,
                lightPurple,
                Colors.white,
              ],
              stops: [0.0, 0.33, 0.66, 1.0],
            ),
          ),
          child: Padding(
            //Afasta da tela, primeiro valor em esquerda e direita, depois em cima e baixo
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Center(
                    child: Image.network(
                      'https://logodownload.org/wp-content/uploads/2019/08/nubank-logo-3.png',
                      width: 150,
                    ),
                  ),
                ),

                // Texto de Cabeçalho
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Cadastro',
                      style: TextStyle(
                        color: Colors.white, 
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Comece agora sua experiência Nubank',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                  
                //Parte do formulário
                Expanded(
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Usuário',
                            filled: true,
                            fillColor: Colors.grey[100],
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        //Email
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Email',
                            filled: true,
                            fillColor: Colors.grey[100],
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        //Senha
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Senha',
                            filled: true,
                            fillColor: Colors.grey[100],
                            suffixIcon: Icon(Icons.visibility_off_outlined,
                                color: Colors.grey),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 16),
                        //Botão
                        SizedBox(
                          width: 200,
                          height: 55,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Onboarding)
                              )
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: purpleNubank,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: Text(
                              'Entrar',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}