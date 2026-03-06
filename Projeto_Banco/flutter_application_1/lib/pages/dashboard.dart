import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var purpleNubank = Color(0xFF7C0BB4);
    var lightPurple = Color(0xFFE8DFF0);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Cabeçalho Roxo fixo no topo
          Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(24, 60, 24, 20),
            color: purpleNubank,
            child: Text(
              'Olá, Letícia Roth',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Área de scroll para o conteúdo abaixo do cabeçalho
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sua conta',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),

                  // Card de Saldo 
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(color: Colors.black12, blurRadius: 5)
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: purpleNubank,
                            borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                          ),
                          child: Text(
                            'Saldo Disponível',
                            style: TextStyle(
                              color: Colors.white, 
                              fontSize: 18, 
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(24),
                          decoration: BoxDecoration(
                            color: lightPurple,
                            borderRadius: BorderRadius.vertical(bottom: Radius.circular(12)),
                          ),
                          child: Text(
                            'R\$3.000,00',
                            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 24),

                  // Atalhos em Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Botão PIX
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[300]!),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Icon(Icons.pix, color: purpleNubank, size: 30),
                          ),
                          SizedBox(height: 8),
                          Text('PIX', style: TextStyle(fontWeight: FontWeight.w500)),
                        ],
                      ),
                      // Botão QRCode
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[300]!),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Icon(Icons.qr_code_scanner, color: purpleNubank, size: 30),
                          ),
                          SizedBox(height: 8),
                          Text('QRCode', style: TextStyle(fontWeight: FontWeight.w500)),
                        ],
                      ),
                      // Botão Pagar
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[300]!),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Icon(Icons.payments, color: purpleNubank, size: 30),
                          ),
                          SizedBox(height: 8),
                          Text('Pagar', style: TextStyle(fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 32),

                  Text(
                    'Histórico de Tranferências',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text('Lista das suas tranferências', style: TextStyle(color: Colors.grey)),
                  
                  SizedBox(height: 16),

                  // Filtros
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        decoration: BoxDecoration(
                          color: purpleNubank.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: purpleNubank),
                        ),
                        child: Text('All', style: TextStyle(color: purpleNubank, fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(width: 8),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text('Income', style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),

                  SizedBox(height: 16),

                  // Item de Transação 1
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.grey[100]!)),
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey[100],
                          child: Icon(Icons.attach_money, color: Colors.grey),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('JoeMoe Coffee', style: TextStyle(fontWeight: FontWeight.bold)),
                              Text('Paid with: Visa **** 2192', style: TextStyle(color: Colors.grey, fontSize: 12)),
                            ],
                          ),
                        ),
                        Text('\$50.21', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),

                  // Item de Transação 2 
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.grey[100]!)),
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey[100],
                          child: Icon(Icons.attach_money, color: Colors.grey),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('JoeMoe Coffee', style: TextStyle(fontWeight: FontWeight.bold)),
                              Text('Paid with: Visa **** 2192', style: TextStyle(color: Colors.grey, fontSize: 12)),
                            ],
                          ),
                        ),
                        Text('\$50.21', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}