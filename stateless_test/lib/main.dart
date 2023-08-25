import 'package:flutter/material.dart';

void main() {
  runApp(new PrimeiraAplicacao());
}

@override
class PrimeiraAplicacao extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Olá Flutter"),
          ),
          body: Column(
            children: [
              Text("Texto 1"),
              ElevatedButton(onPressed: cliqueAqui, child: Text("Botão")),
              TextButton(onPressed: cliqueTB, child: Text("TextButton")),
              OutlinedButton(onPressed: cliqueOB, child: Text("OutlinedButton"))
            ],
          )),
    );
  }

  void cliqueAqui() {
    print("clicou");
  }

  void cliqueTB() {
    print("ClicouTextButton");
  }

  void cliqueOB() {
    print("Clicou OutlinedButton");
  }
}
