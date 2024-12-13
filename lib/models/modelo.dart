class Materia {
  final String materia;
  final String assuntos;

  Materia({required this.materia, required this.assuntos});

  factory Materia.fromJson(Map<String, dynamic> json) {
    return Materia(
      materia: json['materia'],
      assuntos: json['assuntos'],
    );
  }
}