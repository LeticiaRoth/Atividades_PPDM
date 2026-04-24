import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TelaPost extends StatefulWidget {
  const TelaPost({super.key});
  @override
  State<TelaPost> createState() => _TelaPostState();
}

class _TelaPostState extends State<TelaPost> {
  TextEditingController valorDigitado = TextEditingController();
  static const Color primaryBlue = Color(0xFF1A4B8E);
  static const Color iceBlue = Color(0xFFF0F7FF);

  void fazerPost() async {
    if (valorDigitado.text.isEmpty) return;
    final resposta = await http.post(
      Uri.parse("https://jsonserverds18.onrender.com/tasks"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"title": valorDigitado.text})
    );
    if (resposta.statusCode == 201 || resposta.statusCode == 200) {
      valorDigitado.clear();
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Tarefa salva!", textAlign: TextAlign.center), backgroundColor: primaryBlue, behavior: SnackBarBehavior.floating));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: iceBlue,
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0, centerTitle: true, title: const Text("NOVA TAREFA", style: TextStyle(color: primaryBlue, fontSize: 14, fontWeight: FontWeight.bold))),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            const SizedBox(height: 40),
            Container(
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), boxShadow: [BoxShadow(color: primaryBlue.withOpacity(0.05), blurRadius: 15)]),
              child: TextField(
                controller: valorDigitado,
                decoration: const InputDecoration(hintText: "O que vamos fazer hoje?", prefixIcon: Icon(Icons.add_task_rounded, color: primaryBlue), border: InputBorder.none, contentPadding: EdgeInsets.all(20)),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity, height: 60,
              child: ElevatedButton(
                onPressed: fazerPost,
                style: ElevatedButton.styleFrom(backgroundColor: primaryBlue, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                child: const Text("ADICIONAR AO PLANO", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}