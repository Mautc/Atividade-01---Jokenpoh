import 'dart:math';
import 'package:flutter/material.dart';
import 'package:atividade_01/Home2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atividade 01',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      home: const MyHomePage(title: 'Pedra, Papel, Tesoura'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _jogar(String escolhaUsuario) {
    List<String> opcoes = ["pedra", "papel", "tesoura"];
    int numeroSorteado = Random().nextInt(3);
    String escolhaApp = opcoes[numeroSorteado];

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Home2(
          title: 'Resultado',
          escolhaUsuario: escolhaUsuario,
          escolhaApp: escolhaApp,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          widget.title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Faça a sua escolha:",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => _jogar("pedra"),
                  child: Image.asset("assets/images/pedra.png", width: 80, height: 80),
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: () => _jogar("papel"),
                  child: Image.asset("assets/images/papel.png", width: 80, height: 80),
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: () => _jogar("tesoura"),
                  child: Image.asset("assets/images/tesoura.png", width: 80, height: 80),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}