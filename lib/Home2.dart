import 'package:flutter/material.dart';

class Home2 extends StatefulWidget {
  final String title;
  final String escolhaUsuario;
  final String escolhaApp;

  const Home2({
    super.key,
    required this.title,
    required this.escolhaUsuario,
    required this.escolhaApp,
  });

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  String _mensagemResultado = "";
  Color _corResultado = Colors.black;

  @override
  void initState() {
    super.initState();
    _calcularResultado();
  }

  void _calcularResultado() {
    if (widget.escolhaUsuario == widget.escolhaApp) {
      _mensagemResultado = "Empate!";
      _corResultado = Colors.orange;
    } else if ((widget.escolhaUsuario == "pedra" && widget.escolhaApp == "tesoura") ||
        (widget.escolhaUsuario == "papel" && widget.escolhaApp == "pedra") ||
        (widget.escolhaUsuario == "tesoura" && widget.escolhaApp == "papel")) {
      _mensagemResultado = "Você Venceu! 🎉";
      _corResultado = Colors.green;
    } else {
      _mensagemResultado = "Você Perdeu! 😔";
      _corResultado = Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          widget.title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              const Text(
                "Escolha do APP",
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 16),
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black, width: 2),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/images/${widget.escolhaApp}.png"),
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                "Sua Escolha",
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 16),
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black, width: 2),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/images/${widget.escolhaUsuario}.png"),
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Text(
                _mensagemResultado,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                  color: _corResultado,
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  "Jogar Novamente",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}