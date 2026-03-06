import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/dashboard.dart';
 

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Definição das variaveis de cores, pode usar const também
    var purpleNubank = Color(0xFF7C0BB4);
    var lightPurple = Color(0xFFA55DC9);

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          //Gradiente 
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              purpleNubank,
              lightPurple,
            ],
          ),
        ),
        child: Column(
          children: [
            // Topo com o Título
            Container(
              height: 180,
              child: Center(
                child: Text(
                  'Nubank',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            
            // Card Branco, funciona como um filho
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
                ),
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(24),
                  child: Column(
                    children: [
                      Text(
                        'Bem-Vindo (a)',
                        style: TextStyle(
                          color: purpleNubank,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Preencha as informações abaixo para\nacessar sua conta.',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                      
                      SizedBox(height: 32),

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

                      SizedBox(height: 16),

                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Senha',
                          filled: true,
                          fillColor: Colors.grey[100],
                          suffixIcon: Icon(Icons.visibility_off_outlined, color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),

                      SizedBox(height: 24),

                      SizedBox(
                        width: double.infinity,
                        height: 55,
                        child: ElevatedButton(
                          onPressed: () {
                            //Navegação do botão para o Dashboard
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Dashboard()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: purpleNubank,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Text(
                            'Entrar', 
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
                          ),
                        ),
                      ),

                      SizedBox(height: 20),
                      Text('Ou entre com', style: TextStyle(color: Colors.grey[500])),
                      SizedBox(height: 20),

                      // Botão Google
                      SizedBox(
                        width: double.infinity,
                        height: 55,
                        child: OutlinedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.google, color: Colors.black87, size: 28),
                          label: Text('Continue com Google', style: TextStyle(color: Colors.black87)),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.grey[300]!),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          ),
                        ),
                      ),

                      SizedBox(height: 12),

                      // Botão Apple
                      SizedBox(
                        width: double.infinity,
                        height: 55,
                        child: OutlinedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.apple, color: Colors.black87, size: 28),
                          label: Text('Continue com Apple', style: TextStyle(color: Colors.black87)),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.grey[300]!),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          ),
                        ),
                      ),

                      SizedBox(height: 30),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Não possui conta? ', style: TextStyle(color: Colors.grey[700])),
                          Text(
                            'Cadastre-se',
                            style: TextStyle(
                              color: purpleNubank, 
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}