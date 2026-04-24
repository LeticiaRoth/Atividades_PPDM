import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TelaPut extends StatefulWidget {
  const TelaPut({super.key});
  @override
  State<TelaPut> createState() => _TelaPutState();
}

class _TelaPutState extends State<TelaPut> {
  List listaApi = [];
  List controladores = [];
  static const Color primaryBlue = Color(0xFF1A4B8E);
  static const Color iceBlue = Color(0xFFF0F7FF);

  @override
  void initState() { super.initState(); fazerGet(); }

  void fazerGet() async {
    final resposta = await http.get(Uri.parse("https://jsonserverds18.onrender.com/tasks"));
    if (resposta.statusCode == 200) {
      final dados = jsonDecode(resposta.body);
      setState(() {
        listaApi = dados;
        controladores = List.generate(listaApi.length, (index) => TextEditingController());
      });
    }
  }

  void fazerPut(final id, final index) async {
    final resposta = await http.patch(
      Uri.parse("https://jsonserverds18.onrender.com/tasks/$id"),
      headers: {"Content-type": "application/json"},
      body: jsonEncode({"title": controladores[index].text})
    );
    if (resposta.statusCode == 200) {
      fazerGet();
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Atualizado com sucesso!"), backgroundColor: primaryBlue));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: iceBlue,
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0, title: const Text("EDITAR", style: TextStyle(color: primaryBlue, fontWeight: FontWeight.bold))),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: listaApi.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 15),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), border: Border.all(color: primaryBlue.withOpacity(0.1))),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controladores[index],
                    decoration: InputDecoration(hintText: listaApi[index]["title"], border: InputBorder.none),
                  ),
                ),
                IconButton(icon: const Icon(Icons.check_circle, color: primaryBlue), onPressed: () => fazerPut(listaApi[index]["id"], index))
              ],
            ),
          );
        },
      ),
    );
  }
}