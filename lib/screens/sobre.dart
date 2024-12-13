import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sobre Nós')),
      body: Center(
        child: Text(
          'Protótipo de aplicativo, desenvolvido com Flutter.\n\n '
          'Alunos:\nBeatriz da Silva dos Santos\nFrancisco Emanuel Cunha Almeida\nJoão Gabriel de Sousa Barros\n\n'
          'Professor: Marcel Raimundo de Souza Moura\n\n'
          'Disciplina: Tópicos Especiais em Desenvolvimento',
          textAlign: TextAlign.center,
          style: TextStyle(
          fontSize: 18)
        ),
      ),
    );
  }
}