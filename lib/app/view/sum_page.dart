import 'package:flutter/material.dart';

class SumPage extends StatefulWidget {
  const SumPage({super.key});
  @override
  State<SumPage> createState() => _SumPage();
}

class _SumPage extends State<SumPage> {
  TextEditingController numero1 = TextEditingController();
  TextEditingController numero2 = TextEditingController();
  String _resultado = "Resultado";

  void _somar() {
    setState(() {
      int n1 = int.parse(numero1.text);
      int n2 = int.parse(numero2.text);
      int n3 = n1 + n2;
      _resultado = "a soma é ($n3)";
      print(n3);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // que que é Scaffold
      appBar: AppBar(
        title: Text("Somar"),
        centerTitle: true,
        backgroundColor: Colors.grey,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.refresh))],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(Icons.person_outline, size: 120, color: Colors.grey),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Digite o 1º número",
                labelStyle: TextStyle(color: const Color.fromARGB(255, 175, 76, 145)),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Color.fromARGB(255, 175, 76, 145), fontSize: 25.0),
              controller: numero1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Digite o 2º número",
                labelStyle: TextStyle(color: Color.fromARGB(255, 175, 76, 145)),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Color.fromARGB(255, 175, 76, 145), fontSize: 25),
              controller: numero2,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: SizedBox(
                height: 50,
                child: ElevatedButton(
                  onPressed: _somar,
                  child: Text(
                    "Calcular",
                    style: TextStyle(color: const Color.fromARGB(255, 159, 43, 194), fontSize: 25),
                  ),
                ),
              ),
            ),
            Text(
              _resultado,
              textAlign: TextAlign.center,
              style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
