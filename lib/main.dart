import 'package:atividade_01/Home2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atividade 01',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.red),
      ),
      home: Home2(title: 'Pedra, Papel, Tesoura'),
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


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.red,

        title: Text(widget.title, style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),),
      ),
      body: Center(
        child: Column(

          spacing: 80,
          children: [
            Container(
              height: 20,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 2),
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Escolha do APP",
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: .center,
              spacing: 20,
              children: [
                SizedBox(
                  width: 80,
                  height: 80,
                  child: Image.asset("/images/pedra.png"),
                ),
                SizedBox(
                  width: 80,
                  height: 80,
                  child: Image.asset("/images/papel.png"),
                ),
                SizedBox(
                  width: 80,
                  height: 80,
                  child: Image.asset("/images/tesoura.png"),
                ),
              ]
            )
          ],
        ),
      ),
    );
  }
}
