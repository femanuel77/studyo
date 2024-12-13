import 'package:flutter/material.dart';
import '../models/modelo.dart';
import '../screens/assuntos.dart';

class ExibirAssunto extends StatelessWidget {
  final Materia subject;
  final Color color;

  ExibirAssunto({required this.subject, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(subject.materia,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Assuntos(subject: subject),
            ),
          );
        },
      ),
    );
  }
}