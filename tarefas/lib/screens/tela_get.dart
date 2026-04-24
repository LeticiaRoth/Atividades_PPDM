import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TelaGet extends StatefulWidget {
  const TelaGet({super.key});
  @override
  State<TelaGet> createState() => _TelaGetState();
}

class _TelaGetState extends State<TelaGet> {
  String resultado = "Sincronize para ler a nuvem";
  bool isLoading = false;

  static const Color primaryBlue = Color(0xFF1A4B8E);
  static const Color accentBlue = Color(0xFF448AFF);
  static const Color iceBlue = Color(0xFFF0F7FF);

  void fazerGet() async {
    setState(() => isLoading = true);
    try {
      final resposta = await http.get(Uri.parse("https://jsonserverds18.onrender.com/tasks")).timeout(const Duration(seconds: 5));
      if (resposta.statusCode == 200) {
        final dados = jsonDecode(resposta.body);
        setState(() {
          resultado = dados.isNotEmpty ? dados[0]["title"] : "Lista vazia";
        });
      }
    } catch (e) {
      setState(() => resultado = "Erro de conexão");
    } finally {
      setState(() => isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: iceBlue,
      appBar: AppBar(
        backgroundColor: Colors.transparent, elevation: 0, centerTitle: true,
        title: const Text("CONSULTA", style: TextStyle(color: primaryBlue, fontSize: 14, fontWeight: FontWeight.bold, letterSpacing: 2)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(isLoading ? Icons.sync : Icons.cloud_queue_rounded, size: 60, color: primaryBlue.withOpacity(0.3)),
            const SizedBox(height: 30),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(35),
              decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30),
                boxShadow: [BoxShadow(color: primaryBlue.withOpacity(0.05), blurRadius: 20)],
              ),
              child: Text(resultado, textAlign: TextAlign.center, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Color(0xFF263238))),
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: 200, height: 55,
              child: ElevatedButton(
                onPressed: isLoading ? null : fazerGet,
                style: ElevatedButton.styleFrom(backgroundColor: primaryBlue, shape: const StadiumBorder()),
                child: const Text("ATUALIZAR", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}