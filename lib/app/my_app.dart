import 'package:projeto/app/view/index_page.dart'; // precisa importar o index
import 'package:flutter/material.dart'; // aparentemente isso aqui a gente importa sempre

class MyApp extends StatelessWidget { // stateless por que ele é estático, o que acontecer não vai meio que mudar nada nessa tela
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
        home: IndexPage()); // genuinamente não sei
  }
}