import 'package:flutter/material.dart';
import '../widgets/botao_materias.dart';
import '../data/dados.dart';
import '../models/modelo.dart';

class Lista extends StatelessWidget {
  final DataService dataService = DataService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Matérias'), leading: BackButton()),
      body: FutureBuilder<List<Materia>>(
        future: dataService.loadData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Erro ao carregar matérias'));
          } else {
            final subjects = snapshot.data!;
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
              itemCount: subjects.length,
              itemBuilder: (context, index) {
                Color buttonColor;
                switch (index % 12) {
                  case 0:
                    buttonColor = Colors.blue;
                    break;
                  case 1:
                    buttonColor = Colors.green;
                    break;
                  case 2:
                    buttonColor = Colors.pink;
                    break;
                  case 3:
                    buttonColor = Colors.orange;
                    break;
                  case 4:
                    buttonColor = Colors.purple;
                    break;
                  case 5:
                    buttonColor = Colors.amber;
                    break;
                  case 6:
                    buttonColor = Colors.cyan;
                    break;
                  case 7:
                    buttonColor = Colors.teal;
                    break;
                  case 8:
                    buttonColor = Colors.grey;
                    break;
                  case 9:
                    buttonColor = Colors.red;
                    break;
                  case 10:
                    buttonColor = Colors.lightBlue;
                    break;
                  case 11:
                    buttonColor = Colors.lightGreen;
                    break;
                  default:
                    buttonColor = Colors.grey;
                }
                return ExibirAssunto(
                  subject: subjects[index],
                  color: buttonColor,
                );
              },
            );
          }
        },
      ),
    );
  }
}