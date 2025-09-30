import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _pessoa = 0;
  String _mensagem = "Pode entrar!";

  void alteraContador(int i) {
    setState(() {
      _pessoa += i;
      if (_pessoa < 0) {
        _mensagem = "A sala ainda tá vazia!";
        _pessoa = 0;
      } else if (_pessoa > 10) {
        _mensagem = "Tá cheio já, vaza";
        _pessoa = 10;
      } else {
        _mensagem = "Chega mais!!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Controle de pessoas"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Pessoas atualmente: $_pessoa",
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => alteraContador(1),
                child: const Text("+1", style: TextStyle(fontSize: 20)),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: () => alteraContador(-1),
                child: const Text("-1", style: TextStyle(fontSize: 20)),
              ),
            ],
          ),
          const SizedBox(height: 40),
          Text(_mensagem,
          style: const TextStyle(fontSize: 22, color: Colors.grey),
          textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
