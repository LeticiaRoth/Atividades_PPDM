import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TelaDelete extends StatefulWidget {
  const TelaDelete({super.key});
  @override
  State<TelaDelete> createState() => _TelaDeleteState();
}

class _TelaDeleteState extends State<TelaDelete> {
  List listApi = [];
  static const Color primaryBlue = Color(0xFF1A4B8E);
  static const Color iceBlue = Color(0xFFF0F7FF);

  @override
  void initState() { super.initState(); fazerGet(); }

  void fazerGet() async {
    final resposta = await http.get(Uri.parse("https://jsonserverds18.onrender.com/tasks"));
    if (resposta.statusCode == 200) setState(() => listApi = jsonDecode(resposta.body));
  }

  void fazerDelete(final id) async {
    await http.delete(Uri.parse("https://jsonserverds18.onrender.com/tasks/$id"));
    fazerGet();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: iceBlue,
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0, title: const Text("EXCLUIR", style: TextStyle(color: primaryBlue, fontWeight: FontWeight.bold))),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: listApi.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 0, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            margin: const EdgeInsets.only(bottom: 10),
            child: ListTile(
              title: Text(listApi[index]["title"] ?? ""),
              trailing: IconButton(icon: const Icon(Icons.delete_sweep, color: Colors.redAccent), onPressed: () => fazerDelete(listApi[index]["id"])),
            ),
          );
        },
      ),
    );
  }
}