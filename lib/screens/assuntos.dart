import 'package:flutter/material.dart';
import '../models/modelo.dart';

class Assuntos extends StatelessWidget {
  final Materia subject;

  Assuntos({required this.subject});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(subject.materia),
        leading: BackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text("As matérias mais recorrentes na prova de " + subject.materia + " do Enem são:\n\n" + subject.assuntos),
      ),
    );
  }
}