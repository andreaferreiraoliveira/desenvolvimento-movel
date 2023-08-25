import 'package:flutter/material.dart';

void main() {
  runApp(PrimeiraAplicacaofulwid());
}

class PrimeiraAplicacaofulwid extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PrimeiraAplicacaoState();

    throw UnimplementedError();
  }
}

class PrimeiraAplicacaoState extends State<PrimeiraAplicacaofulwid> {
  var perguntaAtual = 0;

  final perguntas = [
    "Qual sua cor favorita?",
    "Qual sua camisa favorita?",
    "Qual sua música favorita?",
    "Qual seu filme favorito?"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Olá Flutter"),
          ),
          body: Column(
            children: [
              Text(perguntas[perguntaAtual]),
              ElevatedButton(onPressed: cliqueAqui, child: Text("Botão")),
              TextButton(onPressed: cliqueTB, child: Text("TextButton")),
              OutlinedButton(onPressed: cliqueOB, child: Text("OutlinedButton"))
            ],
          )),
    );
  }

  void cliqueAqui() {
    setState(() {
      if (perguntaAtual < 3) {
        perguntaAtual++;
      }
    });
    print(perguntas[perguntaAtual]);
  }

  void cliqueTB() {
    print("ClicouTextButton");
  }

  void cliqueOB() {
    print("Clicou OutlinedButton");
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ButtonDemo(),
    );
  }
}

class ButtonDemo extends StatefulWidget {
  @override
  _ButtonDemoState createState() => _ButtonDemoState();
}

class _ButtonDemoState extends State<ButtonDemo> {
  bool _toggleValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exemplo de Botões'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Botão de Texto Simples:'),
            TextButton(
              onPressed: () {
                // Ação quando o botão de texto é pressionado
                print('Botão de Texto pressionado.');
              },
              child: Text('Clique aqui'),
            ),
            SizedBox(height: 20),
            Text('Botão Elevado (Raised Button):'),
            ElevatedButton(
              onPressed: () {
                // Ação quando o botão elevado é pressionado
                print('Botão Elevado pressionado.');
              },
              child: Text('Clique aqui'),
            ),
            SizedBox(height: 20),
            Text('Botão de Ícone:'),
            IconButton(
              onPressed: () {
                // Ação quando o botão de ícone é pressionado
                print('Botão de Ícone pressionado.');
              },
              icon: Icon(Icons.star),
            ),
            SizedBox(height: 20),
            Text('Botão de Alternância:'),
            ToggleButtons(
              onPressed: (int index) {
                setState(() {
                  _toggleValue = !_toggleValue;
                });
              },
              isSelected: [_toggleValue],
              children: [Icon(Icons.check)],
            ),
          ],
        ),
      ),
    );
  }
}
